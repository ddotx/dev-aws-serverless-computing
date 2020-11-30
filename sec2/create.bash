#!/bin/bash
#export AWS_PROFILE=sls-admin

aws lambda create-function \
--function-name arn:aws:lambda:ap-northeast-1:524296608096:function:test-function \
--runtime nodejs12.x \
--role arn:aws:iam::524296608096:role/lambda-full \
--handler index.handler \
--zip-file fileb://test.zip