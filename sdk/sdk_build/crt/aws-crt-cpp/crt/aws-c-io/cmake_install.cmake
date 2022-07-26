# Install script for directory: /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-io

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-io/libaws-c-io.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/io" TYPE FILE FILES
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-io/include/aws/io/channel.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-io/include/aws/io/channel_bootstrap.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-io/include/aws/io/event_loop.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-io/include/aws/io/exports.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-io/include/aws/io/file_utils.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-io/include/aws/io/host_resolver.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-io/include/aws/io/io.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-io/include/aws/io/logging.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-io/include/aws/io/message_pool.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-io/include/aws/io/pipe.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-io/include/aws/io/pkcs11.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-io/include/aws/io/retry_strategy.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-io/include/aws/io/shared_library.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-io/include/aws/io/socket.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-io/include/aws/io/socket_channel_handler.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-io/include/aws/io/statistics.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-io/include/aws/io/stream.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-io/include/aws/io/tls_channel_handler.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-io/include/aws/io/uri.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/testing" TYPE FILE FILES "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/crt/aws-c-io/include/aws/testing/io_testing_channel.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/aws-c-io/cmake/static/aws-c-io-targets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/aws-c-io/cmake/static/aws-c-io-targets.cmake"
         "/home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-io/CMakeFiles/Export/lib/aws-c-io/cmake/static/aws-c-io-targets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/aws-c-io/cmake/static/aws-c-io-targets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/aws-c-io/cmake/static/aws-c-io-targets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/aws-c-io/cmake/static" TYPE FILE FILES "/home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-io/CMakeFiles/Export/lib/aws-c-io/cmake/static/aws-c-io-targets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/aws-c-io/cmake/static" TYPE FILE FILES "/home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-io/CMakeFiles/Export/lib/aws-c-io/cmake/static/aws-c-io-targets-debug.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/aws-c-io/cmake" TYPE FILE FILES "/home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-io/aws-c-io-config.cmake")
endif()

