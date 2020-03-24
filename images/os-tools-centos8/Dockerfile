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
