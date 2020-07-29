# Copyright (c) 2019-2020 Intel Corporation.
# SPDX-License-Identifier: BSD-3-Clause
FROM ubuntu:18.04

ARG DEBIAN_FRONTEND=noninteractive
ARG APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=1

# install OS tools
RUN apt-get update -y && \
apt-get install -y --no-install-recommends -o=Dpkg::Use-Pty=0 \
# make
build-essential \
# library helper
pkg-config \
cmake \
ca-certificates \
gnupg

# add apt repo public key
ARG url=https://apt.repos.intel.com/intel-gpg-keys/GPG-PUB-KEY-INTEL-SW-PRODUCTS-2023.PUB
ADD $url /
RUN file=$(basename "$url") && \
    apt-key add "$file" && \
    rm "$file"

# configure the repository
ARG apt_repo=https://apt.repos.intel.com/oneapi
RUN echo "deb $apt_repo all main" > /etc/apt/sources.list.d/oneAPI.list
