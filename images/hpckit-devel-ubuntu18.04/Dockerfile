# Copyright (c) 2019-2020 Intel Corporation.
# SPDX-License-Identifier: BSD-3-Clause

# requires oneapi-basekit image, assumes oneapi apt repo is configured
ARG base_image="intel/oneapi-basekit:devel-ubuntu18.04"
FROM "$base_image"

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y

# install Intel(R) oneAPI HPC Toolkit
RUN apt-get install -y -o=Dpkg::Use-Pty=0 \
intel-hpckit-getting-started \
intel-oneapi-common-vars \
intel-oneapi-common-licensing \
intel-oneapi-itac \
intel-oneapi-mpi-devel \
intel-oneapi-dev-utilities \
intel-oneapi-tbb-devel \
intel-oneapi-icc \
intel-oneapi-ifort \
intel-oneapi-clck \
intel-oneapi-inspector \
--

# entrypoint
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/bin/bash"]
