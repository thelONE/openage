# Copyright 2014-2014 the openage authors. See copying.md for legal info.

function(init_assets)
	set(GLOBAL_ASSET_DIR "${CMAKE_SOURCE_DIR}/assets")
	set(INSTALLED_GLOBAL_ASSET_DIR "${CMAKE_INSTALL_PREFIX}/share/openage")

	install(DIRECTORY "${GLOBAL_ASSET_DIR}/"
		DESTINATION "${INSTALLED_GLOBAL_ASSET_DIR}"
		PATTERN .gitignore EXCLUDE)

	set(GLOBAL_ASSET_DIR "${GLOBAL_ASSET_DIR}" PARENT_SCOPE)
	set(INSTALLED_GLOBAL_ASSET_DIR "${INSTALLED_GLOBAL_ASSET_DIR}" PARENT_SCOPE)
endfunction()

init_assets()
