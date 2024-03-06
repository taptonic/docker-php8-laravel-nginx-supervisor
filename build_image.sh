#!/bin/sh
export $(grep -v '^#' .env | xargs)

echo  "Building image $version";
docker image build -t taptonic/php8-laravel-nginx:latest -t taptonic/php8-laravel-nginx:$version -t 804892009170.dkr.ecr.eu-central-1.amazonaws.com/taptonic/php8-laravel-nginx:latest .
docker push 804892009170.dkr.ecr.eu-central-1.amazonaws.com/taptonic/php8-laravel-nginx:latest
