if [ -z "$LAMBDA_ROLE" ]
then
    echo "You must set LAMBDA_ROLE env var.  Exiting..."
    exit
fi
aws lambda create-function --function-name greeting-native-function --zip-file fileb://target/function.zip --handler any.name.not.used --runtime provided --role $LAMBDA_ROLE --environment Variables="{DISABLE_SIGNAL_HANDLERS=true}"
