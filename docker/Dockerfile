FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
WORKDIR /root

# Locales
RUN apt-get update && apt-get install -y locales
ENV LANG="en_US.UTF-8" LC_ALL="en_US.UTF-8" LANGUAGE="en_US.UTF-8"

RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && \
  locale-gen --purge $LANG && \
    dpkg-reconfigure --frontend=noninteractive locales && \
    update-locale LANG=$LANG LC_ALL=$LC_ALL LANGUAGE=$LANGUAGE

# Common packages
RUN apt-get update && apt-get install -y \
      build-essential \
      curl \
      git \
      jq \
      mosh \
      psmisc \
      python3 \
      python3-pip \
      rsync \
      software-properties-common \
      tmux \
      tree \
      tzdata \
      vim \
      zsh \
      wget \
      zip

RUN pip3 install jp

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "/tmp/awscliv2.zip" && \
  unzip "/tmp/awscliv2.zip" -d "/tmp" && \
  /tmp/aws/install

# RUN ./shell/40_setup_git.sh all && ./shell/50_setup_aws.sh all && ./shell/15_setup_zsh.sh

