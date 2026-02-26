import cv2
import numpy as np
import os
from openvino.inference_engine import IECore

# 1. 경로 설정 (사용자 환경)
model_xml = "/home/hyobeen/catkin_ws/src/my_follower/models/person-detection-retail-0013.xml"
model_bin = "/home/hyobeen/catkin_ws/src/my_follower/models/person-detection-retail-0013.bin"
image_dir = "/home/hyobeen/Downloads/PennFudanPed/train_images"
output_dir = "/home/hyobeen/Downloads/PennFudanPed/Pred_Results"

if not os.path.exists(output_dir):
    os.makedirs(output_dir)

# 2. OpenVINO 엔진 초기화
ie = IECore()
net = ie.read_network(model=model_xml, weights=model_bin)
exec_net = ie.load_network(network=net, device_name="CPU")

input_blob = next(iter(net.input_info))
output_blob = next(iter(net.outputs))
n, c, h, w = net.input_info[input_blob].input_data.shape

# ==========================================
# [설정] NMS 및 필터링 기준 (들여쓰기 없음!)
# ==========================================
SCORE_THRESHOLD = 0.5  # 50% 이상 확신하는 것만 사람으로 취급
NMS_THRESHOLD = 0.4    # 겹치는 비율(IoU)이 40% 이상이면 하나로 합침
# ==========================================

# 3. 이미지 추론 시작
image_files = [f for f in os.listdir(image_dir) if f.endswith('.png')]
print("OpenVINO 추론 및 NMS 후처리를 시작합니다...")

for file_name in image_files:
    img_path = os.path.join(image_dir, file_name)
    image = cv2.imread(img_path)
    if image is None: 
        continue
    
    orig_h, orig_w = image.shape[:2]

    # 전처리 및 추론
    resized_image = cv2.resize(image, (w, h))
    input_data = resized_image.transpose(2, 0, 1).reshape((n, c, h, w))
    res = exec_net.infer(inputs={input_blob: input_data})
    data = res[output_blob]

    boxes = []
    confidences = []

    # 4-1. 모델 결과를 OpenCV NMS 형식으로 변환
    for obj in data[0][0]:
        class_id = int(obj[1])       
        confidence = float(obj[2])
        
        # [핵심] 클래스가 1(사람)이고, 신뢰도가 50% 이상일 때만 박스 추출
        if class_id == 1 and confidence > SCORE_THRESHOLD:
            xmin = int(obj[3] * orig_w)
            ymin = int(obj[4] * orig_h)
            xmax = int(obj[5] * orig_w)
            ymax = int(obj[6] * orig_h)
            
            width = xmax - xmin
            height = ymax - ymin
            boxes.append([xmin, ymin, width, height])
            confidences.append(confidence)

    # 4-2. NMS 실행 (중복 박스 제거)
    indices = cv2.dnn.NMSBoxes(boxes, confidences, SCORE_THRESHOLD, NMS_THRESHOLD)

    # 4-3. 최종 결과만 텍스트 파일로 저장
    txt_name = os.path.splitext(file_name)[0] + ".txt"
    with open(os.path.join(output_dir, txt_name), 'w') as f:
        if len(indices) > 0:
            for i in indices.flatten():
                box = boxes[i]
                conf = confidences[i]
                
                xmin = box[0]
                ymin = box[1]
                xmax = xmin + box[2]
                ymax = ymin + box[3]
                
                # 1(클래스ID) xmin ymin xmax ymax confidence 형식으로 기록
                f.write(f"1 {xmin} {ymin} {xmax} {ymax} {conf:.4f}\n")

print(f"변환 완료! 결과가 {output_dir}에 저장되었습니다.")