if [ -z "$LAMBDA_ROLE" ]
then
    echo "You must set LAMBDA_ROLE env var.  Exiting..."
    exit
fi
set -x
aws lambda create-function --function-name quarkus-spring-greeting-function --zip-file fileb://target/spring-lambda-demo-quarkus-1.0-SNAPSHOT-runner.jar --handler io.quarkus.amazon.lambda.runtime.QuarkusStreamHandler::handleRequest --runtime java8 --role $LAMBDA_ROLE
