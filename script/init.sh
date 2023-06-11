#!/usr/bin/env bash

# system definitions
export LANG="en_US.UTF-8"
export TERMUX_PREFIX="/data/data/com.termux/files/usr"
export GLIBC_PREFIX="${TERMUX_PREFIX}/glibc"
export GPKG_DEV_FLAGS="-pipe -fno-plt -fexceptions -Wp,-D_FORTIFY_SOURCE=2 -Wformat -Werror=format-security -fstack-clash-protection -L${GLIBC_PREFIX}/lib -I${GLIBC_PREFIX}/include -Wl,-rpath=${GLIBC_PREFIX}/lib"
export GPKG_DEV_CC=""
export GPKG_DEV_CXX=""
export GPKG_DEV_CARCH=""
export GPKG_DEV_TARGET=""
DIR_SOURCE="gpkg-dev"
DIR_BUILD="pkgs"
DIR_SCRIPT="script"
GPKG_DEV_USER_NAME="user-build"
GPKG_DEV_USER_HOME="/home/${GPKG_DEV_USER_NAME}"
GPKG_DEV_DIR_SOURCE="${GPKG_DEV_USER_HOME}/${DIR_SOURCE}"
GPKG_DEV_DIR_BUILD="${GPKG_DEV_USER_HOME}/${DIR_BUILD}"
GPKG_DEV_DIR_SCRIPT="${GPKG_DEV_USER_HOME}/${DIR_SCRIPT}"
GPKG_DEV_IMAGE="ghcr.io/termux-pacman/archlinux-builder"
GPKG_DEV_FILE_DELETING="deleted_gpkg-dev_packages.txt"
GPKG_DEV_SERVER_URL="https://s3.amazonaws.com/termux-pacman.us"
GPKG_DEV_REPO_JSON="/mnt/pkgs.json"
