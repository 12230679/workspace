import os
import numpy as np

def calculate_iou(box1, box2):
    # 유효성 검사: 좌표 데이터가 부족하면 IoU 0 반환
    if len(box1) < 4 or len(box2) < 4:
        return 0
    x1, y1, x2, y2 = max(box1[0], box2[0]), max(box1[1], box2[1]), min(box1[2], box2[2]), min(box1[3], box2[3])
    intersection = max(0, x2 - x1) * max(0, y2 - y1)
    area1, area2 = (box1[2]-box1[0])*(box1[3]-box1[1]), (box2[2]-box2[0])*(box2[3]-box2[1])
    union = area1 + area2 - intersection
    return intersection / union if union > 0 else 0

def compute_ap(recall, precision):
    mrec = np.concatenate(([0.], recall, [1.]))
    mpre = np.concatenate(([0.], precision, [0.]))
    for i in range(len(mpre) - 1, 0, -1):
        mpre[i - 1] = np.maximum(mpre[i - 1], mpre[i])
    i = np.where(mrec[1:] != mrec[:-1])[0]
    ap = np.sum((mrec[i + 1] - mrec[i]) * mpre[i + 1])
    return ap

gt_dir = "/home/hyobeen/Downloads/PennFudanPed/GT_labels"
pred_dir = "/home/hyobeen/Downloads/PennFudanPed/Pred_Results"

all_preds = []
total_gts = 0

print("데이터를 분석하고 매칭하는 중...")
gt_files = [f for f in os.listdir(gt_dir) if f.endswith('.txt')]

for gt_f_name in gt_files:
    # 1. GT 로드: 빈 줄 및 데이터 누락 철저 방지
    with open(os.path.join(gt_dir, gt_f_name), 'r') as f:
        for line in f:
            clean_line = line.strip()
            if not clean_line: continue  # 빈 줄 건너뛰기
            parts = clean_line.split()
            if len(parts) >= 5: 
                total_gts += 1
    
    # 2. Pred 로드: 파일명 매칭 및 데이터 검증
    pred_f_name = gt_f_name.replace('_mask', '')
    p_path = os.path.join(pred_dir, pred_f_name)
    
    if os.path.exists(p_path):
        with open(p_path, 'r') as f:
            for line in f:
                clean_line = line.strip()
                if not clean_line: continue # 빈 줄 건너뛰기
                parts = clean_line.split()
                if len(parts) >= 6: # ID, x1, y1, x2, y2, confidence
                    data = list(map(float, parts[1:]))
                    all_preds.append({
                        'score': data[4], 
                        'box': data[:4], 
                        'file': gt_f_name 
                    })

if not all_preds:
    print("❌ 매칭된 예측 데이터가 없습니다. Pred_Results의 파일 내용을 확인하세요.")
    exit()

# 신뢰도순 정렬
all_preds.sort(key=lambda x: x['score'], reverse=True)

# TP/FP 판정
tp = np.zeros(len(all_preds))
fp = np.zeros(len(all_preds))
gt_matched = {f_name: [] for f_name in gt_files}

for i, pred in enumerate(all_preds):
    current_gts = []
    with open(os.path.join(gt_dir, pred['file']), 'r') as f:
        for line in f:
            clean_line = line.strip()
            if not clean_line: continue
            parts = clean_line.split()
            if len(parts) >= 5:
                current_gts.append(list(map(float, parts[1:])))
    
    if not gt_matched[pred['file']]:
        gt_matched[pred['file']] = [False] * len(current_gts)

    best_iou = 0
    best_idx = -1
    for idx, gt in enumerate(current_gts):
        iou = calculate_iou(pred['box'], gt)
        if iou > best_iou:
            best_iou = iou
            best_idx = idx
            
    if best_iou >= 0.5:
        if best_idx != -1 and not gt_matched[pred['file']][best_idx]:
            tp[i] = 1
            gt_matched[pred['file']][best_idx] = True
        else:
            fp[i] = 1
    else:
        fp[i] = 1

# 최종 계산
fp_cumsum = np.cumsum(fp)
tp_cumsum = np.cumsum(tp)
recalls = tp_cumsum / total_gts
precisions = tp_cumsum / (tp_cumsum + fp_cumsum)
ap = compute_ap(recalls, precisions)

print(f"\n" + "="*35)
print(f"📊 최종 성능 평가 결과 (IoU 0.5)")
print(f"총 정답(GT) 박스 수: {total_gts}")
print(f"총 예측(Pred) 박스 수: {len(all_preds)}")
print("-" * 35)
print(f"Average Precision (AP): {ap:.4f}")
print(f"Precision: {precisions[-1]:.4f}")
print(f"Recall: {recalls[-1]:.4f}")
print("="*35)