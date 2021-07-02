For pre-gold, manually build the runtime container because the bundled runtime package is not available.

After Gold, the build-image.sh script can be modified to add the runtime package.

```sh
# pre-gold manual build

from_image_build_arg="--build-arg base_image=local/intel/oneapi:os-tools-centos8" 
image='local/intel/oneapi:runtime-centos8'

set -x
docker build \
    --force-rm \
    --disable-content-trust \
    --squash \
    --network=host \
    --build-arg http_proxy=${http_proxy-} \
    --build-arg https_proxy=${https_proxy-} \
    $from_image_build_arg \
    --tag "$image" \
    --file Dockerfile \
    .
set +x

```
