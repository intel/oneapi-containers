# Copyright (c) 2019-2020 Intel Corporation.
# SPDX-License-Identifier: BSD-3-Clause

# requires os-tools image
ARG base_image="intel/oneapi:os-tools-centos8"
FROM "$base_image"

# install Intel(R) oneAPI
RUN dnf install -y \
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
RUN echo $'\
[intel-graphics]\n\
name=Intel Graphics Drivers Repository\n\
baseurl=https://repositories.intel.com/graphics/rhel/8.2/\n\
enabled=1\n\
gpgcheck=0' \
> /etc/yum.repos.d/intel-graphics.repo

RUN sed -i 's/^enabled=./enabled=1/' /etc/yum.repos.d/CentOS-PowerTools.repo

RUN dnf install -y \
intel-opencl \
intel-level-zero-gpu \
level-zero \
level-zero-devel
