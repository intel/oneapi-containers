For pre-gold, manually build the runtime container because the bundled runtime package is not available.

After Gold, the build-image.sh script can be modified to add the runtime package.

```sh
# pre-gold manual build

os_flavor={ubuntu-18.04 | centos-8}
image='local/intel/oneapi:runtime-$os_flavor'

set -x
docker build \
    --force-rm \
    --disable-content-trust \
    --network=host \
    --build-arg http_proxy=${http_proxy-} \
    --build-arg https_proxy=${https_proxy-} \
    --tag "$image" \
    --file Dockerfile.$os_flavor \
    .
set +x

```
