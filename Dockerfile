#FROM nvidia/cuda:11.7.1-base-ubuntu18.04
FROM nvidia/cuda:11.7.1-runtime-ubuntu18.04

ENV TZ=Europe/Berlin
RUN apt-get update && apt-get upgrade -y && DEBIAN_FRONTEND="noninteractive" TZ="Europe/Berlin" apt-get install -y --no-install-recommends \
        mc \
        libenca0 \
        ffmpeg && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get purge --auto-remove && \
    apt-get clean

