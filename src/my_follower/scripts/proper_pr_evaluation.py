"""
올바른 PR곡선 생성 스크립트
모든 신뢰도 범위에서 동적으로 threshold를 변화시키며 평가
"""
import os
import numpy as np
import matplotlib
try:
    matplotlib.use('TkAgg')
except:
    pass
import matplotlib.pyplot as plt

def calculate_iou(box1, box2):
    if len(box1) < 4 or len(box2) < 4: 
        return 0
    x1, y1, x2, y2 = max(box1[0], box2[0]), max(box1[1], box2[1]), min(box1[2], box2[2]), min(box1[3], box2[3])
    intersection = max(0, x2 - x1) * max(0, y2 - y1)
    area1, area2 = (box1[2]-box1[0])*(box1[3]-box1[1]), (box2[2]-box2[0])*(box2[3]-box2[1])
    union = area1 + area2 - intersection
    return intersection / union if union > 0 else 0

def compute_ap(recall, precision):
    """AP 계산"""
    mrec = np.concatenate(([0.], recall, [1.]))
    mpre = np.concatenate(([0.], precision, [0.]))
    for i in range(len(mpre) - 1, 0, -1):
        mpre[i - 1] = np.maximum(mpre[i - 1], mpre[i])
    i = np.where(mrec[1:] != mrec[:-1])[0]
    ap = np.sum((mrec[i + 1] - mrec[i]) * mpre[i + 1])
    return ap, mrec, mpre

# 경로 설정
gt_dir = "/home/hyobeen/Downloads/PennFudanPed/GT_labels"
pred_dir = "/home/hyobeen/Downloads/PennFudanPed/Pred_Results_All"  # 새 폴더 사용!

if not os.path.exists(pred_dir):
    print(f"❌ {pred_dir} 폴더가 없습니다!")
    print("먼저 inference_all_preds.py를 실행하세요.")
    exit()

# 모든 예측 로드
all_preds = []
total_gts = 0
gt_files = [f for f in os.listdir(gt_dir) if f.endswith('.txt')]

print("데이터를 분석하고 매칭하는 중...")

# GT 카운트
for gt_f_name in gt_files:
    with open(os.path.join(gt_dir, gt_f_name), 'r') as f:
        for line in f:
            if line.strip() and len(line.split()) >= 4: 
                total_gts += 1
    
    # 모든 예측 로드 (신뢰도 필터 없음)
    pred_f_name = gt_f_name.replace('_mask', '')
    p_path = os.path.join(pred_dir, pred_f_name)
    if os.path.exists(p_path):
        with open(p_path, 'r') as f:
            for line in f:
                parts = line.strip().split()
                if len(parts) >= 6:
                    data = list(map(float, parts[1:]))
                    all_preds.append({
                        'score': data[4], 
                        'box': data[:4], 
                        'file': gt_f_name
                    })

if not all_preds:
    print("❌ 예측 데이터가 없습니다."); 
    exit()

print(f"✅ 로드 완료: GT {total_gts}개, Pred {len(all_preds)}개")

# 신뢰도순 정렬
all_preds.sort(key=lambda x: x['score'], reverse=True)

# ========================================
# [핵심] threshold를 변화시키며 PR 계산
# ========================================
all_thresholds = sorted(set([p['score'] for p in all_preds]), reverse=True)
all_thresholds = np.concatenate(([1.0], all_thresholds, [0.0]))  # 1.0과 0.0 추가

recalls_list = []
precisions_list = []
confidence_values = []

for threshold in all_thresholds:
    # 현재 threshold 이상인 예측만 사용
    current_preds = [p for p in all_preds if p['score'] >= threshold]
    
    if len(current_preds) == 0:
        recalls_list.append(0)
        precisions_list.append(0)
        confidence_values.append(threshold)
        continue
    
    # TP/FP 판정
    tp = np.zeros(len(current_preds))
    fp = np.zeros(len(current_preds))
    gt_matched = {f_name: [] for f_name in gt_files}
    
    for i, pred in enumerate(current_preds):
        current_gts = []
        with open(os.path.join(gt_dir, pred['file']), 'r') as f:
            for line in f:
                parts = line.strip().split()
                if len(parts) >= 4: 
                    current_gts.append(list(map(float, parts[-4:])))
        
        if not gt_matched[pred['file']]:
            gt_matched[pred['file']] = [False] * len(current_gts)

        best_iou, best_idx = 0, -1
        for idx, gt in enumerate(current_gts):
            iou = calculate_iou(pred['box'], gt)
            if iou > best_iou: 
                best_iou, best_idx = iou, idx
                
        if best_iou >= 0.5 and best_idx != -1 and not gt_matched[pred['file']][best_idx]:
            tp[i] = 1
            gt_matched[pred['file']][best_idx] = True
        else:
            fp[i] = 1
    
    # Precision과 Recall 계산
    tp_sum = np.sum(tp)
    fp_sum = np.sum(fp)
    
    recall = tp_sum / total_gts if total_gts > 0 else 0
    precision = tp_sum / (tp_sum + fp_sum) if (tp_sum + fp_sum) > 0 else 0
    
    recalls_list.append(recall)
    precisions_list.append(precision)
    confidence_values.append(threshold)

# numpy 배열로 변환
recalls = np.array(recalls_list)
precisions = np.array(precisions_list)

# AP 계산
ap, mrec, mpre = compute_ap(recalls, precisions)

# ========================================
# [그래프 1] 올바른 PR곡선 (모든 신뢰도 범위)
# ========================================
fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(14, 6))

# PR Curve
ax1.plot(recalls, precisions, color='blue', marker='o', markersize=3, label='PR Curve', alpha=0.7)
ax1.step(mrec, mpre, color='red', linestyle='--', where='post', label=f'AP (Area={ap:.4f})', linewidth=2)
ax1.set_xlabel('Recall', fontsize=12)
ax1.set_ylabel('Precision', fontsize=12)
ax1.set_title('올바른 Precision-Recall 곡선\n(전체 신뢰도 범위)', fontsize=13, fontweight='bold')
ax1.grid(True, alpha=0.3)
ax1.legend(fontsize=11)
ax1.set_xlim([0, 1.05])
ax1.set_ylim([0, 1.05])

# 신뢰도별 성능 변화
ax2.plot(confidence_values, recalls_list, marker='o', label='Recall', color='green', markersize=3)
ax2.plot(confidence_values, precisions_list, marker='s', label='Precision', color='orange', markersize=3)
ax2.set_xlabel('Confidence Threshold', fontsize=12)
ax2.set_ylabel('Score', fontsize=12)
ax2.set_title('신뢰도에 따른 성능 변화', fontsize=13, fontweight='bold')
ax2.grid(True, alpha=0.3)
ax2.legend(fontsize=11)
ax2.set_xlim([0, 1.0])
ax2.set_ylim([0, 1.05])

plt.tight_layout()
plt.show()

# ========================================
# [결과 출력]
# ========================================
print(f"\n" + "="*50)
print(f"📊 올바른 PR곡선 평가 결과 (IoU 0.5)")
print(f"총 정답(GT) 박스 수: {total_gts}")
print(f"총 예측(Pred) 박스 수: {len(all_preds)} (NMS 후)")
print("-" * 50)
print(f"Average Precision (AP): {ap:.4f}")
print(f"Max Precision: {np.max(precisions_list):.4f}")
print(f"Max Recall: {np.max(recalls_list):.4f}")
print("="*50)

# 특정 신뢰도 지점 분석
print(f"\n📈 주요 신뢰도 지점별 성능:")
key_thresholds = [0.9, 0.7, 0.5, 0.3, 0.1]
for thr in key_thresholds:
    idx = (np.abs(np.array(confidence_values) - thr)).argmin()
    print(f"  Conf {confidence_values[idx]:.2f}: Recall={recalls_list[idx]:.4f}, Precision={precisions_list[idx]:.4f}")
