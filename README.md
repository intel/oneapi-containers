# Intel<sup>®</sup> oneAPI Toolkit Containers

Intel<sup>®</sup> oneAPI products will deliver the tools needed to deploy applications and solutions across scalar, vector, matrix, and spatial (SVMS) architectures. Its set of complementary toolkits—a base kit and specialty add-ons—simplify programming and help developers improve efficiency and innovation. [oneAPI Toolkit Details](https://software.intel.com/oneapi)

Containers allow you to set up and configure environments for profiling and distribute them using images:

* You can install an image containing an environment pre-configured with all the tools you need, then develop within that environment.
* You can save an environment and use the image to move that environment to another machine without additional setup.
* You can prepare containers with different sets of languages and runtimes, analysis tools, or other tools, as needed.

[oneAPI Containers Get Started Guide](https://software.intel.com/get-started-with-intel-oneapi-base-linux-using-containers)

[oneAPI Docker Hub](https://hub.docker.com/r/intel/oneapi)

Explore more container solutions on the [Intel<sup>®</sup> oneContainer Portal](https://software.intel.com/containers)

# License Agreement

By downloading and using this container and the included software, you agree to the terms and conditions of the [software license agreements](https://github.com/intel/oneapi-containers/tree/master/licensing).

# Intel<sup>®</sup> oneAPI Base Toolkit

Get started with this foundational kit that enables developers of all types to build, test, and deploy performance-driven, data-centric applications across CPUs, GPUs, and FPGAs. [Base Kit Details](https://software.intel.com/oneapi/base-kit)

```sh
image=intel/oneapi-basekit
docker pull "$image"
docker run --device=/dev/dri -it "$image"
```

* [oneAPI Base Toolkit Containers Get Started Guide](https://software.intel.com/get-started-with-intel-oneapi-base-linux-using-containers)
* [Base Kit Dockerfile](https://github.com/intel/oneapi-containers/blob/master/images/docker/basekit-devel-ubuntu18.04/Dockerfile)

# Intel<sup>®</sup> oneAPI HPC Toolkit

Deliver fast C++, Fortran, OpenMP, and MPI applications that scale. [HPC Kit Details](https://software.intel.com/oneapi/hpc-kit)

```sh
image=intel/oneapi-hpckit
docker pull "$image"
docker run --device=/dev/dri -it "$image"
```

* [oneAPI HPC Toolkit Containers Get Started Guide](https://software.intel.com/get-started-with-intel-oneapi-hpc-linux-using-containers)
* [HPC Kit Dockerfile](https://github.com/intel/oneapi-containers/blob/master/images/docker/hpckit-devel-ubuntu18.04/Dockerfile)

# Intel<sup>®</sup> oneAPI IoT Toolkit

Build high-performing, efficient, reliable solutions that run at the network’s edge. [IoT Kit Details](https://software.intel.com/oneapi/iot-kit)

```sh
image=intel/oneapi-iotkit
docker pull "$image"
docker run --device=/dev/dri -it "$image"
```

* [oneAPI IoT Toolkit Containers Get Started Guide](https://software.intel.com/get-started-with-intel-oneapi-iot-linux-using-containers)
* [IoT Kit Dockerfile](https://github.com/intel/oneapi-containers/blob/master/images/docker/iotkit-devel-ubuntu18.04/Dockerfile)

# Intel<sup>®</sup> oneAPI DL Framework Developer Toolkit

Build deep learning frameworks or customize existing ones. [DLFD Kit Details](https://software.intel.com/oneapi/dlfd-kit)

```sh
image=intel/oneapi-dlfdkit
docker pull "$image"
docker run --device=/dev/dri -it "$image"
```

* [oneAPI DL Framework Developer Toolkit Containers Get Started Guide](https://software.intel.com/get-started-with-intel-oneapi-dlfd-linux-using-containers)
* [DLFD Kit Dockerfile](https://github.com/intel/oneapi-containers/blob/master/images/docker/dlfdkit-devel-ubuntu18.04/Dockerfile)

# Intel<sup>®</sup> AI Analytics Toolkit

Speed AI development with tools for DL training, inference, and data analytics. [AI Kit Details](https://software.intel.com/oneapi/ai-kit)

```sh
image=intel/oneapi-aikit
docker pull "$image"
docker run --device=/dev/dri -it "$image"
```

* [Intel AI Analytics Containers Get Started Guide](https://software.intel.com/get-started-with-ai-linux-using-containers)
* [AI Kit Dockerfile](https://github.com/intel/oneapi-containers/blob/master/images/docker/aikit-devel-ubuntu18.04/Dockerfile)

# Using containers behind a proxy

If you are behind a proxy, you may need to add proxy settings with `docker run` commands: `-e http_proxy="$http_proxy" -e https_proxy="$https_proxy"`

For example:

```sh
docker run --device=/dev/dri -e http_proxy="$http_proxy" -e https_proxy="$https_proxy" -it "$image"
```

# Using Intel Advisor/Inspector/vTune with containers

When using these tools, extra capabilites have to be provided to the container: `--cap-add=SYS_ADMIN --cap-add=SYS_PTRACE`

```sh
docker run --cap-add=SYS_ADMIN --cap-add=SYS_PTRACE --device=/dev/dri -it "$image"
```
