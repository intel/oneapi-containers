# Intel<sup>®</sup> oneAPI Singularity Containers

Singularity containers are supported by Intel oneAPI.

# Note
**Note:** CentOS* 8 - based containers are deprecated and no longer supported. [Details](https://www.centos.org/centos-linux-eol/). <br />
You may still find the CentOS Dockerfile, but it is no longer being updated.

Here is an example to run the Mandelbrot sample in a Singularity container:

```sh
cd basekit-devel-ubuntu18.04

simg="intel-oneapi-basekit-devel-ubuntu18.04.simg"
sudo singularity build "$simg" Singularity
singularity shell "$simg"

oneapi-cli
# (1) Create a project
# (1) cpp
# select the Mandelbrot sample

cd mandelbrot
mkdir build
cd build
cmake ..
make
make run
```
