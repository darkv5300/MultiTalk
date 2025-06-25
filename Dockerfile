FROM nvidia/cuda:11.7.1-cudnn8-runtime-ubuntu20.04

# ติดตั้ง system dependencies
RUN apt-get update && apt-get install -y \
    python3 python3-pip ffmpeg git libgl1-mesa-glx

WORKDIR /app
COPY . /app

# ลง Python package
RUN pip3 install -r requirements.txt

ENTRYPOINT ["python3", "predict.py"]
