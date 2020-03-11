# Copyright (c) 2019-2020 Intel Corporation.
# SPDX-License-Identifier: BSD-3-Clause

# requires os-tools image
ARG base_image="intel/oneapi:os-tools-ubuntu18.04"
FROM "$base_image"

ARG DEBIAN_FRONTEND=noninteractive
ARG APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=1

# add apt repo public key
ARG url=https://apt.repos.intel.com/intel-gpg-keys/GPG-PUB-KEY-INTEL-SW-PRODUCTS-2023.PUB
ADD $url /
RUN file=$(basename "$url") && \
    apt-key add "$file" && \
    rm "$file"

# configure the repository
ARG apt_repo=https://apt.repos.intel.com/oneapi
RUN echo "deb $apt_repo all main" > /etc/apt/sources.list.d/oneAPI.list

RUN apt-get update -y

# install Intel(R) oneAPI Base Toolkit
RUN apt-get --no-install-recommends install -y -o=Dpkg::Use-Pty=0 \
intel-basekit-getting-started \
intel-oneapi-onevpl-devel \
intel-oneapi-common-vars \
intel-oneapi-common-licensing \
intel-oneapi-mpi-devel \
intel-oneapi-ccl \
intel-oneapi-python \
intel-oneapi-dnnl-devel \
intel-oneapi-mkl-devel \
intel-oneapi-dev-utilities \
intel-oneapi-daal-devel \
intel-oneapi-vtune \
intel-oneapi-ipp-devel \
intel-oneapi-tbb-devel \
intel-oneapi-libdpstd-devel \
intel-oneapi-dpcpp-compiler \
intel-oneapi-dpcpp-debugger \
intel-oneapi-advisor \
--

# install Intel(R) Graphics Compute Runtime for OpenCL(TM)
# https://github.com/intel/compute-runtime/releases/
RUN apt-get --no-install-recommends install -y -o=Dpkg::Use-Pty=0 wget && \
mkdir neo && \
cd neo && \
wget --no-verbose \
    https://github.com/intel/compute-runtime/releases/download/20.04.15428/intel-gmmlib_19.4.1_amd64.deb \
    https://github.com/intel/compute-runtime/releases/download/20.04.15428/intel-igc-core_1.0.3151_amd64.deb \
    https://github.com/intel/compute-runtime/releases/download/20.04.15428/intel-igc-opencl_1.0.3151_amd64.deb \
    https://github.com/intel/compute-runtime/releases/download/20.04.15428/intel-opencl_20.04.15428_amd64.deb \
    https://github.com/intel/compute-runtime/releases/download/20.04.15428/intel-ocloc_20.04.15428_amd64.deb \
    https://github.com/intel/compute-runtime/releases/download/20.04.15428/ww04.sum \
&& \
sha256sum -c ww04.sum && \
dpkg -i *.deb && \
cd .. && \
rm -r neo && \
apt-get purge -y wget

# entrypoint
COPY entrypoint.sh /
RUN chmod a+x entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/bin/bash"]
