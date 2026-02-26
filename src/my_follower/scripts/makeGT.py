import cv2
import os
import numpy as np

# 1. 경로 설정 (사용자님의 환경에 맞게 수정)
mask_dir = '/home/hyobeen/Downloads/PennFudanPed/train_masks'  # 마스크 폴더 경로
save_dir = '/home/hyobeen/Downloads/PennFudanPed/GT_labels' # 결과(txt) 저장 폴더

if not os.path.exists(save_dir):
    os.makedirs(save_dir)

# 2. 폴더 내 모든 마스크 파일 가져오기
mask_files = [f for f in os.listdir(mask_dir) if f.endswith('.png')]

for file_name in mask_files:
    mask_path = os.path.join(mask_dir, file_name)
    
    # 마스크 읽기
    mask = cv2.imread(mask_path, cv2.IMREAD_GRAYSCALE)
    if mask is None: continue
    
    # 객체(사람)별로 분리된 마스크인 경우 각 ID를 찾음
    # (PennFudanPed는 사람마다 픽셀 값이 1, 2, 3... 식으로 다를 수 있음)
    obj_ids = np.unique(mask)
    obj_ids = obj_ids[1:] # 0번(배경)은 제외

    bboxes = []
    for obj_id in obj_ids:
        # 해당 ID(사람)의 픽셀만 추출
        binary_mask = np.where(mask == obj_id, 255, 0).astype(np.uint8)
        
        # 외곽선 추출
        contours, _ = cv2.findContours(binary_mask, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
        
        for cnt in contours:
            if cv2.contourArea(cnt) > 50: # 너무 작은 노이즈 제거
                x, y, w, h = cv2.boundingRect(cnt)
                bboxes.append([x, y, x + w, y + h])

    # 3. 추출된 좌표를 텍스트 파일로 저장
    # 파일 이름에서 확장자만 바꿈 (FudanPed00001.png -> FudanPed00001.txt)
    txt_name = os.path.splitext(file_name)[0] + '.txt'
    with open(os.path.join(save_dir, txt_name), 'w') as f:
        for box in bboxes:
            # xmin ymin xmax ymax 형식으로 저장
            f.write(f"{box[0]} {box[1]} {box[2]} {box[3]}\n")

print(f"변환 완료! {len(mask_files)}개의 GT 파일이 '{save_dir}'에 저장되었습니다.")