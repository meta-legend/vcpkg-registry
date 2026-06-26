vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO meta-legend/network-ml-library
    REF "v${VERSION}"
    SHA512 a1c7be129a3a9834c77e4dddd0abeaf6698d0da7ee51283ac38e10357652be8f115116fbbf49bb8c35b1c420eb973231a19ee61b413d745f3decc02fcb6e4b1e
    HEAD_REF main
)

vcpkg_cmake_configure(SOURCE_PATH "${SOURCE_PATH}")
vcpkg_cmake_install()
vcpkg_cmake_config_fixup(PACKAGE_NAME NetworkML CONFIG_PATH lib/cmake/NetworkML)

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
