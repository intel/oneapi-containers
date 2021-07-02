# Copyright (c) 2019-2020 Intel Corporation.
# SPDX-License-Identifier: BSD-3-Clause

# requires oneapi-basekit image, assumes oneapi apt repo is configured
ARG base_image="intel/oneapi-basekit:devel-ubuntu18.04"
FROM "$base_image"

ARG DEBIAN_FRONTEND=noninteractive

# install Intel(R) oneAPI DL Framework Developer Toolkit
RUN apt-get update -y && \
apt-get install -y --no-install-recommends -o=Dpkg::Use-Pty=0 \
intel-dlfdkit-getting-started \
intel-oneapi-ccl-devel \
intel-oneapi-common-licensing \
intel-oneapi-common-vars \
intel-oneapi-dev-utilities \
intel-oneapi-dnnl-devel \
--

# setvars.sh environment variables
ENV ACL_BOARD_VENDOR_PATH='/opt/Intel/OpenCLFPGA/oneAPI/Boards'
ENV ADVISOR_2021_DIR='/opt/intel/oneapi/advisor/2021.3.0'
ENV APM='/opt/intel/oneapi/advisor/2021.3.0/perfmodels'
ENV CCL_CONFIGURATION='cpu_gpu_dpcpp'
ENV CCL_ROOT='/opt/intel/oneapi/ccl/2021.3.0'
ENV CLASSPATH='/opt/intel/oneapi/mpi/2021.3.0//lib/mpi.jar:/opt/intel/oneapi/dal/2021.3.0/lib/onedal.jar'
ENV CMAKE_PREFIX_PATH='/opt/intel/oneapi/vpl/2021.4.0:/opt/intel/oneapi/tbb/2021.3.0/env/..:/opt/intel/oneapi/dal/2021.3.0'
ENV CMPLR_ROOT='/opt/intel/oneapi/compiler/2021.3.0'
ENV CONDA_DEFAULT_ENV='intelpython-python3.7'
ENV CONDA_EXE='/opt/intel/oneapi/intelpython/latest/bin/conda'
ENV CONDA_PREFIX='/opt/intel/oneapi/intelpython/latest'
ENV CONDA_PROMPT_MODIFIER='(intelpython-python3.7) '
ENV CONDA_PYTHON_EXE='/opt/intel/oneapi/intelpython/latest/bin/python'
ENV CONDA_SHLVL='1'
ENV CPATH='/opt/intel/oneapi/vpl/2021.4.0/include:/opt/intel/oneapi/tbb/2021.3.0/env/../include:/opt/intel/oneapi/mpi/2021.3.0//include:/opt/intel/oneapi/mkl/2021.3.0/include:/opt/intel/oneapi/ippcp/2021.3.0/include:/opt/intel/oneapi/ipp/2021.3.0/include:/opt/intel/oneapi/dpl/2021.4.0/linux/include:/opt/intel/oneapi/dnnl/2021.3.0/cpu_dpcpp_gpu_dpcpp/lib:/opt/intel/oneapi/dev-utilities/2021.3.0/include:/opt/intel/oneapi/dal/2021.3.0/include:/opt/intel/oneapi/compiler/2021.3.0/linux/include:/opt/intel/oneapi/ccl/2021.3.0/include/cpu_gpu_dpcpp'
ENV DAALROOT='/opt/intel/oneapi/dal/2021.3.0'
ENV DALROOT='/opt/intel/oneapi/dal/2021.3.0'
ENV DAL_MAJOR_BINARY='1'
ENV DAL_MINOR_BINARY='1'
ENV DNNLROOT='/opt/intel/oneapi/dnnl/2021.3.0/cpu_dpcpp_gpu_dpcpp'
ENV DPL_ROOT='/opt/intel/oneapi/dpl/2021.4.0'
ENV FI_PROVIDER_PATH='/opt/intel/oneapi/mpi/2021.3.0//libfabric/lib/prov:/usr/lib64/libfabric'
ENV FPGA_VARS_ARGS=''
ENV FPGA_VARS_DIR='/opt/intel/oneapi/compiler/2021.3.0/linux/lib/oclfpga'
ENV INFOPATH='/opt/intel/oneapi/debugger/10.1.2/gdb/intel64/lib'
ENV INTELFPGAOCLSDKROOT='/opt/intel/oneapi/compiler/2021.3.0/linux/lib/oclfpga'
ENV INTEL_PYTHONHOME='/opt/intel/oneapi/debugger/10.1.2/dep'
ENV IPPCP_TARGET_ARCH='intel64'
ENV IPPCRYPTOROOT='/opt/intel/oneapi/ippcp/2021.3.0'
ENV IPPROOT='/opt/intel/oneapi/ipp/2021.3.0'
ENV IPP_TARGET_ARCH='intel64'
ENV I_MPI_ROOT='/opt/intel/oneapi/mpi/2021.3.0'
ENV LD_LIBRARY_PATH='/opt/intel/oneapi/vpl/2021.4.0/lib:/opt/intel/oneapi/tbb/2021.3.0/env/../lib/intel64/gcc4.8:/opt/intel/oneapi/mpi/2021.3.0//libfabric/lib:/opt/intel/oneapi/mpi/2021.3.0//lib/release:/opt/intel/oneapi/mpi/2021.3.0//lib:/opt/intel/oneapi/mkl/2021.3.0/lib/intel64:/opt/intel/oneapi/ippcp/2021.3.0/lib/intel64:/opt/intel/oneapi/ipp/2021.3.0/lib/intel64:/opt/intel/oneapi/dnnl/2021.3.0/cpu_dpcpp_gpu_dpcpp/lib:/opt/intel/oneapi/debugger/10.1.2/gdb/intel64/lib:/opt/intel/oneapi/debugger/10.1.2/libipt/intel64/lib:/opt/intel/oneapi/debugger/10.1.2/dep/lib:/opt/intel/oneapi/dal/2021.3.0/lib/intel64:/opt/intel/oneapi/compiler/2021.3.0/linux/lib:/opt/intel/oneapi/compiler/2021.3.0/linux/lib/x64:/opt/intel/oneapi/compiler/2021.3.0/linux/lib/emu:/opt/intel/oneapi/compiler/2021.3.0/linux/lib/oclfpga/host/linux64/lib:/opt/intel/oneapi/compiler/2021.3.0/linux/lib/oclfpga/linux64/lib:/opt/intel/oneapi/compiler/2021.3.0/linux/compiler/lib/intel64_lin:/opt/intel/oneapi/ccl/2021.3.0/lib/cpu_gpu_dpcpp'
ENV LIBRARY_PATH='/opt/intel/oneapi/vpl/2021.4.0/lib:/opt/intel/oneapi/tbb/2021.3.0/env/../lib/intel64/gcc4.8:/opt/intel/oneapi/mpi/2021.3.0//libfabric/lib:/opt/intel/oneapi/mpi/2021.3.0//lib/release:/opt/intel/oneapi/mpi/2021.3.0//lib:/opt/intel/oneapi/mkl/2021.3.0/lib/intel64:/opt/intel/oneapi/ippcp/2021.3.0/lib/intel64:/opt/intel/oneapi/ipp/2021.3.0/lib/intel64:/opt/intel/oneapi/dnnl/2021.3.0/cpu_dpcpp_gpu_dpcpp/lib:/opt/intel/oneapi/dal/2021.3.0/lib/intel64:/opt/intel/oneapi/compiler/2021.3.0/linux/compiler/lib/intel64_lin:/opt/intel/oneapi/compiler/2021.3.0/linux/lib:/opt/intel/oneapi/ccl/2021.3.0/lib/cpu_gpu_dpcpp'
ENV MANPATH='/opt/intel/oneapi/mpi/2021.3.0/man:/opt/intel/oneapi/debugger/10.1.2/documentation/man:/opt/intel/oneapi/compiler/2021.3.0/documentation/en/man/common::'
ENV MKLROOT='/opt/intel/oneapi/mkl/2021.3.0'
ENV NLSPATH='/opt/intel/oneapi/mkl/2021.3.0/lib/intel64/locale/%l_%t/%N'
ENV OCL_ICD_FILENAMES='libintelocl_emu.so:libalteracl.so:/opt/intel/oneapi/compiler/2021.3.0/linux/lib/x64/libintelocl.so'
ENV ONEAPI_ROOT='/opt/intel/oneapi'
ENV PATH='/opt/intel/oneapi/vtune/2021.5.0/bin64:/opt/intel/oneapi/vpl/2021.4.0/bin:/opt/intel/oneapi/mpi/2021.3.0//libfabric/bin:/opt/intel/oneapi/mpi/2021.3.0//bin:/opt/intel/oneapi/mkl/2021.3.0/bin/intel64:/opt/intel/oneapi/intelpython/latest/bin:/opt/intel/oneapi/intelpython/latest/condabin:/opt/intel/oneapi/dev-utilities/2021.3.0/bin:/opt/intel/oneapi/debugger/10.1.2/gdb/intel64/bin:/opt/intel/oneapi/compiler/2021.3.0/linux/lib/oclfpga/llvm/aocl-bin:/opt/intel/oneapi/compiler/2021.3.0/linux/lib/oclfpga/bin:/opt/intel/oneapi/compiler/2021.3.0/linux/bin/intel64:/opt/intel/oneapi/compiler/2021.3.0/linux/bin:/opt/intel/oneapi/advisor/2021.3.0/bin64:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin'
ENV PKG_CONFIG_PATH='/opt/intel/oneapi/vtune/2021.5.0/include/pkgconfig/lib64:/opt/intel/oneapi/vpl/2021.4.0/lib/pkgconfig:/opt/intel/oneapi/mkl/2021.3.0/tools/pkgconfig:/opt/intel/oneapi/advisor/2021.3.0/include/pkgconfig/lib64:'
ENV PYTHONPATH='/opt/intel/oneapi/advisor/2021.3.0/pythonapi'
ENV SETVARS_COMPLETED='1'
ENV SETVARS_VARS_PATH='/opt/intel/oneapi/vtune/latest/env/vars.sh'
ENV TBBROOT='/opt/intel/oneapi/tbb/2021.3.0/env/..'
ENV VTUNE_PROFILER_2021_DIR='/opt/intel/oneapi/vtune/2021.5.0'
ENV _CE_CONDA=''
ENV _CE_M=''
