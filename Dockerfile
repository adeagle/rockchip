FROM ubuntu:18.04

MAINTAINER www.ai-580.top



RUN apt update && \
	apt install ca-certificates wget -y  && \
	echo "deb https://mirrors.ustc.edu.cn/ubuntu/ bionic main restricted universe multiverse\n\
deb-src https://mirrors.ustc.edu.cn/ubuntu/ bionic main restricted universe multiverse\n\
deb https://mirrors.ustc.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse\n\
deb-src https://mirrors.ustc.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse\n\
deb https://mirrors.ustc.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse\n\
deb-src https://mirrors.ustc.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse\n\
deb https://mirrors.ustc.edu.cn/ubuntu/ bionic-security main restricted universe multiverse\n\
deb-src https://mirrors.ustc.edu.cn/ubuntu/ bionic-security main restricted universe multiverse\n\
deb https://mirrors.ustc.edu.cn/ubuntu/ bionic-proposed main restricted universe multiverse\n\
deb-src https://mirrors.ustc.edu.cn/ubuntu/ bionic-proposed main restricted universe multiverse" > /etc/apt/sources.list && \
	apt update && \
	mkdir ~/.pip && \
	wget https://www.ai-580.top/download/sources.list -O /etc/apt/sources.list && \
	wget https://www.ai-580.top/download/pip.conf -O ~/.pip/pip.conf && \
	apt update && \
	apt install vim software-properties-common g++ gcc make git curl wget python python3 sudo  -y && \
	apt update && \
	wget https://bootstrap.pypa.io/pip/3.6/get-pip.py && \
	apt -y install python3.6-distutils python3.6-dev && \
	python3.6 get-pip.py  && \
	pip3 install numpy && \
	apt install libgl1 -y && \
	pip3 install "opencv-python-headless<4.3" && \
	pip3 install https://www.ai-580.top/download/rknn_toolkit2-1.3.1b0_1c22f19-cp36-cp36m-linux_x86_64.whl && \
	wget https://www.ai-580.top/download/rknn_torch_demo.py -O ~/rknn_torch_demo.py && \
	python3.6 ~/rknn_torch_demo.py
