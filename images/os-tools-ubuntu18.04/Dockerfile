# Copyright (c) 2019-2020 Intel Corporation.
# SPDX-License-Identifier: BSD-3-Clause
FROM ubuntu:18.04

ARG DEBIAN_FRONTEND=noninteractive

# install OS tools

RUN apt-get update -y

RUN apt-get install -y --no-install-recommends -o=Dpkg::Use-Pty=0 \
# make
build-essential \
# library helper
pkg-config \
cmake \
ca-certificates \
gnupg
