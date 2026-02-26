import os
import numpy as np
import matplotlib
# 리눅스 터미널 환경에서 창을 띄우기 위한 백엔드 설정
try:
    matplotlib.use('TkAgg')
except:
    pass
import matplotlib.pyplot as plt

def calculate_iou(box1, box2):
    if len(box1) < 4 or len(box2) < 4: return 0
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
    return ap, mrec, mpre

# 경로 설정
gt_dir = "/home/hyobeen/Downloads/PennFudanPed/GT_labels"
pred_dir = "/home/hyobeen/Downloads/PennFudanPed/Pred_Results"

all_preds = []
total_gts = 0
gt_files = [f for f in os.listdir(gt_dir) if f.endswith('.txt')]

# 데이터 로드 및 GT 카운트
for gt_f_name in gt_files:
    with open(os.path.join(gt_dir, gt_f_name), 'r') as f:
        for line in f:
            if line.strip() and len(line.split()) >= 4: total_gts += 1
    
    pred_f_name = gt_f_name.replace('_mask', '')
    p_path = os.path.join(pred_dir, pred_f_name)
    if os.path.exists(p_path):
        with open(p_path, 'r') as f:
            for line in f:
                parts = line.strip().split()
                if len(parts) >= 6:
                    data = list(map(float, parts[1:]))
                    all_preds.append({'score': data[4], 'box': data[:4], 'file': gt_f_name})

if not all_preds:
    print("❌ 데이터가 없습니다."); exit()

# 신뢰도순 정렬 및 판정
all_preds.sort(key=lambda x: x['score'], reverse=True)
tp = np.zeros(len(all_preds))
fp = np.zeros(len(all_preds))
gt_matched = {f: [] for f in gt_files}

for i, pred in enumerate(all_preds):
    current_gts = []
    with open(os.path.join(gt_dir, pred['file']), 'r') as f:
        for line in f:
            parts = line.strip().split()
            if len(parts) >= 4: current_gts.append(list(map(float, parts[-4:])))
    
    if not gt_matched[pred['file']]:
        gt_matched[pred['file']] = [False] * len(current_gts)

    best_iou, best_idx = 0, -1
    for idx, gt in enumerate(current_gts):
        iou = calculate_iou(pred['box'], gt)
        if iou > best_iou: best_iou, best_idx = iou, idx
            
    if best_iou >= 0.5 and best_idx != -1 and not gt_matched[pred['file']][best_idx]:
        tp[i], gt_matched[pred['file']][best_idx] = 1, True
    else:
        fp[i] = 1

# 계산 및 시각화 (에러가 났던 부분)
fp_cumsum = np.cumsum(fp)
tp_cumsum = np.cumsum(tp)
recalls = tp_cumsum / total_gts
precisions = tp_cumsum / (tp_cumsum + fp_cumsum)

ap, mrec, mpre = compute_ap(recalls, precisions)

# 그래프 그리기
plt.figure(figsize=(8, 6))
plt.plot(recalls, precisions, color='purple', marker='o', markersize=3, label='PR Curve', alpha=0.5)
plt.step(mrec, mpre, color='red', linestyle='--', where='post', label=f'AP (Area={ap:.4f})')
plt.xlabel('Recall')
plt.ylabel('Precision')
plt.title('Object Detection PR Curve')
plt.grid(True)
plt.legend()
plt.xlim([0, 1.05])
plt.ylim([0, 1.05])

print(f"✅ AP: {ap:.4f} / GT: {total_gts} / Pred: {len(all_preds)}")
plt.show()

# --- 특정 Recall 지점의 신뢰도 추출 ---
target_recall = 0.89 # 확인하고 싶은 Recall 값

# 실제 데이터(recalls) 중 target_recall과 가장 차이가 적은 인덱스 찾기
idx = (np.abs(recalls - target_recall)).argmin()

found_recall = recalls[idx]
found_precision = precisions[idx]
found_confidence = all_preds[idx]['score']

print(f"\n" + "-"*35)
print(f"🎯 Recall {target_recall} 부근 데이터 탐색 결과:")
print(f"실제 Recall: {found_recall:.4f}")
print(f"이 지점의 Precision: {found_precision:.4f}")
print(f"이 지점의 Confidence: {found_confidence:.4f}")
print("-" * 35)

# 그래프에 해당 지점 강조 표시 (초록색 별 모양)
plt.plot(found_recall, found_precision, 'g*', markersize=15, label=f'Target (Conf: {found_confidence:.2f})')
plt.annotate(f'Conf: {found_confidence:.2f}', 
             (found_recall, found_precision),
             textcoords="offset points", 
             xytext=(10, -15), 
             ha='left', 
             fontsize=10, 
             color='green',
             fontweight='bold')

# 범례 업데이트 (강조 지점이 포함되도록)
plt.legend()