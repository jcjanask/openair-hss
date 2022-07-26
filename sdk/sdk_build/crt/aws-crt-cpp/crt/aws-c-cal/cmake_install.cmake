# Install script for directory: /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-cal/libaws-c-cal.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/cal" TYPE FILE FILES
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal/include/aws/cal/cal.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal/include/aws/cal/ecc.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal/include/aws/cal/exports.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal/include/aws/cal/hash.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal/include/aws/cal/hmac.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/aws-c-cal/cmake/static/aws-c-cal-targets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/aws-c-cal/cmake/static/aws-c-cal-targets.cmake"
         "/home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/Export/lib/aws-c-cal/cmake/static/aws-c-cal-targets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/aws-c-cal/cmake/static/aws-c-cal-targets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/aws-c-cal/cmake/static/aws-c-cal-targets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/aws-c-cal/cmake/static" TYPE FILE FILES "/home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/Export/lib/aws-c-cal/cmake/static/aws-c-cal-targets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/aws-c-cal/cmake/static" TYPE FILE FILES "/home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-cal/CMakeFiles/Export/lib/aws-c-cal/cmake/static/aws-c-cal-targets-debug.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/aws-c-cal/cmake" TYPE FILE FILES "/home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-cal/aws-c-cal-config.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/aws-c-cal/cmake/modules" TYPE FILE FILES "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-cal/cmake/modules/Findcrypto.cmake")
endif()

