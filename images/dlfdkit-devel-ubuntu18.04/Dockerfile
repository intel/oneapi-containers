# Copyright (c) 2019-2020 Intel Corporation.
# SPDX-License-Identifier: BSD-3-Clause

# requires oneapi-basekit image, assumes oneapi apt repo is configured
ARG base_image="intel/oneapi-basekit:devel-ubuntu18.04"
FROM "$base_image"

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y

# install Intel(R) oneAPI DL Framework Developer Toolkit
RUN apt-get --no-install-recommends install -y -o=Dpkg::Use-Pty=0 \
intel-dlfdkit-getting-started \
intel-oneapi-common-vars \
intel-oneapi-common-licensing \
intel-oneapi-mpi-devel \
intel-oneapi-ccl \
intel-oneapi-dnnl-devel \
intel-oneapi-dev-utilities \
--

# entrypoint
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/bin/bash"]
