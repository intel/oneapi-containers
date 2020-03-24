# Copyright (c) 2019-2020 Intel Corporation.
# SPDX-License-Identifier: BSD-3-Clause

# requires oneapi-basekit image, assumes oneapi apt repo is configured
ARG base_image="intel/oneapi-basekit:devel-ubuntu18.04"
FROM "$base_image"

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y

# install Intel(R) AI Analytics Toolkit
RUN apt-get install -y --no-install-recommends -o=Dpkg::Use-Pty=0 \
intel-aikit-getting-started \
intel-oneapi-tensorflow \
intel-oneapi-dev-utilities \
intel-oneapi-python \
intel-oneapi-common-vars \
intel-oneapi-common-licensing \
intel-oneapi-pytorch \
--

# entrypoint
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/bin/bash"]
