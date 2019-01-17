#!/bin/bash -e

source regions.sh

for region in "${PHP71_REGIONS[@]}"; do
  bucket_name="mt-jhardy-lambda-${region}"

  echo "Creating bucket ${bucket_name}..."

  aws s3 mb s3://$bucket_name --region $region
done
