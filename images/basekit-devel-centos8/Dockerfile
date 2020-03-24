# Copyright (c) 2019-2020 Intel Corporation.
# SPDX-License-Identifier: BSD-3-Clause

# requires os-tools image
ARG base_image="intel/oneapi:os-tools-centos8"
FROM "$base_image"

# install Intel(R) oneAPI
RUN echo $'\
[oneAPI]\n\
name=Intel(R) oneAPI repository\n\
baseurl=https://yum.repos.intel.com/oneapi\n\
enabled=1\n\
gpgcheck=1\n\
repo_gpgcheck=1\n\
gpgkey=https://yum.repos.intel.com/intel-gpg-keys/GPG-PUB-KEY-INTEL-SW-PRODUCTS-2023.PUB' \
> /etc/yum.repos.d/oneAPI.repo

RUN dnf install -y intel-basekit-getting-started
RUN dnf install -y intel-oneapi-advisor
RUN dnf install -y intel-oneapi-ccl
RUN dnf install -y intel-oneapi-common-licensing
RUN dnf install -y intel-oneapi-common-vars
RUN dnf install -y intel-oneapi-daal-devel
RUN dnf install -y intel-oneapi-dev-utilities
RUN dnf install -y intel-oneapi-dnnl-devel
RUN dnf install -y intel-oneapi-dpcpp-compiler
RUN dnf install -y intel-oneapi-dpcpp-debugger
RUN dnf install -y intel-oneapi-ipp-devel
RUN dnf install -y intel-oneapi-libdpstd-devel
RUN dnf install -y intel-oneapi-mkl-devel
RUN dnf install -y intel-oneapi-onevpl-devel
RUN dnf install -y intel-oneapi-python
RUN dnf install -y intel-oneapi-tbb-devel
RUN dnf install -y intel-oneapi-vtune

# install Intel(R) Graphics Compute Runtime for OpenCL(TM)
RUN echo $'\
[intel-graphics]\n\
name=Intel Graphics Drivers Repository\n\
baseurl=https://repositories.intel.com/graphics/rhel/8.0/\n\
enabled=1\n\
gpgcheck=0' \
> /etc/yum.repos.d/intel-graphics.repo

RUN dnf install -y intel-opencl

# entrypoint
COPY entrypoint.sh /
RUN chmod a+x entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/bin/bash"]
