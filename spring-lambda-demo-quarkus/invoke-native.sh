set -x
aws lambda invoke --function-name quarkus-spring-greeting-native-function --payload file://payload.json out --log-type Tail --query 'LogResult' --output text |  base64 -d
