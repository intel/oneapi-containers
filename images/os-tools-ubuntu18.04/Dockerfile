# Copyright (c) 2019 Intel Corporation.
# SPDX-License-Identifier: BSD-3-Clause
FROM ubuntu:18.04

ARG DEBIAN_FRONTEND=noninteractive

# install OS tools

RUN apt-get update -y

RUN apt-get --no-install-recommends install -y -o=Dpkg::Use-Pty=0 \
# make
build-essential \
# library helper
pkg-config \
cmake \
