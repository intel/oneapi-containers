FROM cabelo/opensuse-leap-15.0
  
MAINTAINER cabelo@opensuse.org

ARG INSTALL_DIR=/opt/intel/oneapi

# Update the apt packages in the container.
RUN zypper --non-interactive --no-gpg-checks ref; \
    zypper --non-interactive in --recommends \
    cmake \
    pkg-config \
    curl \
    patterns-devel-C-C++-devel_C_C++

# Create created oneAPI.repo 
RUN zypper --non-interactive addrepo https://yum.repos.intel.com/oneapi oneAPI; \
    curl -o  /tmp/oneAPI.repo https://yum.repos.intel.com/intel-gpg-keys/GPG-PUB-KEY-INTEL-SW-PRODUCTS-2023.PUB; \
    rpm --import /tmp/oneAPI.repo;

# install Intel(R) oneAPI HPC Toolkit
RUN zypper --non-interactive --no-gpg-checks ref; \
    zypper --non-interactive in --recommends \
    intel-basekit

RUN /bin/bash -c "source $INSTALL_DIR/setvars.sh"

RUN echo "source $INSTALL_DIR/setvars.sh" >> /root/.bashrc

CMD ["/bin/bash"]

