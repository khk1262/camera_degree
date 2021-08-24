camera_degree
=============

### prerequisite
* jetson_inference 필요(https://github.com/dusty-nv/jetson-inference)
* ros_deep_learning(https://github.com/dusty-nv/ros_deep_learning)
```
$ cd ~
$ sudo apt-get install git cmake
$ git clone --recursive https://github.com/dusty-nv/jetson-inference
$ cd jetson-inference
$ mkdir build
$ cd build
$ cmake ../
$ make -j$(nproc)
$ sudo make install
$ sudo ldconfig
```
* camera_degree 폴더 내에 존재하는 modify_jetson_inference 폴더
  * 앞서 설치한 ros_deep_learning/src/node_detectnet.cpp 파일을 modify_jetson_inference 폴더내 node_detectnet.cpp 파일로 변경 수정
* enter to ros_deep_learning/launch/detectnet.ros1.launch, then change default="csi://0" to default="v4l2:///dev/video0"
- - -

### 설치법
```
  $ git clone https://github.com/khk1262/camera_degree.git
  $ cd camera_degree
  $ catkin_make
```

### 실행 shell script
* camera_degree 폴더 내에 존재하는 run_all_sh 폴더
  * xavier 쪽에 두어야 할 파일 : xavier_camera.sh
  * cart_main_pc 쪽에 두어야 할 파일 : cart_control.sh, cart_tracking_main.sh
* cart_main_pc에서 명령어 실행
```
  $ cd ~
  $ ./cart_tracking_main.sh 
```

### 사용된 하드웨어 모듈

<img src="https://github.com/khk1262/camera_degree/blob/main/pic/%EA%B4%91%EA%B0%81%20%EC%B9%B4%EB%A9%94%EB%9D%BC.jpg" width="500" height="370"><img src="https://github.com/khk1262/camera_degree/blob/main/pic/%EC%A0%AF%EC%8A%A8%20%EC%9E%90%EB%B9%84%EC%97%90.jpg" width="500" height="370">  
---
1. 카메라 모듈
- GOOSERA 웹 카메라 풀HD 1080P 300만 화소 120광각 웹캠
- fov 120 degree
- 640 X 320 사이즈로 이미지 read

2. 컴퓨팅 모듈
- jetson xavier
- Octal-core NVIDIA Carmel ARMv8.2 CPU @ 2.26GHz
- 512-core Volta GPU @ with 64 Tensor Cores
- Dual Deep Learning Accelerator (DLA) engines
- 16GB 256-bit LPDDR4x @ 2133MHz (137GB/s)
