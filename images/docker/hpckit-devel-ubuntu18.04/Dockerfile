# Copyright (c) 2019-2020 Intel Corporation.
# SPDX-License-Identifier: BSD-3-Clause

# requires oneapi-basekit image, assumes oneapi apt repo is configured
ARG base_image="intel/oneapi-basekit:devel-ubuntu18.04"
FROM "$base_image"

ARG DEBIAN_FRONTEND=noninteractive

# install Intel(R) oneAPI HPC Toolkit
RUN apt-get update -y && \
apt-get install -y --no-install-recommends -o=Dpkg::Use-Pty=0 \
intel-hpckit-getting-started \
intel-oneapi-clck \
intel-oneapi-common-licensing \
intel-oneapi-common-vars \
intel-oneapi-dev-utilities \
intel-oneapi-dpcpp-cpp-compiler-pro \
intel-oneapi-ifort \
intel-oneapi-inspector \
intel-oneapi-itac \
intel-oneapi-mpi-devel \
--

# setvars.sh environment variables
ENV ACL_BOARD_VENDOR_PATH='/opt/Intel/OpenCLFPGA/oneAPI/Boards'
ENV ADVISOR_2021_DIR='/opt/intel/oneapi/advisor/2021.1-beta09'
ENV APM='/opt/intel/oneapi/advisor/2021.1-beta09/perfmodels'
ENV CCL_ATL_TRANSPORT_PATH='/opt/intel/oneapi/ccl/2021.1-beta09/lib/cpu_gpu_dpcpp'
ENV CCL_CONFIGURATION='cpu_gpu_dpcpp'
ENV CCL_ROOT='/opt/intel/oneapi/ccl/2021.1-beta09'
ENV CLASSPATH='/opt/intel/oneapi/mpi/2021.1-beta09//lib/mpi.jar:/opt/intel/oneapi/daal/2021.1-beta09/lib/onedal.jar'
ENV CLCK_ROOT='/opt/intel/oneapi/clck/2021.1-beta09'
ENV CONDA_DEFAULT_ENV='base'
ENV CONDA_EXE='/opt/intel/oneapi/intelpython/latest/bin/conda'
ENV CONDA_PREFIX='/opt/intel/oneapi/intelpython/latest'
ENV CONDA_PROMPT_MODIFIER='(base) '
ENV CONDA_PYTHON_EXE='/opt/intel/oneapi/intelpython/latest/bin/python'
ENV CONDA_SHLVL='1'
ENV CPATH='/opt/intel/oneapi/ipp/2021.1-beta08/include:/opt/intel/oneapi/compiler/2021.1-beta09/linux/include:/opt/intel/oneapi/ippcp/2021.1-beta08/include:/opt/intel/oneapi/mpi/2021.1-beta09//include:/opt/intel/oneapi/mkl/2021.1-beta09/include:/opt/intel/oneapi/daal/2021.1-beta09/include:/opt/intel/oneapi/dnnl/2021.1-beta09/cpu_dpcpp_gpu_dpcpp/include:/opt/intel/oneapi/dev-utilities/2021.1-beta09/include:/opt/intel/oneapi/tbb/2021.1-beta09/env/../include:/opt/intel/oneapi/vpl/2021.1-beta09/include:/opt/intel/oneapi/ccl/2021.1-beta09/include/cpu_gpu_dpcpp'
ENV CPLUS_INCLUDE_PATH='/opt/intel/oneapi/clck/2021.1-beta09/include'
ENV DAALROOT='/opt/intel/oneapi/daal/2021.1-beta09'
ENV DNNLROOT='/opt/intel/oneapi/dnnl/2021.1-beta09/cpu_dpcpp_gpu_dpcpp'
ENV FI_PROVIDER_PATH='/opt/intel/oneapi/mpi/2021.1-beta09//libfabric/lib/prov'
ENV INFOPATH='/opt/intel/oneapi/debugger/10.0-beta09/documentation/info/'
ENV INSPECTOR_2021_DIR='/opt/intel/oneapi/inspector/2021.1-beta09'
ENV INTELFPGAOCLSDKROOT='/opt/intel/oneapi/compiler/2021.1-beta09/linux/lib/oclfpga'
ENV INTEL_LICENSE_FILE='/opt/intel/licenses:/root/intel/licenses:/opt/intel/oneapi/clck/2021.1-beta09/licensing:/opt/intel/licenses:/root/intel/licenses:/Users/Shared/Library/Application Support/Intel/Licenses'
ENV INTEL_PYTHONHOME='/opt/intel/oneapi/debugger/10.0-beta09/dep'
ENV IPPCP_TARGET_ARCH='intel64'
ENV IPPCRYPTOROOT='/opt/intel/oneapi/ippcp/2021.1-beta08'
ENV IPPROOT='/opt/intel/oneapi/ipp/2021.1-beta08'
ENV IPP_TARGET_ARCH='intel64'
ENV I_MPI_ROOT='/opt/intel/oneapi/mpi/2021.1-beta09'
ENV LD_LIBRARY_PATH='/opt/intel/oneapi/itac/2021.1-beta09/slib:/opt/intel/oneapi/ipp/2021.1-beta08/lib/intel64:/opt/intel/oneapi/compiler/2021.1-beta09/linux/lib:/opt/intel/oneapi/compiler/2021.1-beta09/linux/lib/x64:/opt/intel/oneapi/compiler/2021.1-beta09/linux/lib/emu:/opt/intel/oneapi/compiler/2021.1-beta09/linux/lib/oclfpga/host/linux64/lib:/opt/intel/oneapi/compiler/2021.1-beta09/linux/lib/oclfpga/linux64/lib:/opt/intel/oneapi/compiler/2021.1-beta09/linux/compiler/lib/intel64_lin:/opt/intel/oneapi/compiler/2021.1-beta09/linux/compiler/lib:/opt/intel/oneapi/ippcp/2021.1-beta08/lib/intel64:/opt/intel/oneapi/mpi/2021.1-beta09//libfabric/lib:/opt/intel/oneapi/mpi/2021.1-beta09//lib/release:/opt/intel/oneapi/mpi/2021.1-beta09//lib:/opt/intel/oneapi/debugger/10.0-beta09/dep/lib:/opt/intel/oneapi/debugger/10.0-beta09/libipt/intel64/lib:/opt/intel/oneapi/debugger/10.0-beta09/gdb/intel64/lib:/opt/intel/oneapi/mkl/2021.1-beta09/lib/intel64:/opt/intel/oneapi/daal/2021.1-beta09/lib/intel64:/opt/intel/oneapi/dnnl/2021.1-beta09/cpu_dpcpp_gpu_dpcpp/lib:/opt/intel/oneapi/tbb/2021.1-beta09/env/../lib/intel64/gcc4.8:/opt/intel/oneapi/vpl/2021.1-beta09/lib:/opt/intel/oneapi/ccl/2021.1-beta09/lib/cpu_gpu_dpcpp'
ENV LIBRARY_PATH='/opt/intel/oneapi/clck/2021.1-beta09/lib/intel64:/opt/intel/oneapi/ipp/2021.1-beta08/lib/intel64:/opt/intel/oneapi/compiler/2021.1-beta09/linux/lib:/opt/intel/oneapi/ippcp/2021.1-beta08/lib/intel64:/opt/intel/oneapi/mpi/2021.1-beta09//libfabric/lib:/opt/intel/oneapi/mpi/2021.1-beta09//lib/release:/opt/intel/oneapi/mpi/2021.1-beta09//lib:/opt/intel/oneapi/mkl/2021.1-beta09/lib/intel64:/opt/intel/oneapi/daal/2021.1-beta09/lib/intel64:/opt/intel/oneapi/dnnl/2021.1-beta09/cpu_dpcpp_gpu_dpcpp/lib:/opt/intel/oneapi/tbb/2021.1-beta09/env/../lib/intel64/gcc4.8:/opt/intel/oneapi/vpl/2021.1-beta09/lib:/opt/intel/oneapi/ccl/2021.1-beta09/lib/cpu_gpu_dpcpp'
ENV MANPATH='/opt/intel/oneapi/itac/2021.1-beta09/man:/opt/intel/oneapi/clck/2021.1-beta09/man::/opt/intel/oneapi/debugger/10.0-beta09/documentation/man::::/opt/intel/oneapi/compiler/2021.1-beta09/documentation/en/man/common::'
ENV MKLROOT='/opt/intel/oneapi/mkl/2021.1-beta09'
ENV NLSPATH='/opt/intel/oneapi/mkl/2021.1-beta09/lib/intel64/locale/%l_%t/%N'
ENV OCL_ICD_FILENAMES='libintelocl_emu.so:libalteracl.so:/opt/intel/oneapi/compiler/2021.1-beta09/linux/lib/x64/libintelocl.so'
ENV ONEAPI_ROOT='/opt/intel/oneapi'
ENV PATH='/opt/intel/oneapi/itac/2021.1-beta09/bin:/opt/intel/oneapi/itac/2021.1-beta09/bin:/opt/intel/oneapi/clck/2021.1-beta09/bin/intel64:/opt/intel/oneapi/inspector/2021.1-beta09/bin64:/opt/intel/oneapi/compiler/2021.1-beta09/linux/lib/oclfpga/llvm/aocl-bin:/opt/intel/oneapi/compiler/2021.1-beta09/linux/lib/oclfpga/bin:/opt/intel/oneapi/compiler/2021.1-beta09/linux/bin/intel64:/opt/intel/oneapi/compiler/2021.1-beta09/linux/bin:/opt/intel/oneapi/compiler/2021.1-beta09/linux/ioc/bin:/opt/intel/oneapi/intelpython/latest/bin:/opt/intel/oneapi/intelpython/latest/condabin:/opt/intel/oneapi/mpi/2021.1-beta09/libfabric/bin:/opt/intel/oneapi/mpi/2021.1-beta09/bin:/opt/intel/oneapi/vtune/2021.1-beta09/bin64:/opt/intel/oneapi/debugger/10.0-beta09/gdb/intel64/bin:/opt/intel/oneapi/mkl/2021.1-beta09/bin/intel64:/opt/intel/oneapi/dev-utilities/2021.1-beta09/bin:/opt/intel/oneapi/vpl/2021.1-beta09/bin:/opt/intel/oneapi/advisor/2021.1-beta09/bin64:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin'
ENV PKG_CONFIG_PATH='/opt/intel/oneapi/inspector/2021.1-beta09/include/pkgconfig/lib64:/opt/intel/oneapi/vtune/2021.1-beta09/include/pkgconfig/lib64:/opt/intel/oneapi/mkl/2021.1-beta09/tools/pkgconfig:/opt/intel/oneapi/advisor/2021.1-beta09/include/pkgconfig/lib64:'
ENV PYTHONPATH='/opt/intel/oneapi/advisor/2021.1-beta09/pythonapi'
ENV SETVARS_COMPLETED='1'
ENV TBBROOT='/opt/intel/oneapi/tbb/2021.1-beta09/env/..'
ENV VPL_BIN='/opt/intel/oneapi/vpl/2021.1-beta09/bin'
ENV VPL_INCLUDE='/opt/intel/oneapi/vpl/2021.1-beta09/include'
ENV VPL_LIB='/opt/intel/oneapi/vpl/2021.1-beta09/lib'
ENV VPL_ROOT='/opt/intel/oneapi/vpl/2021.1-beta09'
ENV VTUNE_PROFILER_2021_DIR='/opt/intel/oneapi/vtune/2021.1-beta09'
ENV VT_ADD_LIBS='-ldwarf -lelf -lvtunwind -lm -lpthread'
ENV VT_LIB_DIR='/opt/intel/oneapi/itac/2021.1-beta09/lib'
ENV VT_MPI='impi4'
ENV VT_ROOT='/opt/intel/oneapi/itac/2021.1-beta09'
ENV VT_SLIB_DIR='/opt/intel/oneapi/itac/2021.1-beta09/slib'
ENV _CE_CONDA=''
ENV _CE_M=''
