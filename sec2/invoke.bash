#!/bin/bash
aws lambda invoke \
--function-name test-function \
--cli-binary-format raw-in-base64-out \
--payload '{ "text": "Hello!" }' \
response.json