# Install script for directory: /home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libaws-cpp-sdk-core.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libaws-cpp-sdk-core.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libaws-cpp-sdk-core.so"
         RPATH "$ORIGIN")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/ubuntu/sdk/sdk_build/aws-cpp-sdk-core/libaws-cpp-sdk-core.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libaws-cpp-sdk-core.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libaws-cpp-sdk-core.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libaws-cpp-sdk-core.so"
         OLD_RPATH ":::::::"
         NEW_RPATH "$ORIGIN")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libaws-cpp-sdk-core.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ubuntu/sdk/sdk_build/aws-cpp-sdk-core/aws-cpp-sdk-core.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/core" TYPE FILE FILES
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/AmazonSerializableWebServiceRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/AmazonStreamingWebServiceRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/AmazonWebServiceRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/AmazonWebServiceResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/Aws.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/Core_EXPORTS.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/Globals.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/NoResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/Region.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/SDKConfig.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/Version.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/VersionConfig.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/core/auth" TYPE FILE FILES
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/auth/AWSAuthSigner.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/auth/AWSAuthSignerProvider.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/auth/AWSCredentials.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/auth/AWSCredentialsProvider.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/auth/AWSCredentialsProviderChain.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/auth/SSOCredentialsProvider.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/auth/STSCredentialsProvider.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/core/auth/signer" TYPE FILE FILES
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/auth/signer/AWSAuthEventStreamV4Signer.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/auth/signer/AWSAuthSignerBase.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/auth/signer/AWSAuthSignerCommon.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/auth/signer/AWSAuthSignerHelper.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/auth/signer/AWSAuthV4Signer.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/auth/signer/AWSNullSigner.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/core/auth/signer-provider" TYPE FILE FILES
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/auth/signer-provider/AWSAuthSignerProviderBase.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/auth/signer-provider/DefaultAuthSignerProvider.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/core/client" TYPE FILE FILES
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/client/AWSClient.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/client/AWSError.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/client/AWSErrorMarshaller.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/client/AdaptiveRetryStrategy.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/client/AsyncCallerContext.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/client/ClientConfiguration.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/client/CoreErrors.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/client/DefaultRetryStrategy.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/client/RetryStrategy.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/client/SpecifiedRetryableErrorsRetryStrategy.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/core/internal" TYPE FILE FILES "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/internal/AWSHttpResourceClient.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/core/net" TYPE FILE FILES
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/net/Net.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/net/SimpleUDP.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/core/http" TYPE FILE FILES
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/http/HttpClient.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/http/HttpClientFactory.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/http/HttpRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/http/HttpResponse.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/http/HttpTypes.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/http/Scheme.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/http/URI.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/core/http/standard" TYPE FILE FILES
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/http/standard/StandardHttpRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/http/standard/StandardHttpResponse.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/core/config" TYPE FILE FILES
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/config/AWSConfigFileProfileConfigLoader.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/config/AWSProfileConfig.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/config/AWSProfileConfigLoader.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/config/AWSProfileConfigLoaderBase.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/config/ConfigAndCredentialsCacheManager.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/config/EC2InstanceProfileConfigLoader.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/core/config/defaults" TYPE FILE FILES "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/config/defaults/ClientConfigurationDefaults.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/core/monitoring" TYPE FILE FILES
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/monitoring/CoreMetrics.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/monitoring/DefaultMonitoring.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/monitoring/HttpClientMetrics.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/monitoring/MonitoringFactory.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/monitoring/MonitoringInterface.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/monitoring/MonitoringManager.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/core/platform" TYPE FILE FILES
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/platform/Android.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/platform/Environment.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/platform/FileSystem.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/platform/OSVersionInfo.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/platform/Platform.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/platform/Security.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/platform/Time.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/core/utils" TYPE FILE FILES
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/ARN.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/Array.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/Cache.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/ConcurrentCache.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/DNS.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/DateTime.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/Document.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/EnumParseOverflowContainer.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/FileSystemUtils.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/GetTheLights.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/HashingUtils.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/Outcome.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/ResourceManager.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/StringUtils.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/UUID.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/UnreferencedParam.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/core/utils/event" TYPE FILE FILES
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/event/EventDecoderStream.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/event/EventEncoderStream.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/event/EventHeader.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/event/EventMessage.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/event/EventStream.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/event/EventStreamBuf.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/event/EventStreamDecoder.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/event/EventStreamEncoder.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/event/EventStreamErrors.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/event/EventStreamHandler.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/core/utils/base64" TYPE FILE FILES "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/base64/Base64.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/core/utils/crypto" TYPE FILE FILES
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/crypto/CRC32.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/crypto/Cipher.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/crypto/ContentCryptoMaterial.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/crypto/ContentCryptoScheme.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/crypto/CryptoBuf.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/crypto/CryptoStream.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/crypto/EncryptionMaterials.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/crypto/Factories.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/crypto/HMAC.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/crypto/Hash.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/crypto/HashResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/crypto/KeyWrapAlgorithm.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/crypto/MD5.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/crypto/SecureRandom.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/crypto/Sha1.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/crypto/Sha256.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/crypto/Sha256HMAC.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/core/utils/json" TYPE FILE FILES "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/json/JsonSerializer.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/core/utils/xml" TYPE FILE FILES "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/xml/XmlSerializer.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/core/utils/logging" TYPE FILE FILES
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/logging/AWSLogging.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/logging/CRTLogSystem.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/logging/CRTLogging.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/logging/ConsoleLogSystem.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/logging/DefaultLogSystem.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/logging/FormattedLogSystem.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/logging/LogLevel.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/logging/LogMacros.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/logging/LogSystemInterface.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/logging/NullLogSystem.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/core/utils/memory" TYPE FILE FILES
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/memory/AWSMemory.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/memory/MemorySystemInterface.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/core/utils/memory/stl" TYPE FILE FILES
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/memory/stl/AWSAllocator.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/memory/stl/AWSDeque.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/memory/stl/AWSList.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/memory/stl/AWSMap.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/memory/stl/AWSMultiMap.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/memory/stl/AWSQueue.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/memory/stl/AWSSet.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/memory/stl/AWSStack.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/memory/stl/AWSStreamFwd.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/memory/stl/AWSString.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/memory/stl/AWSStringStream.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/memory/stl/AWSVector.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/memory/stl/SimpleStringStream.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/core/utils/ratelimiter" TYPE FILE FILES
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/ratelimiter/DefaultRateLimiter.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/ratelimiter/RateLimiterInterface.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/core/utils/stream" TYPE FILE FILES
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/stream/ConcurrentStreamBuf.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/stream/PreallocatedStreamBuf.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/stream/ResponseStream.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/stream/SimpleStreamBuf.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/core/utils/threading" TYPE FILE FILES
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/threading/Executor.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/threading/ReaderWriterLock.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/threading/Semaphore.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/threading/ThreadTask.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/core/external/cjson" TYPE FILE FILES "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/external/cjson/cJSON.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/core/external/tinyxml2" TYPE FILE FILES "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/external/tinyxml2/tinyxml2.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/core/http/curl" TYPE FILE FILES
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/http/curl/CurlHandleContainer.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/http/curl/CurlHttpClient.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/core/utils/crypto/openssl" TYPE FILE FILES "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-core/include/aws/core/utils/crypto/openssl/CryptoImpl.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/aws-cpp-sdk-core/aws-cpp-sdk-core-targets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/aws-cpp-sdk-core/aws-cpp-sdk-core-targets.cmake"
         "/home/ubuntu/sdk/sdk_build/aws-cpp-sdk-core/CMakeFiles/Export/lib/cmake/aws-cpp-sdk-core/aws-cpp-sdk-core-targets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/aws-cpp-sdk-core/aws-cpp-sdk-core-targets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/aws-cpp-sdk-core/aws-cpp-sdk-core-targets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/aws-cpp-sdk-core" TYPE FILE FILES "/home/ubuntu/sdk/sdk_build/aws-cpp-sdk-core/CMakeFiles/Export/lib/cmake/aws-cpp-sdk-core/aws-cpp-sdk-core-targets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/aws-cpp-sdk-core" TYPE FILE FILES "/home/ubuntu/sdk/sdk_build/aws-cpp-sdk-core/CMakeFiles/Export/lib/cmake/aws-cpp-sdk-core/aws-cpp-sdk-core-targets-debug.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/aws-cpp-sdk-core" TYPE FILE FILES
    "/home/ubuntu/sdk/sdk_build/aws-cpp-sdk-core/aws-cpp-sdk-core-config.cmake"
    "/home/ubuntu/sdk/sdk_build/aws-cpp-sdk-core/aws-cpp-sdk-core-config-version.cmake"
    )
endif()

