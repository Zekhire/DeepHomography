FROM pytorch/pytorch:1.2-cuda10.0-cudnn7-runtime

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN apt update
RUN apt-get install ffmpeg libsm6 libxext6 -y
RUN pip install --upgrade pip setuptools wheel
RUN pip install opencv-python
RUN pip install tensorboardX==1.9
RUN pip install imageio