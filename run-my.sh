#!/bin/bash


echo "Running API from source..."
# Activate conda environment and run with uvicorn
docker compose up emqx postgres -d
# source "$(conda info --base)/etc/profile.d/conda.sh"
# conda activate hummingbot-api
uvicorn main:app --reload