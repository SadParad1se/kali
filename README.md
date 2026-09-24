# Kali cracking

Kali compose with hashcat and nvidia setup

Install nvidia container toolkit:

https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html#with-apt-ubuntu-debian

Configure the docker:
https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html#configuring-docker

Install OpenCL icd:
```bash
sudo apt install nvidia-opencl-icd
```

Run the compose:
```bash
docker compose up -d --build
```

Check that nvidia is visible:
```bash
nvidia-smi
```

Check the hashcat sees nvidia:
```bash
hashcat -I
```

Benchmark the cracking with nvidia:
```bash
hashcat -b
```
