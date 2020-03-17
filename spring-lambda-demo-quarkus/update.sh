set -x
aws lambda update-function-code --function-name quarkus-spring-greeting-function --zip-file fileb://target/spring-lambda-demo-quarkus-1.0-SNAPSHOT-runner.jar
