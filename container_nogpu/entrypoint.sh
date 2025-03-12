#! /bin/bash

cd /instructlab
source venv/bin/activate

/usr/local/bin/ilab model download --hf-token "$HUGGING_FACE_HUB_TOKEN"
/usr/local/bin/ilab model serve &

/usr/local/bin/ilab model chat

