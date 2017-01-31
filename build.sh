#!/bin/bash -e

BUILD_DIR=$(realpath `dirname -- $0`)
OPX_RUN=$(realpath $BUILD_DIR/../opx-build/scripts/opx_run)

cd $(realpath $BUILD_DIR/..)

$OPX_RUN /bin/bash -c 'cd /mnt/opx-onie-installer && sudo ./build_opx_rootfs.sh'

cd $BUILD_DIR

./build_onie_installer.sh opx-rootfs.tar.gz opx-onix-installer-x86_64.bin
