const amplifyconfig = ''' {
    "UserAgent": "aws-amplify-cli/2.0",
    "Version": "1.0",
    "auth": {
        "plugins": {
            "awsCognitoAuthPlugin": {
                "UserAgent": "aws-amplify-cli/0.1.0",
                "Version": "0.1.0",
                "IdentityManager": {
                    "Default": {}
                },
                "CredentialsProvider": {
                    "CognitoIdentity": {
                        "Default": {
                            "PoolId": "us-west-2:7b2c1a19-578d-4735-b650-3b3a801dbaa7",
                            "Region": "us-west-2"
                        }
                    }
                },
                "CognitoUserPool": {
                    "Default": {
                        "PoolId": "us-west-2_8OhRb2GEC",
                        "AppClientId": "7itp9e24mnmi988qam01v1jdch",
                        "AppClientSecret": "ee5co43vdsu5v42mqfd8sq304hngugujrfe6um4dh8vbre37jqm",
                        "Region": "us-west-2"
                    }
                },
                "Auth": {
                    "Default": {
                        "authenticationFlowType": "USER_SRP_AUTH"
                    }
                },
                "AppSync": {
                    "Default": {
                        "ApiUrl": "https://hd4kstwubfanngwfufdbxout44.appsync-api.us-west-2.amazonaws.com/graphql",
                        "Region": "us-west-2",
                        "AuthMode": "AMAZON_COGNITO_USER_POOLS",
                        "ClientDatabasePrefix": "fig2flutterv01_AMAZON_COGNITO_USER_POOLS"
                    },
                    "fig2flutterv01_AWS_IAM": {
                        "ApiUrl": "https://hd4kstwubfanngwfufdbxout44.appsync-api.us-west-2.amazonaws.com/graphql",
                        "Region": "us-west-2",
                        "AuthMode": "AWS_IAM",
                        "ClientDatabasePrefix": "fig2flutterv01_AWS_IAM"
                    }
                },
                "S3TransferUtility": {
                    "Default": {
                        "Bucket": "mbmcontent183207-dev",
                        "Region": "us-west-2"
                    }
                }
            }
        }
    },
    "api": {
        "plugins": {
            "awsAPIPlugin": {
                "fig2flutterv01": {
                    "endpointType": "GraphQL",
                    "endpoint": "https://hd4kstwubfanngwfufdbxout44.appsync-api.us-west-2.amazonaws.com/graphql",
                    "region": "us-west-2",
                    "authorizationType": "AMAZON_COGNITO_USER_POOLS"
                }
            }
        }
    },
    "storage": {
        "plugins": {
            "awsS3StoragePlugin": {
                "bucket": "mbmcontent183207-dev",
                "region": "us-west-2",
                "defaultAccessLevel": "guest"
            }
        }
    }
}''';