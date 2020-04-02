set(CPACK_PACKAGE_NAME "lokinet")
set(CPACK_PACKAGE_VENDOR "lokinet.org")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "lokinet - onion router thingydoo")
set(CPACK_PACKAGE_VERSION_MAJOR "${LLARP_VERSION_MAJOR}")
set(CPACK_PACKAGE_VERSION_MINOR "${LLARP_VERSION_MINOR}")
set(CPACK_PACKAGE_VERSION_PATCH "${LLARP_VERSION_PATCH}")
set(CPACK_RESOURCE_FILE_LICENSE "${CMAKE_SOURCE_DIR}/LICENSE.txt")
set(CPACK_PACKAGE_INSTALL_DIRECTORY "lokinet")

if(WIN32)
  include(cmake/win32_installer_deps.cmake)
endif()

if(APPLE)
  include(cmake/macos_installer_deps.cmake)
endif()
  

# This must always be last!
include(CPack)
