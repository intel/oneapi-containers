#!/bin/bash
# FPGA environment setup for oneAPI

# Check if we are on a supported OS
# We don't want to set up any FPGA environment variables in
# such cases because they can break non-FPGA targets as well
DISTRO=CentOS
DISTRO_STATUS=$?
RELEASE=8.1.1911
RELEASE_STATUS=$?
SUPPORTED_OS=0

if [ $DISTRO_STATUS == 0 ] && [ $RELEASE_STATUS == 0 ]; then
  if [ "$DISTRO" == "RedHatEnterpriseServer" ] || [ "$DISTRO" == "CentOS" ] && [[ $RELEASE =~ ^7.[0-9]+ ]]; then
    SUPPORTED_OS=1
  fi
  if [ "$DISTRO" == "Ubuntu" ] && [ "$RELEASE" == "18.04" ]; then
    SUPPORTED_OS=1
  fi
fi

# realpath is used in other oneAPI components but it is not available in RHEL6
# Using 'readlink -e' instead
SCRIPTDIR=$(readlink -e $(dirname "${BASH_SOURCE[0]}"))

if [ "${BASH_SOURCE[0]}" == "$0" ]; then
  echo "Proper usage: source fpgavars.sh"
  exit 1
fi

icdadd() {
  if [ -z $OCL_ICD_FILENAMES ]; then
    export OCL_ICD_FILENAMES="$1"
  else
    # For non-empty, only add if not already there
    if [[ ":$OCL_ICD_FILENAMES:" != *":$1:"* ]]; then
      export OCL_ICD_FILENAMES="$1:$OCL_ICD_FILENAMES"
    fi
  fi
}

if [ $SUPPORTED_OS -eq 1 ]; then
  icdadd "libalteracl.so"
  icdadd "libintelocl_emu.so"
  export ACL_BOARD_VENDOR_PATH=/opt/Intel/OpenCLFPGA/oneAPI/Boards
  source ${SCRIPTDIR}/init_opencl.sh > /dev/null

  #Configure the PAC system
  for BSP in intel_a10gx_pac intel_s10sx_pac; do
    if [ -f ${INTEL_FPGA_ROOT}/board/${BSP}/linux64/libexec/pac_bsp_init.sh  ]; then
      ${INTEL_FPGA_ROOT}/board/${BSP}/linux64/libexec/pac_bsp_init.sh
    elif [ -f ${INTELFPGAOCLSDKROOT}/board/${BSP}/linux64/libexec/pac_bsp_init.sh ]; then
      ${INTELFPGAOCLSDKROOT}/board/${BSP}/linux64/libexec/pac_bsp_init.sh
    fi
  done
fi
