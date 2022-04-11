FROM pytorch/pytorch:1.10.0-cuda11.3-cudnn8-runtime
RUN apt-get update
RUN apt-get install -y cmake g++ make ffmpeg
RUN ffmpeg --help
RUN ffprobe --help
WORKDIR /usr/src/app
COPY . .
RUN pip install -r requirements.txt
RUN pip install --no-deps -r torch_requirements.txt -f https://download.pytorch.org/whl/cu113/torch_stable.html
RUN python test.py

