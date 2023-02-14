FROM pytorch/pytorch:1.13.1-cuda11.6-cudnn8-runtime
RUN apt-get update
RUN apt-get install -y cmake g++ make libtool checkinstall libmp3lame-dev pkg-config libunwind-dev zlib1g-dev libssl-dev
RUN apt-get update
RUN apt-get clean -y
RUN apt-get install -y --no-install-recommends libc6-dev libgdiplus wget software-properties-common
RUN apt-get install -y ffmpeg
RUN ffmpeg --help
RUN ffprobe --help
WORKDIR /usr/src/app
COPY . .
RUN pip install -r requirements.txt
RUN pip install -r torch_requirements.txt -f https://download.pytorch.org/whl/torchaudio/
RUN python test.py
WORKDIR /home

