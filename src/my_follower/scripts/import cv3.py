#openvino 2021 detecion 모델로 변환한 결과를 AP 계산에 필요한 txt 형식으로 저장하는 스크립트입니다.
import cv2
import numpy as np
import os
from openvino.inference_engine import IECore # 2021 버전용 엔진

# 1. 경로 설정 (사용자 환경에 맞게)
model_xml = "/home/hyobeen/catkin_ws/src/my_follower/models/person-detection-retail-0013.xml"
model_bin = "/home/hyobeen/catkin_ws/src/my_follower/models/person-detection-retail-0013.bin"
image_dir = "/home/hyobeen/Downloads/PennFudanPed/train_images"
output_dir = "/home/hyobeen/Downloads/PennFudanPed/Pred_Results"

if not os.path.exists(output_dir):
    os.makedirs(output_dir)

# 2. OpenVINO 2021 엔진 초기화
ie = IECore()
net = ie.read_network(model=model_xml, weights=model_bin)
exec_net = ie.load_network(network=net, device_name="CPU")

# 입력/출력 레이어 이름 가져오기
input_blob = next(iter(net.input_info))
output_blob = next(iter(net.outputs))
n, c, h, w = net.input_info[input_blob].input_data.shape

# 3. 이미지 추론 시작
image_files = [f for f in os.listdir(image_dir) if f.endswith('.png')]

print("OpenVINO 2021 버전으로 추론을 시작합니다...")

for file_name in image_files:
    img_path = os.path.join(image_dir, file_name)
    image = cv2.imread(img_path)
    if image is None: continue
    
    orig_h, orig_w = image.shape[:2]

    # 전처리 및 추론 (기존과 동일)
    resized_image = cv2.resize(image, (w, h))
    input_data = resized_image.transpose(2, 0, 1).reshape((n, c, h, w))
    res = exec_net.infer(inputs={input_blob: input_data})
    data = res[output_blob]

    # 4. 결과 저장 (핵심 수정 부분: 중복 삭제 및 형식 통일)
    txt_name = os.path.splitext(file_name)[0] + ".txt"
    with open(os.path.join(output_dir, txt_name), 'w') as f:
        for obj in data[0][0]:
            confidence = obj[2]
            
            # AP 계산을 위해 임계값을 낮게 설정(0.05)하여 최대한 많은 박스를 뽑습니다.
            if confidence > 0.05: 
                # 좌표 복원
                xmin = int(obj[3] * orig_w)
                ymin = int(obj[4] * orig_h)
                xmax = int(obj[5] * orig_w)
                ymax = int(obj[6] * orig_h)
                
                # [형식] 클래스ID(1) xmin ymin xmax ymax 신뢰도
                f.write(f"1 {xmin} {ymin} {xmax} {ymax} {confidence:.4f}\n")
                
print(f"변환 완료! 결과가 {output_dir}에 저장되었습니다.")