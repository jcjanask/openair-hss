﻿/**
 * Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0.
 */

#pragma once
#include <aws/dynamodb/DynamoDB_EXPORTS.h>
#include <aws/dynamodb/DynamoDBRequest.h>

namespace Aws
{
namespace DynamoDB
{
namespace Model
{

  /**
   * <p>Represents the input of a <code>DescribeLimits</code> operation. Has no
   * content.</p><p><h3>See Also:</h3>   <a
   * href="http://docs.aws.amazon.com/goto/WebAPI/dynamodb-2012-08-10/DescribeLimitsInput">AWS
   * API Reference</a></p>
   */
  class AWS_DYNAMODB_API DescribeLimitsRequest : public DynamoDBRequest
  {
  public:
    DescribeLimitsRequest();

    // Service request name is the Operation name which will send this request out,
    // each operation should has unique request name, so that we can get operation's name from this request.
    // Note: this is not true for response, multiple operations may have the same response name,
    // so we can not get operation's name from response.
    inline virtual const char* GetServiceRequestName() const override { return "DescribeLimits"; }

    Aws::String SerializePayload() const override;

    Aws::Http::HeaderValueCollection GetRequestSpecificHeaders() const override;

  };

} // namespace Model
} // namespace DynamoDB
} // namespace Aws
