# Copyright (c) 2019-2020 Intel Corporation.
# SPDX-License-Identifier: BSD-3-Clause

# requires os-tools image
ARG base_image="intel/oneapi:os-tools-ubuntu18.04"
FROM "$base_image"

ARG DEBIAN_FRONTEND=noninteractive
ARG APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=1

# install Intel(R) oneAPI Runtime Libraries
RUN apt-get update -y && \
apt-get install -y --no-install-recommends -o=Dpkg::Use-Pty=0 \
intel-oneapi-runtime-ccl \
intel-oneapi-runtime-compilers \
intel-oneapi-runtime-dal \
intel-oneapi-runtime-dnnl \
intel-oneapi-runtime-dpcpp-cpp \
intel-oneapi-runtime-dpcpp-library \
intel-oneapi-runtime-fortran \
intel-oneapi-runtime-ipp \
intel-oneapi-runtime-ipp-crypto \
intel-oneapi-runtime-libs \
intel-oneapi-runtime-mkl \
intel-oneapi-runtime-mpi \
intel-oneapi-runtime-opencl \
intel-oneapi-runtime-openmp \
intel-oneapi-runtime-tbb \
intel-oneapi-runtime-vpl \
--

# install Intel GPU drivers
RUN echo 'deb [trusted=yes arch=amd64] https://repositories.intel.com/graphics/ubuntu bionic main' \
> /etc/apt/sources.list.d/intel-graphics.list

ARG url=https://repositories.intel.com/graphics/intel-graphics.key
ADD $url /
RUN file=$(basename "$url") && \
    apt-key add "$file" && \
    rm "$file"

RUN apt-get update -y && \
apt-get install -y --no-install-recommends -o=Dpkg::Use-Pty=0 \
intel-opencl \
intel-level-zero-gpu \
level-zero \
level-zero-devel

COPY third-party-programs.txt /
