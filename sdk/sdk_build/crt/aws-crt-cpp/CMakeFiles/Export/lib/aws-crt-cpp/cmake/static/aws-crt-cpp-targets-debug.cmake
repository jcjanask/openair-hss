#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "AWS::aws-crt-cpp" for configuration "Debug"
set_property(TARGET AWS::aws-crt-cpp APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(AWS::aws-crt-cpp PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libaws-crt-cpp.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS AWS::aws-crt-cpp )
list(APPEND _IMPORT_CHECK_FILES_FOR_AWS::aws-crt-cpp "${_IMPORT_PREFIX}/lib/libaws-crt-cpp.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
