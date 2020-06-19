# Copyright (c) 2019-2020 Intel Corporation.
# SPDX-License-Identifier: BSD-3-Clause

# requires oneapi-basekit image, assumes oneapi dnf/yum repo is configured
ARG base_image="intel/oneapi-basekit:devel-centos8"
FROM "$base_image"

# install Intel(R) oneAPI IoT Toolkit
RUN dnf install -y intel-iotkit-getting-started
RUN dnf install -y intel-oneapi-common-licensing
RUN dnf install -y intel-oneapi-common-vars
RUN dnf install -y intel-oneapi-condaindex
RUN dnf install -y intel-oneapi-dev-utilities
RUN dnf install -y intel-oneapi-icc
RUN dnf install -y intel-oneapi-inspector
RUN dnf install -y intel-oneapi-iot-eclipse-plugins

# setvars.sh environment variables
ENV ADVISOR_2021_DIR='/opt/intel/inteloneapi/advisor/2021.1-beta07'
ENV APM='/opt/intel/inteloneapi/advisor/2021.1-beta07/perfmodels'
ENV CCL_ATL_TRANSPORT_PATH='/opt/intel/inteloneapi/ccl/2021.1-beta07/lib/cpu_gpu_dpcpp'
ENV CCL_CONFIGURATION='cpu_gpu_dpcpp'
ENV CCL_ROOT='/opt/intel/inteloneapi/ccl/2021.1-beta07'
ENV CLASSPATH='/opt/intel/inteloneapi/mpi/2021.1-beta07//lib/mpi.jar:/opt/intel/inteloneapi/daal/latest/lib/daal.jar'
ENV CONDA_DEFAULT_ENV='base'
ENV CONDA_EXE='/opt/intel/inteloneapi/intelpython/latest/bin/conda'
ENV CONDA_PREFIX='/opt/intel/inteloneapi/intelpython/latest'
ENV CONDA_PROMPT_MODIFIER='(base) '
ENV CONDA_PYTHON_EXE='/opt/intel/inteloneapi/intelpython/latest/bin/python'
ENV CPATH='/opt/intel/inteloneapi/vpl/latest/include:/opt/intel/inteloneapi/tbb/2021.1-beta07/env/../include:/opt/intel/inteloneapi/oneDNN/2021.1-beta07/cpu_dpcpp_gpu_dpcpp/include:/opt/intel/inteloneapi/mpi/2021.1-beta07//include:/opt/intel/inteloneapi/mkl/2021.1-beta07/include:/opt/intel/inteloneapi/ipp/latest/include:/opt/intel/inteloneapi/dev-utilities/2021.1-beta07/include:/opt/intel/inteloneapi/daal/latest/include:/opt/intel/inteloneapi/compiler/latest/linux/include'
ENV DAALROOT='/opt/intel/inteloneapi/daal/latest'
ENV DNNLROOT='/opt/intel/inteloneapi/oneDNN/2021.1-beta07/cpu_dpcpp_gpu_dpcpp'
ENV DPCPP_ROOT='/opt/intel/inteloneapi'
ENV FI_PROVIDER_PATH='/opt/intel/inteloneapi/mpi/2021.1-beta07//libfabric/lib/prov'
ENV INFOPATH='/opt/intel/inteloneapi/debugger/10.0-beta07/documentation/info/'
ENV INSPECTOR_2021_DIR='/opt/intel/inteloneapi/inspector/2021.1-beta07'
ENV IPPROOT='/opt/intel/inteloneapi/ipp/latest'
ENV IPP_TARGET_ARCH='intel64'
ENV I_MPI_LIBRARY_KIND='release_mt'
ENV I_MPI_ROOT='/opt/intel/inteloneapi/mpi/2021.1-beta07'
ENV LANG='C.UTF-8'
ENV LD_LIBRARY_PATH='/opt/intel/inteloneapi/vpl/latest/lib:/opt/intel/inteloneapi/tbb/2021.1-beta07/env/../lib/intel64/gcc4.8:/opt/intel/inteloneapi/oneDNN/2021.1-beta07/cpu_dpcpp_gpu_dpcpp/lib:/opt/intel/inteloneapi/mpi/2021.1-beta07//libfabric/lib:/opt/intel/inteloneapi/mpi/2021.1-beta07//lib/release_mt:/opt/intel/inteloneapi/mpi/2021.1-beta07//lib:/opt/intel/inteloneapi/mpi/2021.1-beta07//lib/release:/opt/intel/inteloneapi/mpi/2021.1-beta07//lib:/opt/intel/inteloneapi/mkl/2021.1-beta07/lib/intel64:/opt/intel/inteloneapi/ipp/latest/lib/intel64:/opt/intel/inteloneapi/ipp/latest/../../compiler/latest/linux/compiler/lib/intel64:/opt/intel/inteloneapi/ipp/latest/../../tbb/latest/lib/intel64/gcc4.8:/opt/intel/inteloneapi/debugger/10.0-beta07/dep/lib:/opt/intel/inteloneapi/debugger/10.0-beta07/libipt/intel64/lib:/opt/intel/inteloneapi/debugger/10.0-beta07/gdb/intel64/lib:/opt/intel/inteloneapi/daal/latest/lib/intel64:/opt/intel/inteloneapi/compiler/latest/linux/lib:/opt/intel/inteloneapi/compiler/latest/linux/lib/x64:/opt/intel/inteloneapi/compiler/latest/linux/compiler/lib/intel64_lin:/opt/intel/inteloneapi/compiler/latest/linux/compiler/lib:/opt/intel/inteloneapi/ccl/2021.1-beta07/lib/cpu_gpu_dpcpp'
ENV LIBRARY_PATH='/opt/intel/inteloneapi/vpl/latest/lib:/opt/intel/inteloneapi/tbb/2021.1-beta07/env/../lib/intel64/gcc4.8:/opt/intel/inteloneapi/oneDNN/2021.1-beta07/cpu_dpcpp_gpu_dpcpp/lib:/opt/intel/inteloneapi/mpi/2021.1-beta07//libfabric/lib:/opt/intel/inteloneapi/mpi/2021.1-beta07//lib/release:/opt/intel/inteloneapi/mpi/2021.1-beta07//lib:/opt/intel/inteloneapi/mkl/2021.1-beta07/lib/intel64:/opt/intel/inteloneapi/ipp/latest/lib/intel64:/opt/intel/inteloneapi/ipp/latest/../../compiler/latest/linux/compiler/lib/intel64:/opt/intel/inteloneapi/ipp/latest/../../tbb/latest/lib/intel64/gcc4.8:/opt/intel/inteloneapi/daal/latest/lib/intel64:/opt/intel/inteloneapi/compiler/latest/linux/lib'
ENV LIBVA_DRIVERS_PATH='/opt/intel/inteloneapi/vpl/latest/lib'
ENV LIBVA_DRIVER_NAME='iHD'
ENV MANPATH=':/opt/intel/inteloneapi/debugger/10.0-beta07/documentation/man:::'
ENV MKLROOT='/opt/intel/inteloneapi/mkl/2021.1-beta07'
ENV NLSPATH='/opt/intel/inteloneapi/mkl/2021.1-beta07/lib/intel64/locale/%l_%t/%N'
ENV OCL_ICD_FILENAMES='/opt/intel/inteloneapi/compiler/latest/linux/lib/x64/libintelocl.so'
ENV ONEAPI_ROOT='/opt/intel/inteloneapi'
ENV PATH='/opt/intel/inteloneapi/vtune/2021.1-beta07/bin64:/opt/intel/inteloneapi/mpi/2021.1-beta07//libfabric/bin:/opt/intel/inteloneapi/mpi/2021.1-beta07//bin:/opt/intel/inteloneapi/mkl/2021.1-beta07/bin/intel64:/opt/intel/inteloneapi/intelpython/latest/bin:/opt/intel/inteloneapi/intelpython/latest/condabin:/opt/intel/inteloneapi/inspector/2021.1-beta07/bin64:/opt/intel/inteloneapi/dev-utilities/2021.1-beta07/bin:/opt/intel/inteloneapi/debugger/10.0-beta07/gdb/intel64/bin:/opt/intel/inteloneapi/compiler/latest/linux/bin/intel64:/opt/intel/inteloneapi/compiler/latest/linux/bin:/opt/intel/inteloneapi/compiler/latest/linux/ioc/bin:/opt/intel/inteloneapi/advisor/2021.1-beta07/bin64:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin'
ENV PKG_CONFIG_PATH='/opt/intel/inteloneapi/vtune/2021.1-beta07/include/pkgconfig/lib64:/opt/intel/inteloneapi/mkl/2021.1-beta07/tools/pkgconfig:/opt/intel/inteloneapi/inspector/2021.1-beta07/include/pkgconfig/lib64:/opt/intel/inteloneapi/advisor/2021.1-beta07/include/pkgconfig/lib64:'
ENV PYTHONPATH='/opt/intel/inteloneapi/vpl/latest/bindings/python:/opt/intel/inteloneapi/advisor/2021.1-beta07/pythonapi'
ENV SETVARS_COMPLETED='1'
ENV TBBROOT='/opt/intel/inteloneapi/tbb/2021.1-beta07/env/..'
ENV VPLINCLUDE='/opt/intel/inteloneapi/vpl/latest/include'
ENV VPLLIB='/opt/intel/inteloneapi/vpl/latest/lib'
ENV VPLPYTHONPATH='/opt/intel/inteloneapi/vpl/latest/bindings/python'
ENV VPL_DIR='/opt/intel/inteloneapi/vpl/latest'
ENV VPL_EXTENSIONS_PATH='/opt/intel/inteloneapi/vpl/latest/lib'
ENV VTUNE_PROFILER_2021_DIR='/opt/intel/inteloneapi/vtune/2021.1-beta07'
ENV WIND_LINUX_CONFIGURE='/opt/intel/inteloneapi/eclipse-iot-plugins/2021.1-beta07/YoctoProject/wrlinux-x/scripts/project-configure.sh'
ENV _CE_CONDA=''
ENV _CE_M=''
