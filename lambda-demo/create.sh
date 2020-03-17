if [ -z "$LAMBDA_ROLE" ]
then
    echo "You must set LAMBDA_ROLE env var.  Exiting..."
    exit
fi
set -x
aws lambda create-function --function-name greeting-function --zip-file fileb://target/lambda-demo-1.0-SNAPSHOT.jar --handler org.demo.GreetingLambda::handleRequest --runtime java8 --role $LAMBDA_ROLE
