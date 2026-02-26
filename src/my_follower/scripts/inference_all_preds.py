"""
올바른 PR곡선을 위한 추론 스크립트
신뢰도 필터를 완전히 제거하고 모든 예측을 저장
(NMS만 적용)
"""
import cv2
import numpy as np
import os
from openvino.inference_engine import IECore

# 1. 경로 설정
model_xml = "/home/hyobeen/catkin_ws/src/my_follower/models/person-detection-retail-0013.xml"
model_bin = "/home/hyobeen/catkin_ws/src/my_follower/models/person-detection-retail-0013.bin"
image_dir = "/home/hyobeen/Downloads/PennFudanPed/train_images"
output_dir = "/home/hyobeen/Downloads/PennFudanPed/Pred_Results_All"  # 새 폴더

if not os.path.exists(output_dir):
    os.makedirs(output_dir)

# 2. OpenVINO 엔진 초기화
ie = IECore()
net = ie.read_network(model=model_xml, weights=model_bin)
exec_net = ie.load_network(network=net, device_name="CPU")

input_layer = "data"
output_layer = next(iter(net.outputs))
n, c, h, w = [1, 3, 320, 544]

# ==========================================
# [설정] NMS 기준만 있음 (신뢰도 필터 없음!)
# ==========================================
SCORE_THRESHOLD = 0.0  # 모든 예측을 받기 위해 0으로 설정
NMS_THRESHOLD = 0.4    
# ==========================================

# 3. 이미지 추론 시작
image_files = [f for f in os.listdir(image_dir) if f.endswith('.png')]
print(f"입력 크기 {w}x{h} 설정으로 추론을 시작합니다...")
print(f"⚠️  신뢰도 필터 없음 - 모든 예측을 저장합니다.")


for file_name in image_files:
    img_path = os.path.join(image_dir, file_name)
    image = cv2.imread(img_path)
    if image is None: 
        continue
    
    orig_h, orig_w = image.shape[:2]

    # 전처리: 544x320 크기로 리사이즈
    resized_image = cv2.resize(image, (w, h))
    input_data = resized_image.transpose(2, 0, 1) 
    input_data = input_data.reshape((n, c, h, w))

    # 추론 실행
    res = exec_net.infer(inputs={input_layer: input_data})
    data = res[output_layer]

    boxes = []
    confidences = []

    # 모델 결과 처리 (신뢰도 필터 없음)
    for obj in data[0][0]:
        class_id = int(obj[1])       
        confidence = float(obj[2])
        
        # 모든 신뢰도를 받음 (필터 없음)
        if confidence > SCORE_THRESHOLD:  # SCORE_THRESHOLD = 0.0이므로 모두 통과
            xmin = int(obj[3] * orig_w)
            ymin = int(obj[4] * orig_h)
            xmax = int(obj[5] * orig_w)
            ymax = int(obj[6] * orig_h)
            
            width = xmax - xmin
            height = ymax - ymin
            
            boxes.append([max(0, xmin), max(0, ymin), width, height])
            confidences.append(confidence)

    # NMS 실행
    indices = cv2.dnn.NMSBoxes(boxes, confidences, SCORE_THRESHOLD, NMS_THRESHOLD)

    # 결과 저장
    txt_name = os.path.splitext(file_name)[0] + ".txt"
    with open(os.path.join(output_dir, txt_name), 'w') as f:
        if len(indices) > 0:
            for i in indices.flatten():
                box = boxes[i]
                conf = confidences[i]
                
                final_xmin = box[0]
                final_ymin = box[1]
                final_xmax = final_xmin + box[2]
                final_ymax = final_ymin + box[3]
                
                f.write(f"1 {final_xmin} {final_ymin} {final_xmax} {final_ymax} {conf:.4f}\n")

print(f"✅ 변환 완료! 결과가 {output_dir}에 저장되었습니다.")
print(f"   (이 데이터로 올바른 PR곡선을 그릴 수 있습니다)")
