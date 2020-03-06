sudo pacman -S docker

sudo gpasswd -a <yourname> docker

sudo systemctl start docker

sudo systemctl enable docker

yay -S nvidia-docker

# /etc/docker/daemon.json
{
  "registry-mirrors" : [
    "http://registry.docker-cn.com",
    "http://docker.mirrors.ustc.edu.cn",
    "http://hub-mirror.c.163.com"
  ],
  "insecure-registries" : [
    "registry.docker-cn.com",
    "docker.mirrors.ustc.edu.cn"
  ],
  "debug" : true,
  "experimental" : true
}


# sudo su
# su <yourname>

docker pull tensorflow/tensorflow:latest-gpu-py3-jupyter

nvidia-docker run -u $(id -u):$(id -g) --name=tf-gpu -it -p 8888:8888 tensorflow/tensorflow:latest-gpu-py3-jupyter

# docker exec tf-gpu jupyter notebook list
# docker start -i tf-gpu
# exit
# docker rm tf-gpu
# docker image rm tensorflow/tensorflow:latest-gpu-py3-jupyter


# OR
docker pull tensorflow/tensorflow:latest-gpu-py3

nvidia-docker run -u $(id -u):$(id -g) --name=tf-gpu -it -p 8888:8888 -v /home/john:/share tensorflow/tensorflow:latest-gpu-py3 bash
