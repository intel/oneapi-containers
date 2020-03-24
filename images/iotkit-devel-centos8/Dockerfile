# Copyright (c) 2019-2020 Intel Corporation.
# SPDX-License-Identifier: BSD-3-Clause

# requires oneapi-basekit image, assumes oneapi dnf/yum repo is configured
ARG base_image="intel/oneapi-basekit:devel-centos8"
FROM "$base_image"

# install Intel(R) oneAPI IoT Toolkit
RUN dnf install -y intel-iotkit-getting-started
RUN dnf install -y intel-oneapi-common-licensing
RUN dnf install -y intel-oneapi-common-vars
RUN dnf install -y intel-oneapi-dev-utilities
RUN dnf install -y intel-oneapi-icc
RUN dnf install -y intel-oneapi-inspector
RUN dnf install -y intel-oneapi-iot-eclipse-plugins

# entrypoint
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/bin/bash"]
