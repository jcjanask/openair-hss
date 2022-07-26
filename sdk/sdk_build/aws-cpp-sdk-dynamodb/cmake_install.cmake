# Install script for directory: /home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libaws-cpp-sdk-dynamodb.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libaws-cpp-sdk-dynamodb.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libaws-cpp-sdk-dynamodb.so"
         RPATH "$ORIGIN")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/ubuntu/sdk/sdk_build/aws-cpp-sdk-dynamodb/libaws-cpp-sdk-dynamodb.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libaws-cpp-sdk-dynamodb.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libaws-cpp-sdk-dynamodb.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libaws-cpp-sdk-dynamodb.so"
         OLD_RPATH "/home/ubuntu/sdk/sdk_build/aws-cpp-sdk-core:"
         NEW_RPATH "$ORIGIN")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libaws-cpp-sdk-dynamodb.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ubuntu/sdk/sdk_build/aws-cpp-sdk-dynamodb/aws-cpp-sdk-dynamodb.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/dynamodb" TYPE FILE FILES
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/DynamoDBClient.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/DynamoDBEndpoint.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/DynamoDBErrorMarshaller.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/DynamoDBErrors.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/DynamoDBRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/DynamoDB_EXPORTS.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aws/dynamodb/model" TYPE FILE FILES
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ArchivalSummary.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/AttributeAction.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/AttributeDefinition.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/AttributeValue.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/AttributeValueUpdate.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/AttributeValueValue.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/AutoScalingPolicyDescription.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/AutoScalingPolicyUpdate.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/AutoScalingSettingsDescription.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/AutoScalingSettingsUpdate.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/AutoScalingTargetTrackingScalingPolicyConfigurationDescription.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/AutoScalingTargetTrackingScalingPolicyConfigurationUpdate.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/BackupDescription.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/BackupDetails.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/BackupStatus.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/BackupSummary.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/BackupType.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/BackupTypeFilter.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/BatchExecuteStatementRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/BatchExecuteStatementResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/BatchGetItemRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/BatchGetItemResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/BatchStatementError.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/BatchStatementErrorCodeEnum.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/BatchStatementRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/BatchStatementResponse.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/BatchWriteItemRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/BatchWriteItemResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/BillingMode.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/BillingModeSummary.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/CancellationReason.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/Capacity.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ComparisonOperator.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/Condition.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ConditionCheck.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ConditionalOperator.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ConsumedCapacity.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ContinuousBackupsDescription.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ContinuousBackupsStatus.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ContributorInsightsAction.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ContributorInsightsStatus.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ContributorInsightsSummary.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/CreateBackupRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/CreateBackupResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/CreateGlobalSecondaryIndexAction.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/CreateGlobalTableRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/CreateGlobalTableResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/CreateReplicaAction.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/CreateReplicationGroupMemberAction.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/CreateTableRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/CreateTableResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/Delete.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/DeleteBackupRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/DeleteBackupResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/DeleteGlobalSecondaryIndexAction.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/DeleteItemRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/DeleteItemResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/DeleteReplicaAction.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/DeleteReplicationGroupMemberAction.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/DeleteRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/DeleteTableRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/DeleteTableResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/DescribeBackupRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/DescribeBackupResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/DescribeContinuousBackupsRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/DescribeContinuousBackupsResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/DescribeContributorInsightsRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/DescribeContributorInsightsResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/DescribeEndpointsRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/DescribeEndpointsResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/DescribeExportRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/DescribeExportResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/DescribeGlobalTableRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/DescribeGlobalTableResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/DescribeGlobalTableSettingsRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/DescribeGlobalTableSettingsResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/DescribeKinesisStreamingDestinationRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/DescribeKinesisStreamingDestinationResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/DescribeLimitsRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/DescribeLimitsResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/DescribeTableReplicaAutoScalingRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/DescribeTableReplicaAutoScalingResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/DescribeTableRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/DescribeTableResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/DescribeTimeToLiveRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/DescribeTimeToLiveResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/DestinationStatus.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/DisableKinesisStreamingDestinationRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/DisableKinesisStreamingDestinationResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/EnableKinesisStreamingDestinationRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/EnableKinesisStreamingDestinationResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/Endpoint.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ExecuteStatementRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ExecuteStatementResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ExecuteTransactionRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ExecuteTransactionResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ExpectedAttributeValue.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ExportDescription.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ExportFormat.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ExportStatus.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ExportSummary.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ExportTableToPointInTimeRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ExportTableToPointInTimeResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/FailureException.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/Get.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/GetItemRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/GetItemResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/GlobalSecondaryIndex.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/GlobalSecondaryIndexAutoScalingUpdate.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/GlobalSecondaryIndexDescription.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/GlobalSecondaryIndexInfo.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/GlobalSecondaryIndexUpdate.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/GlobalTable.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/GlobalTableDescription.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/GlobalTableGlobalSecondaryIndexSettingsUpdate.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/GlobalTableStatus.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/IndexStatus.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ItemCollectionMetrics.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ItemResponse.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/KeySchemaElement.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/KeyType.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/KeysAndAttributes.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/KinesisDataStreamDestination.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ListBackupsRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ListBackupsResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ListContributorInsightsRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ListContributorInsightsResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ListExportsRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ListExportsResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ListGlobalTablesRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ListGlobalTablesResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ListTablesRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ListTablesResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ListTagsOfResourceRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ListTagsOfResourceResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/LocalSecondaryIndex.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/LocalSecondaryIndexDescription.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/LocalSecondaryIndexInfo.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ParameterizedStatement.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/PointInTimeRecoveryDescription.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/PointInTimeRecoverySpecification.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/PointInTimeRecoveryStatus.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/Projection.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ProjectionType.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ProvisionedThroughput.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ProvisionedThroughputDescription.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ProvisionedThroughputOverride.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/Put.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/PutItemRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/PutItemResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/PutRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/QueryRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/QueryResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/Replica.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ReplicaAutoScalingDescription.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ReplicaAutoScalingUpdate.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ReplicaDescription.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ReplicaGlobalSecondaryIndex.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ReplicaGlobalSecondaryIndexAutoScalingDescription.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ReplicaGlobalSecondaryIndexAutoScalingUpdate.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ReplicaGlobalSecondaryIndexDescription.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ReplicaGlobalSecondaryIndexSettingsDescription.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ReplicaGlobalSecondaryIndexSettingsUpdate.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ReplicaSettingsDescription.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ReplicaSettingsUpdate.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ReplicaStatus.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ReplicaUpdate.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ReplicationGroupUpdate.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/RestoreSummary.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/RestoreTableFromBackupRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/RestoreTableFromBackupResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/RestoreTableToPointInTimeRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/RestoreTableToPointInTimeResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ReturnConsumedCapacity.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ReturnItemCollectionMetrics.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ReturnValue.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ReturnValuesOnConditionCheckFailure.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/S3SseAlgorithm.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/SSEDescription.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/SSESpecification.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/SSEStatus.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/SSEType.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ScalarAttributeType.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ScanRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/ScanResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/Select.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/SourceTableDetails.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/SourceTableFeatureDetails.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/StreamSpecification.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/StreamViewType.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/TableAutoScalingDescription.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/TableClass.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/TableClassSummary.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/TableDescription.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/TableStatus.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/Tag.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/TagResourceRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/TimeToLiveDescription.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/TimeToLiveSpecification.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/TimeToLiveStatus.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/TransactGetItem.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/TransactGetItemsRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/TransactGetItemsResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/TransactWriteItem.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/TransactWriteItemsRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/TransactWriteItemsResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/TransactionCanceledException.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/UntagResourceRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/Update.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/UpdateContinuousBackupsRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/UpdateContinuousBackupsResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/UpdateContributorInsightsRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/UpdateContributorInsightsResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/UpdateGlobalSecondaryIndexAction.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/UpdateGlobalTableRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/UpdateGlobalTableResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/UpdateGlobalTableSettingsRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/UpdateGlobalTableSettingsResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/UpdateItemRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/UpdateItemResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/UpdateReplicationGroupMemberAction.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/UpdateTableReplicaAutoScalingRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/UpdateTableReplicaAutoScalingResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/UpdateTableRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/UpdateTableResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/UpdateTimeToLiveRequest.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/UpdateTimeToLiveResult.h"
    "/home/ubuntu/sdk/aws-sdk-cpp/aws-cpp-sdk-dynamodb/include/aws/dynamodb/model/WriteRequest.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/aws-cpp-sdk-dynamodb/aws-cpp-sdk-dynamodb-targets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/aws-cpp-sdk-dynamodb/aws-cpp-sdk-dynamodb-targets.cmake"
         "/home/ubuntu/sdk/sdk_build/aws-cpp-sdk-dynamodb/CMakeFiles/Export/lib/cmake/aws-cpp-sdk-dynamodb/aws-cpp-sdk-dynamodb-targets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/aws-cpp-sdk-dynamodb/aws-cpp-sdk-dynamodb-targets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/aws-cpp-sdk-dynamodb/aws-cpp-sdk-dynamodb-targets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/aws-cpp-sdk-dynamodb" TYPE FILE FILES "/home/ubuntu/sdk/sdk_build/aws-cpp-sdk-dynamodb/CMakeFiles/Export/lib/cmake/aws-cpp-sdk-dynamodb/aws-cpp-sdk-dynamodb-targets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/aws-cpp-sdk-dynamodb" TYPE FILE FILES "/home/ubuntu/sdk/sdk_build/aws-cpp-sdk-dynamodb/CMakeFiles/Export/lib/cmake/aws-cpp-sdk-dynamodb/aws-cpp-sdk-dynamodb-targets-debug.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/aws-cpp-sdk-dynamodb" TYPE FILE FILES
    "/home/ubuntu/sdk/sdk_build/aws-cpp-sdk-dynamodb/aws-cpp-sdk-dynamodb-config.cmake"
    "/home/ubuntu/sdk/sdk_build/aws-cpp-sdk-dynamodb/aws-cpp-sdk-dynamodb-config-version.cmake"
    )
endif()

