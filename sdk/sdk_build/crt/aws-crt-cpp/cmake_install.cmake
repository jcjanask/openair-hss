# Install script for directory: /home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/crt" TYPE FILE FILES
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/include/aws/crt/Api.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/include/aws/crt/Config.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/include/aws/crt/DateTime.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/include/aws/crt/Exports.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/include/aws/crt/ImdsClient.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/include/aws/crt/JsonObject.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/include/aws/crt/Optional.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/include/aws/crt/StlAllocator.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/include/aws/crt/StringUtils.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/include/aws/crt/StringView.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/include/aws/crt/Types.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/include/aws/crt/UUID.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/crt/auth" TYPE FILE FILES
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/include/aws/crt/auth/Credentials.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/include/aws/crt/auth/Signing.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/include/aws/crt/auth/Sigv4Signing.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/crt/crypto" TYPE FILE FILES
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/include/aws/crt/crypto/HMAC.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/include/aws/crt/crypto/Hash.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/crt/io" TYPE FILE FILES
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/include/aws/crt/io/Bootstrap.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/include/aws/crt/io/ChannelHandler.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/include/aws/crt/io/EventLoopGroup.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/include/aws/crt/io/HostResolver.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/include/aws/crt/io/Pkcs11.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/include/aws/crt/io/SocketOptions.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/include/aws/crt/io/Stream.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/include/aws/crt/io/TlsOptions.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/include/aws/crt/io/Uri.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/iot" TYPE FILE FILES "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/include/aws/iot/MqttClient.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/crt/mqtt" TYPE FILE FILES "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/include/aws/crt/mqtt/MqttClient.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/crt/http" TYPE FILE FILES
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/include/aws/crt/http/HttpConnection.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/include/aws/crt/http/HttpConnectionManager.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/include/aws/crt/http/HttpProxyStrategy.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/crt/aws-crt-cpp/include/aws/crt/http/HttpRequestResponse.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/libaws-crt-cpp.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/aws-crt-cpp/cmake/static/aws-crt-cpp-targets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/aws-crt-cpp/cmake/static/aws-crt-cpp-targets.cmake"
         "/home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/CMakeFiles/Export/lib/aws-crt-cpp/cmake/static/aws-crt-cpp-targets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/aws-crt-cpp/cmake/static/aws-crt-cpp-targets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/aws-crt-cpp/cmake/static/aws-crt-cpp-targets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/aws-crt-cpp/cmake/static" TYPE FILE FILES "/home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/CMakeFiles/Export/lib/aws-crt-cpp/cmake/static/aws-crt-cpp-targets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/aws-crt-cpp/cmake/static" TYPE FILE FILES "/home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/CMakeFiles/Export/lib/aws-crt-cpp/cmake/static/aws-crt-cpp-targets-debug.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelopmentx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/aws-crt-cpp/cmake" TYPE FILE FILES "/home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/aws-crt-cpp-config.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-common/cmake_install.cmake")
  include("/home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/s2n/cmake_install.cmake")
  include("/home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-sdkutils/cmake_install.cmake")
  include("/home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-io/cmake_install.cmake")
  include("/home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-cal/cmake_install.cmake")
  include("/home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-compression/cmake_install.cmake")
  include("/home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-http/cmake_install.cmake")
  include("/home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-auth/cmake_install.cmake")
  include("/home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-mqtt/cmake_install.cmake")
  include("/home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-checksums/cmake_install.cmake")
  include("/home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-event-stream/cmake_install.cmake")
  include("/home/ubuntu/sdk/sdk_build/crt/aws-crt-cpp/crt/aws-c-s3/cmake_install.cmake")

endif()

