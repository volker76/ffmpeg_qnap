# ffmpeg_qnap
FFMPEG Docker for NVIDIA on QNAP-TS473A


## clone the repository to the current location ( cannot be / )
`docker run -ti --rm -v $(pwd):/git alpine/git clone https://github.com/volker76/ffmpeg_qnap.git`

## use the prebuilt docker
`docker run -it --rm -v $(pwd):$(pwd) -w $(pwd) --device /dev/dri:/dev/dri --device=/dev/nvidia0:/dev/nvidia0 --device=/dev/nvidiactl:/dev/nvidiactl --device=/dev/nvidia-uvm:/dev/nvidia-uvm -v /share/CACHEDEV1_DATA/.qpkg/NVIDIA_GPU_DRV/usr:/usr/local/nvidia -e LD_LIBRARY_PATH="/usr/local/nvidia/lib:/usr/local/nvidia/lib64:/usr/local/nvidia/applib:/usr/local/nvidia/syslib" volkerhaensel/ffmpeg_qnap`
