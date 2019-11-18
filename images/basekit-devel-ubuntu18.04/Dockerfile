# Copyright (c) 2019 Intel Corporation.
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

# install oneAPI Base Toolkit
RUN apt-get install -y -o=Dpkg::Use-Pty=0 \
intel-oneapi-tbb-devel \
intel-oneapi-common-vars \
intel-oneapi-common-licensing \
intel-oneapi-ccl \
intel-oneapi-ipp-devel \
intel-oneapi-python \
intel-oneapi-advisor \
intel-oneapi-dpcpp-debugger \
intel-oneapi-daal-devel \
intel-oneapi-dev-utilities \
intel-oneapi-dpcpp-compiler \
intel-oneapi-libdpstd-devel \
intel-oneapi-dnnl-devel \
intel-oneapi-mkl-devel \
intel-oneapi-vtune \
intel-oneapi-onevpl-devel \
--

# install gpu drivers https://github.com/intel/compute-runtime/releases/
RUN apt-get install -y -o=Dpkg::Use-Pty=0 wget && \
mkdir neo && \
cd neo && \
wget --no-verbose \
    https://github.com/intel/compute-runtime/releases/download/19.43.14583/intel-gmmlib_19.3.2_amd64.deb \
    https://github.com/intel/compute-runtime/releases/download/19.43.14583/intel-igc-core_1.0.2714.1_amd64.deb \
    https://github.com/intel/compute-runtime/releases/download/19.43.14583/intel-igc-opencl_1.0.2714.1_amd64.deb \
    https://github.com/intel/compute-runtime/releases/download/19.43.14583/intel-opencl_19.43.14583_amd64.deb \
    https://github.com/intel/compute-runtime/releases/download/19.43.14583/intel-ocloc_19.43.14583_amd64.deb \
    https://github.com/intel/compute-runtime/releases/download/19.43.14583/ww43.sum \
&& \
sha256sum -c ww43.sum && \
dpkg -i *.deb && \
cd .. && \
rm -r neo && \
apt-get purge -y wget

# entrypoint
COPY entrypoint.sh /
RUN chmod a+x entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/bin/bash"]
