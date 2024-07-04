vcpkg_from_github(
	OUT_SOURCE_PATH SOURCE_PATH
	REPO webispy/aln
	REF v0.1.0
	SHA512 5727316847c18ac42c7a683f0b6d3ec5d97bdc372c2732d259206589684d95b4108ec956eab29470dc567d96af650758f0805ae790a5b50b20c27344728db6dd
	HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_install()
vcpkg_copy_pdbs()
vcpkg_fixup_pkgconfig()

vcpkg_copy_tools(TOOL_NAMES aln AUTO_CLEAN)

# Clean
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
