# https://www.pyimagesearch.com/2018/08/15/how-to-install-opencv-4-on-ubuntu/
FROM ubuntu:latest

RUN apt-get update && apt-get dist-upgrade -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    python3-dev python3-pip &&\
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN pip3 install numpy matplotlib jupyterlab sympy

WORKDIR /workspace
VOLUME /workspace
EXPOSE 8888
CMD ["jupyter", "notebook", "--allow-root", "--ip", "0.0.0.0", "--port", "8888"]
