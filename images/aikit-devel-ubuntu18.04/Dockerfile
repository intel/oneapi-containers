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
intel-oneapi-dev-utilities \
intel-oneapi-python \
intel-oneapi-common-vars \
intel-oneapi-common-licensing \
intel-oneapi-condaindex \
intel-oneapi-model-zoo \
intel-oneapi-quantization-tool \
intel-oneapi-pytorch \
intel-oneapi-tensorflow \
--

ENV ACL_BOARD_VENDOR_PATH='/opt/Intel/OpenCLFPGA/oneAPI/Boards'
ENV ADVISOR_2021_DIR='/opt/intel/inteloneapi/advisor/2021.1-beta07'
ENV APM='/opt/intel/inteloneapi/advisor/2021.1-beta07/perfmodels'
ENV CCL_ATL_TRANSPORT_PATH='/opt/intel/inteloneapi/ccl/2021.1-beta07/lib/cpu_gpu_dpcpp'
ENV CCL_CONFIGURATION='cpu_gpu_dpcpp'
ENV CCL_ROOT='/opt/intel/inteloneapi/ccl/2021.1-beta07'
ENV CLASSPATH='/opt/intel/inteloneapi/mpi/2021.1-beta07//lib/mpi.jar:/opt/intel/inteloneapi/daal/latest/lib/daal.jar:/opt/intel/inteloneapi/mpi/2021.1-beta07//lib/mpi.jar:/opt/intel/inteloneapi/daal/latest/lib/daal.jar'
ENV CONDA_DEFAULT_ENV='base'
ENV CONDA_EXE='/opt/intel/inteloneapi/intelpython/latest/bin/conda'
ENV CONDA_PREFIX='/opt/intel/inteloneapi/intelpython/latest'
ENV CONDA_PROMPT_MODIFIER='(base) '
ENV CONDA_PYTHON_EXE='/opt/intel/inteloneapi/intelpython/latest/bin/python'
ENV CPATH='/opt/intel/inteloneapi/vpl/latest/include:/opt/intel/inteloneapi/tbb/2021.1-beta07/env/../include:/opt/intel/inteloneapi/oneDNN/2021.1-beta07/cpu_dpcpp_gpu_dpcpp/include:/opt/intel/inteloneapi/mpi/2021.1-beta07//include:/opt/intel/inteloneapi/mkl/2021.1-beta07/include:/opt/intel/inteloneapi/ipp/latest/include:/opt/intel/inteloneapi/dev-utilities/2021.1-beta07/include:/opt/intel/inteloneapi/daal/latest/include:/opt/intel/inteloneapi/compiler/latest/linux/include:/opt/intel/inteloneapi/vpl/latest/include:/opt/intel/inteloneapi/tbb/2021.1-beta07/env/../include:/opt/intel/inteloneapi/oneDNN/2021.1-beta07/cpu_dpcpp_gpu_dpcpp/include:/opt/intel/inteloneapi/mpi/2021.1-beta07//include:/opt/intel/inteloneapi/mkl/2021.1-beta07/include:/opt/intel/inteloneapi/ipp/latest/include:/opt/intel/inteloneapi/dev-utilities/2021.1-beta07/include:/opt/intel/inteloneapi/daal/latest/include:/opt/intel/inteloneapi/compiler/latest/linux/include'
ENV DAALROOT='/opt/intel/inteloneapi/daal/latest'
ENV DNNLROOT='/opt/intel/inteloneapi/oneDNN/2021.1-beta07/cpu_dpcpp_gpu_dpcpp'
ENV DPCPP_ROOT='/opt/intel/inteloneapi'
ENV FI_PROVIDER_PATH='/opt/intel/inteloneapi/mpi/2021.1-beta07//libfabric/lib/prov'
ENV INFOPATH='/opt/intel/inteloneapi/debugger/10.0-beta07/documentation/info/'
ENV INTELFPGAOCLSDKROOT='/opt/intel/inteloneapi/compiler/2021.1-beta07/linux/lib/oclfpga'
ENV IPPROOT='/opt/intel/inteloneapi/ipp/latest'
ENV IPP_TARGET_ARCH='intel64'
ENV I_MPI_LIBRARY_KIND='release_mt'
ENV I_MPI_ROOT='/opt/intel/inteloneapi/mpi/2021.1-beta07'
ENV LD_LIBRARY_PATH='/opt/intel/inteloneapi/vpl/latest/lib:/opt/intel/inteloneapi/tbb/2021.1-beta07/env/../lib/intel64/gcc4.8:/opt/intel/inteloneapi/oneDNN/2021.1-beta07/cpu_dpcpp_gpu_dpcpp/lib:/opt/intel/inteloneapi/mpi/2021.1-beta07//libfabric/lib:/opt/intel/inteloneapi/mpi/2021.1-beta07//lib/release_mt:/opt/intel/inteloneapi/mpi/2021.1-beta07//lib:/opt/intel/inteloneapi/mpi/2021.1-beta07//lib/release:/opt/intel/inteloneapi/mpi/2021.1-beta07//lib:/opt/intel/inteloneapi/mkl/2021.1-beta07/lib/intel64:/opt/intel/inteloneapi/ipp/latest/lib/intel64:/opt/intel/inteloneapi/ipp/latest/../../compiler/latest/linux/compiler/lib/intel64:/opt/intel/inteloneapi/daal/latest/lib/intel64:/opt/intel/inteloneapi/compiler/latest/linux/lib:/opt/intel/inteloneapi/compiler/latest/linux/lib/x64:/opt/intel/inteloneapi/compiler/latest/linux/compiler/lib/intel64_lin:/opt/intel/inteloneapi/compiler/latest/linux/compiler/lib:/opt/intel/inteloneapi/ccl/2021.1-beta07/lib/cpu_gpu_dpcpp:/opt/intel/inteloneapi/vpl/latest/lib:/opt/intel/inteloneapi/tbb/2021.1-beta07/env/../lib/intel64/gcc4.8:/opt/intel/inteloneapi/oneDNN/2021.1-beta07/cpu_dpcpp_gpu_dpcpp/lib:/opt/intel/inteloneapi/mpi/2021.1-beta07//libfabric/lib:/opt/intel/inteloneapi/mpi/2021.1-beta07//lib/release_mt:/opt/intel/inteloneapi/mpi/2021.1-beta07//lib:/opt/intel/inteloneapi/mpi/2021.1-beta07//lib/release:/opt/intel/inteloneapi/mpi/2021.1-beta07//lib:/opt/intel/inteloneapi/mkl/2021.1-beta07/lib/intel64:/opt/intel/inteloneapi/ipp/latest/lib/intel64:/opt/intel/inteloneapi/ipp/latest/../../compiler/latest/linux/compiler/lib/intel64:/opt/intel/inteloneapi/ipp/latest/../../tbb/latest/lib/intel64/gcc4.8:/opt/intel/inteloneapi/debugger/10.0-beta07/dep/lib:/opt/intel/inteloneapi/debugger/10.0-beta07/libipt/intel64/lib:/opt/intel/inteloneapi/debugger/10.0-beta07/gdb/intel64/lib:/opt/intel/inteloneapi/daal/latest/lib/intel64:/opt/intel/inteloneapi/compiler/latest/linux/lib:/opt/intel/inteloneapi/compiler/latest/linux/lib/x64:/opt/intel/inteloneapi/compiler/2021.1-beta07/linux/lib/oclfpga/host/linux64/lib:/opt/intel/inteloneapi/compiler/2021.1-beta07/linux/lib/oclfpga/linux64/lib:/opt/intel/inteloneapi/compiler/latest/linux/compiler/lib/intel64_lin:/opt/intel/inteloneapi/compiler/latest/linux/compiler/lib:/opt/intel/inteloneapi/ccl/2021.1-beta07/lib/cpu_gpu_dpcpp'
ENV LIBRARY_PATH='/opt/intel/inteloneapi/vpl/latest/lib:/opt/intel/inteloneapi/tbb/2021.1-beta07/env/../lib/intel64/gcc4.8:/opt/intel/inteloneapi/oneDNN/2021.1-beta07/cpu_dpcpp_gpu_dpcpp/lib:/opt/intel/inteloneapi/mpi/2021.1-beta07//libfabric/lib:/opt/intel/inteloneapi/mpi/2021.1-beta07//lib/release:/opt/intel/inteloneapi/mpi/2021.1-beta07//lib:/opt/intel/inteloneapi/mkl/2021.1-beta07/lib/intel64:/opt/intel/inteloneapi/ipp/latest/lib/intel64:/opt/intel/inteloneapi/ipp/latest/../../compiler/latest/linux/compiler/lib/intel64:/opt/intel/inteloneapi/daal/latest/lib/intel64:/opt/intel/inteloneapi/compiler/latest/linux/lib:/opt/intel/inteloneapi/vpl/latest/lib:/opt/intel/inteloneapi/tbb/2021.1-beta07/env/../lib/intel64/gcc4.8:/opt/intel/inteloneapi/oneDNN/2021.1-beta07/cpu_dpcpp_gpu_dpcpp/lib:/opt/intel/inteloneapi/mpi/2021.1-beta07//libfabric/lib:/opt/intel/inteloneapi/mpi/2021.1-beta07//lib/release:/opt/intel/inteloneapi/mpi/2021.1-beta07//lib:/opt/intel/inteloneapi/mkl/2021.1-beta07/lib/intel64:/opt/intel/inteloneapi/ipp/latest/lib/intel64:/opt/intel/inteloneapi/ipp/latest/../../compiler/latest/linux/compiler/lib/intel64:/opt/intel/inteloneapi/ipp/latest/../../tbb/latest/lib/intel64/gcc4.8:/opt/intel/inteloneapi/daal/latest/lib/intel64:/opt/intel/inteloneapi/compiler/latest/linux/lib'
ENV LIBVA_DRIVERS_PATH='/opt/intel/inteloneapi/vpl/latest/lib'
ENV LIBVA_DRIVER_NAME='iHD'
ENV MANPATH='::/opt/intel/inteloneapi/debugger/10.0-beta07/documentation/man::::'
ENV MKLROOT='/opt/intel/inteloneapi/mkl/2021.1-beta07'
ENV MODEL_ZOO_VERSION='1.6.0'
ENV NLSPATH='/opt/intel/inteloneapi/mkl/2021.1-beta07/lib/intel64/locale/%l_%t/%N:/opt/intel/inteloneapi/mkl/2021.1-beta07/lib/intel64/locale/%l_%t/%N'
ENV OCL_ICD_FILENAMES='libintelocl_emu.so:libalteracl.so:/opt/intel/inteloneapi/compiler/latest/linux/lib/x64/libintelocl.so:/opt/intel/inteloneapi/compiler/latest/linux/lib/x64/libintelocl.so'
ENV ONEAPI_ROOT='/opt/intel/inteloneapi'
ENV PATH='/opt/intel/inteloneapi/vtune/2021.1-beta07/bin64:/opt/intel/inteloneapi/mpi/2021.1-beta07//libfabric/bin:/opt/intel/inteloneapi/mpi/2021.1-beta07//bin:/opt/intel/inteloneapi/mkl/2021.1-beta07/bin/intel64:/opt/intel/inteloneapi/intelpython/latest/bin:/opt/intel/inteloneapi/intelpython/latest/condabin:/opt/intel/inteloneapi/dev-utilities/2021.1-beta07/bin:/opt/intel/inteloneapi/compiler/latest/linux/bin/intel64:/opt/intel/inteloneapi/compiler/latest/linux/bin:/opt/intel/inteloneapi/compiler/latest/linux/ioc/bin:/opt/intel/inteloneapi/advisor/2021.1-beta07/bin64:/opt/intel/inteloneapi/vtune/2021.1-beta07/bin64:/opt/intel/inteloneapi/mpi/2021.1-beta07/libfabric/bin:/opt/intel/inteloneapi/mpi/2021.1-beta07/bin:/opt/intel/inteloneapi/mkl/2021.1-beta07/bin/intel64:/opt/intel/inteloneapi/intelpython/latest/bin:/opt/intel/inteloneapi/intelpython/latest/condabin:/opt/intel/inteloneapi/dev-utilities/2021.1-beta07/bin:/opt/intel/inteloneapi/debugger/10.0-beta07/gdb/intel64/bin:/opt/intel/inteloneapi/compiler/2021.1-beta07/linux/lib/oclfpga/bin:/opt/intel/inteloneapi/compiler/latest/linux/bin/intel64:/opt/intel/inteloneapi/compiler/latest/linux/bin:/opt/intel/inteloneapi/compiler/latest/linux/ioc/bin:/opt/intel/inteloneapi/advisor/2021.1-beta07/bin64:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin'
ENV PKG_CONFIG_PATH='/opt/intel/inteloneapi/vtune/2021.1-beta07/include/pkgconfig/lib64:/opt/intel/inteloneapi/mkl/2021.1-beta07/tools/pkgconfig:/opt/intel/inteloneapi/advisor/2021.1-beta07/include/pkgconfig/lib64:/opt/intel/inteloneapi/vtune/2021.1-beta07/include/pkgconfig/lib64:/opt/intel/inteloneapi/mkl/2021.1-beta07/tools/pkgconfig:/opt/intel/inteloneapi/advisor/2021.1-beta07/include/pkgconfig/lib64:'
ENV PYTHONPATH='/opt/intel/inteloneapi/vpl/latest/bindings/python:/opt/intel/inteloneapi/advisor/2021.1-beta07/pythonapi:/opt/intel/inteloneapi/vpl/latest/bindings/python:/opt/intel/inteloneapi/advisor/2021.1-beta07/pythonapi'
ENV SETVARS_COMPLETED='1'
ENV TBBROOT='/opt/intel/inteloneapi/tbb/2021.1-beta07/env/..'
ENV VPLINCLUDE='/opt/intel/inteloneapi/vpl/latest/include'
ENV VPLLIB='/opt/intel/inteloneapi/vpl/latest/lib'
ENV VPLPYTHONPATH='/opt/intel/inteloneapi/vpl/latest/bindings/python'
ENV VPL_DIR='/opt/intel/inteloneapi/vpl/latest'
ENV VPL_EXTENSIONS_PATH='/opt/intel/inteloneapi/vpl/latest/lib'
ENV VTUNE_PROFILER_2021_DIR='/opt/intel/inteloneapi/vtune/2021.1-beta07'
ENV _CE_CONDA=''
ENV _CE_M=''
