import json

def lambda_handler(event, context):
    return dict(
        statusCode=200,
        body=json.dumps("Hello world!")
    )