FROM ubuntu:24.04

RUN apt-get update && \
    apt-get install -y \
    gcc-arm-none-eabi \
    qemu-system-arm && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

CMD ["bash"]