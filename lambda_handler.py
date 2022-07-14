import json

def lambda_handler(event, context):
    print("Inside the lambda function--------------")
    res = event['body']
    return {
        'statusCode': 200,
        'body': res
    }