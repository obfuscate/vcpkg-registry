vcpkg_from_github(
	OUT_SOURCE_PATH SOURCE_PATH
	REPO ufbx/ufbx
	REF v0.17.1 # v0.17.1
	SHA512 c96d5bd947d66aaa2d88ae6ff69ba37cf9973e6f83e967eab0ab5442f2b941738755b2efc43ce7e20d5eb1ac8de9304612f58bb95e2ec8df76cbbe920340b1f0
	HEAD_REF master
)

vcpkg_cmake_configure(
	SOURCE_PATH "${SOURCE_PATH}/misc/cmake"
	WINDOWS_USE_MSBUILD
)

vcpkg_install_cmake()

vcpkg_fixup_cmake_targets()

file(
	INSTALL "${SOURCE_PATH}/LICENSE"
	DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
	RENAME copyright
)
