set -x
aws lambda update-function-code --function-name quarkus-spring-greeting-native-function --zip-file fileb://target/function.zip
