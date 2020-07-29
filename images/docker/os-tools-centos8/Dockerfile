# Copyright (c) 2019-2020 Intel Corporation.
# SPDX-License-Identifier: BSD-3-Clause
FROM centos:8

# install OS tools
RUN dnf install -y make gcc gcc-c++ kernel-devel
RUN dnf install -y pkgconfig
RUN dnf install -y cmake
RUN dnf install -y which
RUN dnf install -y bzip2

# set environment variables
ENV LANG=C.UTF-8

# oneAPI repository
RUN echo $'\
[oneAPI]\n\
name=Intel(R) oneAPI repository\n\
baseurl=https://yum.repos.intel.com/oneapi\n\
enabled=1\n\
gpgcheck=1\n\
repo_gpgcheck=1\n\
gpgkey=https://yum.repos.intel.com/intel-gpg-keys/GPG-PUB-KEY-INTEL-SW-PRODUCTS-2023.PUB' \
> /etc/yum.repos.d/oneAPI.repo
