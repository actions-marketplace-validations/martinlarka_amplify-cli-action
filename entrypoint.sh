#!/bin/sh -l

set -e

if [ -z "$AWS_ACCESS_KEY_ID" ] && [ -z "$AWS_SECRET_ACCESS_KEY" ] ; then
  echo "You must provide the action with both AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY environment variables in order to deploy"
  exit 1
fi

env=$1
echo $env

aws_config_file_path="$(pwd)/aws_config_file_path.json"
echo '{"accessKeyId":"'$AWS_ACCESS_KEY_ID'","secretAccessKey":"'$AWS_SECRET_ACCESS_KEY'","region":"'$AWS_REGION'"}' > $aws_config_file_path
echo '{"projectPath": "'"$(pwd)"'","defaultEditor":"code","envName":"'$env'"}' > ./amplify/.config/local-env-info.json
echo '{"'$env'":{"configLevel":"project","useProfile":false,"awsConfigFilePath":"'$aws_config_file_path'"}}' > ./amplify/.config/local-aws-info.json

amplify env checkout $env && amplify status
