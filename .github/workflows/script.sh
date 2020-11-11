#! /bin/bash
set -eux
ECR_ENDPOINT=436987280733.dkr.ecr.ap-southeast-1.amazonaws.com
PROJECT=consumer-bff
VERSION=$GITHUB_VERSION
DEPLOY_ENV=$DEPLOY_ENV
RELEASE_IMAGE=${ECR_ENDPOINT}/${PROJECT}:${VERSION}
AWS_ID=$(cat ./.github/workflows/env_mapping.json | jq .${DEPLOY_ENV})

echo $ECR_ENDPOINT
echo $PROJECT
echo $VERSION
echo $RELEASE_IMAGE
echo $DEPLOY_ENV
echo $AWS_ID
