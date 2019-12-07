if [ -z "$LAMBDA_ROLE" ]
then
    echo "You must set LAMBDA_ROLE env var.  Exiting..."
    exit
fi
aws lambda create-function --function-name greeting-function --zip-file fileb://target/lambda-demo-quarkus-1.0-SNAPSHOT-runner.jar --handler io.quarkus.amazon.lambda.runtime.QuarkusStreamHandler::handleRequest --runtime java8 --role $LAMBDA_ROLE
