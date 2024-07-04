vcpkg_from_github(
	OUT_SOURCE_PATH SOURCE_PATH
	REPO webispy/aln
	REF v0.1.0
	SHA512 836e92dcb4cc15a7a709d525f135150097b3f9024c16962c33e98217681b45630c24ea5f45e6bf7f820a71a6862dd5f9e558c6ae62e3380340aedb0dd27f2fb5
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
