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

import cv2
import numpy as np
import os
from openvino.inference_engine import IECore

# 1. 경로 설정
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

# [수정] 입력 레이어 정보 명시적 추출
# 모델 사양: name='data', shape=[1, 3, 320, 544]
input_layer = "data" 
output_layer = next(iter(net.outputs))
n, c, h, w = [1, 3, 320, 544] # 모델 요구 규격 고정

# ==========================================
# [설정] NMS 및 필터링 기준
# ==========================================
SCORE_THRESHOLD = 0.7
NMS_THRESHOLD = 0.4    
# ==========================================

# 3. 이미지 추론 시작
image_files = [f for f in os.listdir(image_dir) if f.endswith('.png')]
print(f"입력 크기 {w}x{h} 설정으로 추론을 시작합니다...")



for file_name in image_files:
    img_path = os.path.join(image_dir, file_name)
    image = cv2.imread(img_path) # BGR 형식으로 읽음
    if image is None: 
        continue
    
    orig_h, orig_w = image.shape[:2]

    # [수정] 전처리: 544x320 크기로 리사이즈 및 BGR 순서 유지
    resized_image = cv2.resize(image, (w, h))
    # HWC -> CHW 변환 및 Batch(N) 차원 추가
    input_data = resized_image.transpose(2, 0, 1) 
    input_data = input_data.reshape((n, c, h, w))

    # 추론 실행
    res = exec_net.infer(inputs={input_layer: input_data})
    data = res[output_layer]

    boxes = []
    confidences = []

    # 4-1. 모델 결과 처리
    # person-detection-retail-0013 출력 형태: [1, 1, N, 7]
    for obj in data[0][0]:
        class_id = int(obj[1])       
        confidence = float(obj[2])
        
        # 신뢰도 및 클래스 필터링 (1: person)
        if confidence > SCORE_THRESHOLD:
            # 상대 좌표(0~1)를 원본 이미지 크기에 맞게 스케일링
            xmin = int(obj[3] * orig_w)
            ymin = int(obj[4] * orig_h)
            xmax = int(obj[5] * orig_w)
            ymax = int(obj[6] * orig_h)
            
            # cv2.dnn.NMSBoxes용 width, height 계산
            width = xmax - xmin
            height = ymax - ymin
            
            # 음수 값 방지 (이미지 경계 처리)
            boxes.append([max(0, xmin), max(0, ymin), width, height])
            confidences.append(confidence)

    # 4-2. NMS 실행 (중복 박스 제거)
    # indices는 선택된 박스의 인덱스 리스트를 반환함
    indices = cv2.dnn.NMSBoxes(boxes, confidences, SCORE_THRESHOLD, NMS_THRESHOLD)

    # 4-3. 결과 저장
    txt_name = os.path.splitext(file_name)[0] + ".txt"
    with open(os.path.join(output_dir, txt_name), 'w') as f:
        if len(indices) > 0:
            # NMSBoxes 결과가 2D array일 수 있으므로 flatten 처리
            for i in indices.flatten():
                box = boxes[i]
                conf = confidences[i]
                
                final_xmin = box[0]
                final_ymin = box[1]
                final_xmax = final_xmin + box[2]
                final_ymax = final_ymin + box[3]
                
                f.write(f"1 {final_xmin} {final_ymin} {final_xmax} {final_ymax} {conf:.4f}\n")

print(f"변환 완료! 결과가 {output_dir}에 저장되었습니다.")