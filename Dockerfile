FROM kalilinux/kali-rolling:latest

ENV DEBIAN_FRONTEND=noninteractive
ENV NVIDIA_VISIBLE_DEVICES=all
ENV NVIDIA_DRIVER_CAPABILITIES=compute,utility

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        hashcat \
        hashcat-utils \
        clinfo \
        ocl-icd-libopencl1 \
        pciutils \
        nano \
        curl \
        git \
        ca-certificates && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /shared

CMD ["/bin/bash"]
