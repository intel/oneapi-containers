# Intel<sup><font size=2>®</font></sup> VTune™ Profiler

**Find and Fix Performance Bottlenecks Quickly and Realize All the Value of Your Hardware**

* Performance Analysis for Applications & Systems
Intel® VTune™ Profiler optimizes application performance, system performance, and system configuration for HPC, cloud, IoT, media, storage, and more.

- CPU, GPU, and FPGA: Tune the entire application’s performance―not just the accelerated portion. 
- Multilingual: Profile Data Parallel C++ (DPC++), C, C++, C#, Fortran, OpenCL™ code, Python*, Google Go* programming language, Java*, .NET, Assembly, or any combination of languages.
- System or Application: Get coarse-grained system data for an extended period or detailed results mapped to source code.
- Power: Optimize performance while avoiding power- and thermal-related throttling. 

# How to use this image

## VTune Profiler server

Docker container is a convenient way to deploy the VTune Profiler server as a shared or personal
service that enables rich capabilities for data collection, storage and analysis.

### Run VTune Profiler Server
```shell
docker run -it --rm --net host intel/oneapi-vtune vtune-backend
```
* `-it` allows stopping the container with `ctrl+C`.
* `--rm` deletes container once it is stopped.
* `--net host` runs VTune Profiler server on the host network.

### Access pre-collected VTune results on the host file system
```shell
docker run -it --rm --net host -v /path/to/vtune/results:/data \
    intel/oneapi-vtune vtune-backend --data-directory=/data
```
* `-v /path/to/vtune/results:/data` maps a folder with pre-collected VTune results on the host
  filesystem to the container's `/data` folder.
* `--data-directory=/data` tells VTune Profiler server to use `/data` folder for storing and
  accessing VTune results.

### Persist VTune results to the host file system
Use the same approach as described above to persist results collected by the VTune server to the
host file system.

### Enable remote access
```shell
docker run -it --rm --net host intel/oneapi-vtune vtune-backend --allow-remote-access
```
* `--allow-remote-access` enables remote access to VTune Profiler server, including access from
  collection agents deployed to remote target systems. By default, access to the VTune server is
  limited to the local system as the safest security default.

### Customize VTune server port number
```shell
docker run -it --rm --net host intel/oneapi-vtune vtune-backend --web-port=443
```
or:
```shell
docker run -it --rm -p 443:443 intel/oneapi-vtune vtune-backend --web-port=443
```
* `--web-port=443` tells the VTune server to run on the specified web port. By default, the
  VTune server starts on a random port available on the system.

## VTune command-line analysis

VTune command-line tool inside the VTune container could be used to perform data collection and
to provide command-line reports on the collected data. Data collection can be performed on the
processes running on the host system if you elevate VTune container privileges.

### Profile a specific process running on the host system
```shell
docker run -it --rm --cap-add CAP_PERFMON --pid host intel/oneapi-vtune \
    vtune -collect hotspots -knob sampling-mode=hw --target-process <process name>
```
* `-it` allows stopping the collection with `ctrl+C`; pressing `ctrl+C` after the collection is
  complete could be used to stop data processing and stopping the container.
* `--rm` deletes the container once it is stopped.
* `--cap-add CAP_PERFMON` enables HW-based VTune analysis; use `CAP_SYS_ADMIN` instead of
  `CAP_PERFMON` if it is not supported by your Linux kernel.
* `--pid host` tells the container to use the host's PID namespace; this enables attaching to a
  target process running on the host. You could also attach by a PID instead of a process name.
* `-collect hotspots` specifies the type of VTune analysis.

### Perform a system-wide analysis on the host system
```shell
docker run -it --rm --cap-add CAP_PERFMON intel/oneapi-vtune \
    vtune -collect hotspots -knob sampling-mode=hw --duration unlimited
```
* `-knob sampling-mode=hw` enables HW-based analysis; it's required as the system-wide analysis
  doesn't support SW-based Hotspots analysis.
* `--duration unlimited` is required since we do not provide a target application to launch or a
  target process to attach to - there will be no target process which lifetime would define the
  duration of the collection; this option effectively tells VTune to run the system-wide
  analysis.

### Launch a target application and profile it inside the VTune container
```shell
docker run -it --rm --cap-add CAP_PERFMON -v /base/path:/base/path intel/oneapi-vtune \
    vtune -collect hotspots /base/path/to/target/application
```
* `-v /base/path:/base/path` maps base folder with the target application to the same path
  inside the container. This way VTune inside the container could launch the target application.
  You might need to do additional tweaks to enable running the target application inside the
  VTune container. Alternatively consider running it on the host system and attaching to it with
  VTune or profiling the whole system while the application is running, see above.

### Persist VTune result on the host file system
```shell
docker run -it --rm --cap-add CAP_PERFMON -v /base/path:/base/path intel/oneapi-vtune \
    vtune -collect hotspots -knob sampling-mode=hw --duration unlimited \
    -result-dir /base/path/to/result
```
* `-result-dir /base/path/to/result` tells VTune command-line tool where to put the result.
  Since the root of this path is mapped to the host file system with `-v /base/path:/base/path`
  then the result is created on the host file system and is persisted beyond the lifetime of the
  container.

### Run a VTune command-line report on the collected result
```shell
docker run -it --rm -v /base/path:/base/path intel/oneapi-vtune \
    vtune -report hotspots -result-dir /base/path/to/result
```
* `-report hotspots` tells what report to run.
* `-result-dir /base/path/to/result` should match the result path that was used with the data
  collection command, see above.

# License Agreement

By downloading and using this container and the included software, you agree to the terms and conditions of the [software license agreements](https://github.com/intel/oneapi-containers/tree/master/licensing).
