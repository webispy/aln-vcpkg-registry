vcpkg_from_github(
	OUT_SOURCE_PATH SOURCE_PATH
	REPO webispy/aln
	REF v0.1.1
	SHA512 7057c389d79387fd70a66866a0a43a8a8eedafc2d6409c44883d0137e0c665f4fe1706d950e07ff56f3f482bd589b7f9d0d30570201dbfb4a2115d3e8ec8e96e
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
