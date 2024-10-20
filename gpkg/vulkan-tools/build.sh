TERMUX_PKG_HOMEPAGE=https://github.com/KhronosGroup/Vulkan-Tools
TERMUX_PKG_DESCRIPTION="Vulkan Tools and Utilities"
TERMUX_PKG_LICENSE="custom"
TERMUX_PKG_LICENSE_FILE="LICENSE.txt"
TERMUX_PKG_MAINTAINER="@termux-pacman"
TERMUX_PKG_VERSION=1.3.299
TERMUX_PKG_SRCURL=https://github.com/KhronosGroup/Vulkan-Tools/archive/refs/tags/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=85f3cd64df1e7a1f06b2a660b5be55b1b2c66670100c2b28abb29436ba53e945
TERMUX_PKG_DEPENDS="gcc-libs-glibc, libx11-glibc, libxcb-glibc, libwayland-glibc, vulkan-icd-loader-glibc"
TERMUX_PKG_BUILD_DEPENDS="vulkan-headers-glibc, libwayland-protocols-glibc, vulkan-volk-glibc"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DBUILD_WSI_XCB_SUPPORT=ON
-DBUILD_WSI_XLIB_SUPPORT=ON
-DBUILD_WSI_WAYLAND_SUPPORT=ON
-DBUILD_CUBE=ON
-DBUILD_VULKANINFO=ON
-DBUILD_ICD=OFF
-DVULKAN_HEADERS_INSTALL_DIR=${TERMUX_PREFIX}
"
