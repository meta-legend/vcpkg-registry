vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO meta-legend/network-ml-library
    REF "v${VERSION}"
    SHA512 82cd6833878c62afd9a1c9f4050285fee062adc5b7b08957c017093d73bb38c47f422f6fc1059a174f6733647973968245c2946f1f819c7390f49189b0ad2db7
    HEAD_REF main
)

vcpkg_cmake_configure(SOURCE_PATH "${SOURCE_PATH}")
vcpkg_cmake_install()
vcpkg_cmake_config_fixup(PACKAGE_NAME NetworkML CONFIG_PATH lib/cmake/NetworkML)

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
