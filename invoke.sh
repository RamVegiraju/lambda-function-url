curl  --request POST \
      --header 'Content-Type: application/json' \
      --data '{"input": "ram"}' \
      <Enter Lambda Function URL>


## If you want to orchestrate this all via the AWS CLI here is how you can create a Lambda function and function URL via shell

#Creating a Lambda function with zip-file
aws lambda create-function --function-name "lambda-function name" --role <<Insert Lambda Role ARN>> 
--runtime python3.9 --zip-file <<Zip file with code>> --handler <<File with handler func>>


#Adding a function URL to existing function
aws lambda create-function-url-config --function-name <<function name>> --auth-type NONE
