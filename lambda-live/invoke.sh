aws lambda invoke --function-name greeting-function --payload file://payload.json out --log-type Tail --query 'LogResult' --output text |  base64 -d
