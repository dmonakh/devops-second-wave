#!/bin/bash

if gsutil ls gs://${BUCKET_NAME} >/dev/null 2>&1; then
    echo "===[ Bucket already exists ]==="
else
    echo "===[ Bucket doesn't exist. Creating... ]==="
    gsutil mb -l us-central1 -c Standard gs://${BUCKET_NAME}
fi
