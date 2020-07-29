# Copyright (c) 2019-2020 Intel Corporation.
# SPDX-License-Identifier: BSD-3-Clause

# requires oneapi-basekit image, assumes oneapi dnf/yum repo is configured
ARG base_image="intel/oneapi-basekit:devel-centos8"
FROM "$base_image"

# install Intel(R) oneAPI IoT Toolkit
RUN dnf install -y \
intel-iotkit-getting-started \
intel-oneapi-common-licensing \
intel-oneapi-common-vars \
intel-oneapi-dev-utilities \
intel-oneapi-icc \
intel-oneapi-inspector \
intel-oneapi-iot-eclipse-plugins \
--

COPY fpgavars.sh /opt/intel/oneapi/compiler/latest/linux/lib/oclfpga/fpgavars.sh

# setvars.sh environment variables
ENV ADVISOR_2021_DIR='/opt/intel/oneapi/advisor/2021.1-beta08'
ENV APM='/opt/intel/oneapi/advisor/2021.1-beta08/perfmodels'
ENV CCL_ATL_TRANSPORT_PATH='/opt/intel/oneapi/ccl/2021.1-beta08/lib/cpu_gpu_dpcpp'
ENV CCL_CONFIGURATION='cpu_gpu_dpcpp'
ENV CCL_ROOT='/opt/intel/oneapi/ccl/2021.1-beta08'
ENV CLASSPATH='/opt/intel/oneapi/mpi/2021.1-beta08//lib/mpi.jar:/opt/intel/oneapi/daal/latest/lib/onedal.jar'
ENV CONDA_DEFAULT_ENV='base'
ENV CONDA_EXE='/opt/intel/oneapi/intelpython/latest/bin/conda'
ENV CONDA_PREFIX='/opt/intel/oneapi/intelpython/latest'
ENV CONDA_PROMPT_MODIFIER='(base) '
ENV CONDA_PYTHON_EXE='/opt/intel/oneapi/intelpython/latest/bin/python'
ENV CPATH='/opt/intel/oneapi/ipp/latest/include:/opt/intel/oneapi/compiler/latest/linux/include:/opt/intel/oneapi/ippcp/latest/include:/opt/intel/oneapi/mpi/2021.1-beta08//include:/opt/intel/oneapi/mkl/2021.1-beta08/include:/opt/intel/oneapi/daal/latest/include:/opt/intel/oneapi/dnnl/2021.1-beta08/cpu_dpcpp_gpu_dpcpp/include:/opt/intel/oneapi/dev-utilities/2021.1-beta08/include:/opt/intel/oneapi/tbb/2021.1-beta08/env/../include:/opt/intel/oneapi/vpl/latest/include:/opt/intel/oneapi/ccl/2021.1-beta08/include/cpu_gpu_dpcpp'
ENV DAALROOT='/opt/intel/oneapi/daal/latest'
ENV DNNLROOT='/opt/intel/oneapi/dnnl/2021.1-beta08/cpu_dpcpp_gpu_dpcpp'
ENV FI_PROVIDER_PATH='/opt/intel/oneapi/mpi/2021.1-beta08//libfabric/lib/prov'
ENV INFOPATH='/opt/intel/oneapi/debugger/10.0-beta08/documentation/info/'
ENV INSPECTOR_2021_DIR='/opt/intel/oneapi/inspector/2021.1-beta08'
ENV IPPCP_TARGET_ARCH='intel64'
ENV IPPCRYPTOROOT='/opt/intel/oneapi/ippcp/latest'
ENV IPPROOT='/opt/intel/oneapi/ipp/latest'
ENV IPP_TARGET_ARCH='intel64'
ENV I_MPI_LIBRARY_KIND='release_mt'
ENV I_MPI_ROOT='/opt/intel/oneapi/mpi/2021.1-beta08'
ENV LANG='C.UTF-8'
ENV LD_LIBRARY_PATH='/opt/intel/oneapi/ipp/latest/lib/intel64:/opt/intel/oneapi/compiler/latest/linux/lib:/opt/intel/oneapi/compiler/latest/linux/lib/x64:/opt/intel/oneapi/compiler/latest/linux/lib/emu:/opt/intel/oneapi/compiler/latest/linux/compiler/lib/intel64_lin:/opt/intel/oneapi/compiler/latest/linux/compiler/lib:/opt/intel/oneapi/ippcp/latest/lib/intel64:/opt/intel/oneapi/mpi/2021.1-beta08//libfabric/lib:/opt/intel/oneapi/mpi/2021.1-beta08//lib/release_mt:/opt/intel/oneapi/mpi/2021.1-beta08//lib:/opt/intel/oneapi/mpi/2021.1-beta08//lib/release:/opt/intel/oneapi/mpi/2021.1-beta08//lib:/opt/intel/oneapi/debugger/10.0-beta08/dep/lib:/opt/intel/oneapi/debugger/10.0-beta08/libipt/intel64/lib:/opt/intel/oneapi/debugger/10.0-beta08/gdb/intel64/lib:/opt/intel/oneapi/mkl/2021.1-beta08/lib/intel64:/opt/intel/oneapi/daal/latest/lib/intel64:/opt/intel/oneapi/dnnl/2021.1-beta08/cpu_dpcpp_gpu_dpcpp/lib:/opt/intel/oneapi/tbb/2021.1-beta08/env/../lib/intel64/gcc4.8:/opt/intel/oneapi/vpl/latest/lib:/opt/intel/oneapi/ccl/2021.1-beta08/lib/cpu_gpu_dpcpp'
ENV LIBRARY_PATH='/opt/intel/oneapi/ipp/latest/lib/intel64:/opt/intel/oneapi/compiler/latest/linux/lib:/opt/intel/oneapi/ippcp/latest/lib/intel64:/opt/intel/oneapi/mpi/2021.1-beta08//libfabric/lib:/opt/intel/oneapi/mpi/2021.1-beta08//lib/release:/opt/intel/oneapi/mpi/2021.1-beta08//lib:/opt/intel/oneapi/mkl/2021.1-beta08/lib/intel64:/opt/intel/oneapi/daal/latest/lib/intel64:/opt/intel/oneapi/dnnl/2021.1-beta08/cpu_dpcpp_gpu_dpcpp/lib:/opt/intel/oneapi/tbb/2021.1-beta08/env/../lib/intel64/gcc4.8:/opt/intel/oneapi/vpl/latest/lib:/opt/intel/oneapi/ccl/2021.1-beta08/lib/cpu_gpu_dpcpp'
ENV MANPATH=':/opt/intel/oneapi/debugger/10.0-beta08/documentation/man:::'
ENV MKLROOT='/opt/intel/oneapi/mkl/2021.1-beta08'
ENV NLSPATH='/opt/intel/oneapi/mkl/2021.1-beta08/lib/intel64/locale/%l_%t/%N'
ENV OCL_ICD_FILENAMES='/opt/intel/oneapi/compiler/latest/linux/lib/x64/libintelocl.so'
ENV ONEAPI_ROOT='/opt/intel/oneapi'
ENV PATH='/opt/intel/oneapi/inspector/2021.1-beta08/bin64:/opt/intel/oneapi/compiler/latest/linux/bin/intel64:/opt/intel/oneapi/compiler/latest/linux/bin:/opt/intel/oneapi/compiler/latest/linux/ioc/bin:/opt/intel/oneapi/intelpython/latest/bin:/opt/intel/oneapi/intelpython/latest/condabin:/opt/intel/oneapi/mpi/2021.1-beta08/libfabric/bin:/opt/intel/oneapi/mpi/2021.1-beta08/bin:/opt/intel/oneapi/vtune/2021.1-beta08/bin64:/opt/intel/oneapi/debugger/10.0-beta08/gdb/intel64/bin:/opt/intel/oneapi/mkl/2021.1-beta08/bin/intel64:/opt/intel/oneapi/dev-utilities/2021.1-beta08/bin:/opt/intel/oneapi/vpl/latest/bin:/opt/intel/oneapi/advisor/2021.1-beta08/bin64:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin'
ENV PKG_CONFIG_PATH='/opt/intel/oneapi/inspector/2021.1-beta08/include/pkgconfig/lib64:/opt/intel/oneapi/vtune/2021.1-beta08/include/pkgconfig/lib64:/opt/intel/oneapi/mkl/2021.1-beta08/tools/pkgconfig:/opt/intel/oneapi/advisor/2021.1-beta08/include/pkgconfig/lib64:'
ENV PYTHONPATH='/opt/intel/oneapi/advisor/2021.1-beta08/pythonapi'
ENV SETVARS_COMPLETED='1'
ENV TBBROOT='/opt/intel/oneapi/tbb/2021.1-beta08/env/..'
ENV VPL_BIN='/opt/intel/oneapi/vpl/latest/bin'
ENV VPL_INCLUDE='/opt/intel/oneapi/vpl/latest/include'
ENV VPL_LIB='/opt/intel/oneapi/vpl/latest/lib'
ENV VPL_ROOT='/opt/intel/oneapi/vpl/latest'
ENV VTUNE_PROFILER_2021_DIR='/opt/intel/oneapi/vtune/2021.1-beta08'
ENV WIND_LINUX_CONFIGURE='/opt/intel/oneapi/eclipse-iot-plugins/2021.1-beta08/YoctoProject/wrlinux-x/scripts/project-configure.sh'
ENV _CE_CONDA=''
ENV _CE_M=''
