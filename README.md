### IAM
```json
{  "Version": "2012-10-17",  "Statement": [{    "Effect": "Allow",    "Action": [      "dynamodb:DescribeStream",      "dynamodb:GetRecords",      "dynamodb:GetShardIterator",      "dynamodb:ListStreams",      "logs:CreateLogGroup",      "logs:CreateLogStream",      "logs:PutLogEvents"    ],    "Resource": "*"  }]}
```

### Invoking Lambda Functions
- A push
- An event
- A stream-based model

```aws events put-rule --schedule-expression "cron(0 12 * * ? *)" --name MyLambdaSchedule```

```aws lambda invoke     --invocation-type RequestResponse     --function-name myFunction     --payload file://test-sqs-message-event.json```

```aws lambda invoke     --function-name hello-world-nodejs     --payload '{ "text": "Hello!" }'    output.file```

### Deploy

```zip -r new-function.zip handler.js node_modules```

```aws lambda create-function     --function-name hello-world-nodejs    --runtime nodejs8.10    --role arn:aws:iam::${AccountNumber}:role/lambda_basic_execution    --handler index.handler    --zip-file fileb://helloworld.zip```

## API Gateway
### Securing API
1. *API keys (x-api-key)*
2. IAM credential and Signature Version 4 (SigV4)
3. **Amazon Cognito**
4. Lambda Authorizers 

### Building, Deploying, Managing API

```aws apigateway create-deployment     --rest-api-id ${api-id}     --stage-name ${stage-name}     --description 'My first deployment'```

```aws apigateway update-stage     --rest-api-id ${api-id}     --stage-name ${stage-name}     --patch-operations op=replace,path=/canarySettings/percentTraffic,value=25.0```

