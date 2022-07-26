# Install script for directory: /home/ubuntu/sdk/aws-sdk-cpp/testing-resources

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libtesting-resources.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libtesting-resources.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libtesting-resources.so"
         RPATH "$ORIGIN")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/ubuntu/sdk/sdk_build/testing-resources/libtesting-resources.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libtesting-resources.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libtesting-resources.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libtesting-resources.so"
         OLD_RPATH "/home/ubuntu/sdk/sdk_build/aws-cpp-sdk-core:"
         NEW_RPATH "$ORIGIN")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libtesting-resources.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ubuntu/sdk/sdk_build/testing-resources/testing-resources.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/testing" TYPE FILE FILES
    "/home/ubuntu/sdk/aws-sdk-cpp/testing-resources/include/aws/testing/MemoryTesting.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/testing-resources/include/aws/testing/ProxyConfig.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/testing-resources/include/aws/testing/TestingEnvironment.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/testing-resources/include/aws/testing/Testing_EXPORTS.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/external/gtest" TYPE FILE FILES
    "/home/ubuntu/sdk/aws-sdk-cpp/testing-resources/include/aws/external/gtest/gtest-assertion-result.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/testing-resources/include/aws/external/gtest/gtest-aws-helper.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/testing-resources/include/aws/external/gtest/gtest-death-test.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/testing-resources/include/aws/external/gtest/gtest-matchers.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/testing-resources/include/aws/external/gtest/gtest-message.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/testing-resources/include/aws/external/gtest/gtest-param-test.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/testing-resources/include/aws/external/gtest/gtest-printers.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/testing-resources/include/aws/external/gtest/gtest-spi.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/testing-resources/include/aws/external/gtest/gtest-test-part.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/testing-resources/include/aws/external/gtest/gtest-typed-test.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/testing-resources/include/aws/external/gtest/gtest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/testing-resources/include/aws/external/gtest/gtest_pred_impl.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/testing-resources/include/aws/external/gtest/gtest_prod.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/testing/platform" TYPE FILE FILES "/home/ubuntu/sdk/aws-sdk-cpp/testing-resources/include/aws/testing/platform/PlatformTesting.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/testing/mocks/aws/auth" TYPE FILE FILES "/home/ubuntu/sdk/aws-sdk-cpp/testing-resources/include/aws/testing/mocks/aws/auth/MockAWSHttpResourceClient.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/testing/mocks/aws/client" TYPE FILE FILES "/home/ubuntu/sdk/aws-sdk-cpp/testing-resources/include/aws/testing/mocks/aws/client/MockAWSClient.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/testing/mocks/event" TYPE FILE FILES
    "/home/ubuntu/sdk/aws-sdk-cpp/testing-resources/include/aws/testing/mocks/event/MockEventStreamDecoder.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/testing-resources/include/aws/testing/mocks/event/MockEventStreamHandler.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/testing/mocks/http" TYPE FILE FILES "/home/ubuntu/sdk/aws-sdk-cpp/testing-resources/include/aws/testing/mocks/http/MockHttpClient.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/testing/mocks/monitoring" TYPE FILE FILES "/home/ubuntu/sdk/aws-sdk-cpp/testing-resources/include/aws/testing/mocks/monitoring/TestingMonitoring.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/testing-resources/testing-resources-targets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/testing-resources/testing-resources-targets.cmake"
         "/home/ubuntu/sdk/sdk_build/testing-resources/CMakeFiles/Export/lib/cmake/testing-resources/testing-resources-targets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/testing-resources/testing-resources-targets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/testing-resources/testing-resources-targets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/testing-resources" TYPE FILE FILES "/home/ubuntu/sdk/sdk_build/testing-resources/CMakeFiles/Export/lib/cmake/testing-resources/testing-resources-targets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/testing-resources" TYPE FILE FILES "/home/ubuntu/sdk/sdk_build/testing-resources/CMakeFiles/Export/lib/cmake/testing-resources/testing-resources-targets-debug.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/testing-resources" TYPE FILE FILES
    "/home/ubuntu/sdk/sdk_build/testing-resources/testing-resources-config.cmake"
    "/home/ubuntu/sdk/sdk_build/testing-resources/testing-resources-config-version.cmake"
    )
endif()

