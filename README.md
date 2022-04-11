# audiovisual-docker

Docker container with interesting tools to work with audio-visual data in pytorch

To learn how to install Docker please
visit [https://docs.docker.com/engine/install/](https://docs.docker.com/engine/install/)

## Nvidia Docker

If you have never run docker with nvidia-gpu enabled, follow these steps:

```
distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add -
```

OK will be displayed normally

```
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list
sudo apt-get update
sudo apt-get install nvidia-container-toolkit
sudo systemctl restart docker
```

## Building the image

`docker build -t yourusername/av-pytorch:1.10.0-cuda11.3-runtime .`  
