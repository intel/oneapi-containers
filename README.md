# Intel<sup>®</sup> oneAPI Containers

Intel<sup>®</sup> oneAPI products will deliver the tools needed to deploy applications and solutions across scalar, vector, matrix, and spatial (SVMS) architectures. Its set of complementary toolkits—a base kit and specialty add-ons—simplify programming and help developers improve efficiency and innovation. [oneAPI Details](https://software.intel.com/oneapi)

Containers allow you to set up and configure environments for profiling and distribute them using images:

* You can install an image containing an environment pre-configured with all the tools you need, then develop within that environment.
* You can save an environment and use the image to move that environment to another machine without additional setup.
* You can prepare containers with different sets of languages and runtimes, analysis tools, or other tools, as needed.
* You can use runtime containers to execute your applications built with oneAPI toolkits.

[oneAPI Containers Get Started Guide](https://www.intel.com/content/www/us/en/docs/oneapi-base-toolkit/get-started-guide-linux/2025-2/using-containers.html)

[oneAPI or oneAPI BaseKit Get Started Guide](https://www.intel.com/content/www/us/en/docs/oneapi-base-toolkit/get-started-guide-linux/current.html)

[oneAPI Toolkits Get Started](https://www.intel.com/content/www/us/en/developer/tools/oneapi/toolkits.html)

[oneAPI Docker Hub](https://hub.docker.com/r/intel/oneapi)

## License Agreement

By downloading and using this container and the included software, you agree to the terms and conditions of the [software license agreements](https://github.com/intel/oneapi-containers/tree/master/licensing).

# Intel<sup>®</sup> oneAPI Runtime Libraries

Get started running or deploying applications built with oneAPI toolkits.

```sh
image=intel/oneapi-runtime
docker pull "$image"
docker run --device=/dev/dri -it "$image"
```

* [Runtime Libraries Dockerfile](https://github.com/intel/oneapi-containers/blob/master/images/docker/runtime/)


# Intel<sup>®</sup> oneAPI Base Toolkit

Get started with this foundational kit that enables developers of all types to build, test, and deploy performance-driven, data-centric applications across diverse architectures. [Base Kit Details](https://software.intel.com/oneapi/base-kit)

```sh
image=intel/oneapi-basekit
docker pull "$image"
docker run --device=/dev/dri -it "$image"
```

* [oneAPI Base Toolkit Containers Get Started Guide](https://www.intel.com/content/www/us/en/docs/oneapi-base-toolkit/get-started-guide-linux/2025-2/using-containers.html)
* [Base Kit Dockerfile](https://github.com/intel/oneapi-containers/blob/master/images/docker/basekit/)

# Intel<sup>®</sup> oneAPI HPC Toolkit

Deliver fast C++, Fortran, OpenMP, and MPI applications that scale. [HPC Kit Details](https://software.intel.com/oneapi/hpc-kit)

```sh
image=intel/oneapi-hpckit
docker pull "$image"
docker run --device=/dev/dri -it "$image"
```

* [oneAPI HPC Toolkit Containers Get Started Guide](https://www.intel.com/content/www/us/en/docs/oneapi-hpc-toolkit/get-started-guide-linux/2025-2/using-containers.html)
* [HPC Kit Dockerfile](https://github.com/intel/oneapi-containers/blob/master/images/docker/hpckit/)

# Intel<sup>®</sup> VTune<sup>TM</sup> Profiler

Optimize application performance, system performance, and system configuration for AI, HPC, cloud, IoT, media, storage, and more. [Details](https://www.intel.com/content/www/us/en/developer/tools/oneapi/vtune-profiler.html)

```sh
image=intel/oneapi-vtune
docker pull "$image"
docker run --cap-add=SYS_ADMIN --cap-add=SYS_PTRACE --device=/dev/dri -it "$image"
```

* [VTune Profiler Dockerfile](https://github.com/intel/oneapi-containers/tree/master/images/docker/vtune/)

# Smaller Bundles for Specific Use Cases
## Intel<sup>®</sup> Deep Learning Essentials

Develop, compile, test, and optimize deep learning frameworks and libraries, such as PyTorch* and TensorFlow*, for Intel CPU and GPUs.

```sh
image=intel/deep-learning-essentials
docker pull "$image"
docker run --device=/dev/dri -it "$image"
```

* [Deep Learning Essentials Dockerfile](https://github.com/intel/oneapi-containers/tree/master/images/docker/deep-learning-essentials)

## Intel<sup>®</sup> C++ Essentials

Сompile, debug C++ and SYCL applications and use the most popular performance libraries from the Base Kit for Intel CPUs and GPUs.

```sh
image=intel/cpp-essentials
docker pull "$image"
docker run --device=/dev/dri -it "$image"
```

* [C++ Essentials Dockerfile](https://github.com/intel/oneapi-containers/tree/master/images/docker/cpp-essentials)

## Intel<sup>®</sup> Fortran Essentials

Сompile, debug Fortran applications and use the most popular performance libraries from the HPC Kit for Intel CPUs and GPUs.

```sh
image=intel/fortran-essentials
docker pull "$image"
docker run --device=/dev/dri -it "$image"
```

* [Fortran Essentials Dockerfile](https://github.com/intel/oneapi-containers/tree/master/images/docker/fortran-essentials)

# Using containers behind a proxy

If you are behind a proxy, you may need to add proxy settings with `docker run` commands: `-e http_proxy="$http_proxy" -e https_proxy="$https_proxy"`

For example:

```sh
docker run --device=/dev/dri -e http_proxy="$http_proxy" -e https_proxy="$https_proxy" -it "$image"
```

# Using Intel<sup>®</sup> Advisor and Intel<sup>®</sup> VTune<sup>TM</sup> Profiler within containers

When using these tools, extra capabilites have to be provided to the container: `--cap-add=SYS_ADMIN --cap-add=SYS_PTRACE`

```sh
docker run --cap-add=SYS_ADMIN --cap-add=SYS_PTRACE --device=/dev/dri -it "$image"
```

# Notices and Disclaimers

© Intel Corporation. Intel, the Intel logo, and other Intel marks are trademarks of Intel Corporation or its subsidiaries. Other names and brands may be claimed as the property of others.
