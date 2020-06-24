#!/bin/bash

docker build -t ludwig-test .

docker run -it -v {full-path-to-app}:/app ludwig-test experiment --data_csv text-classification.csv --model_definition_file model_definition.yaml

docker run -d -p 8080:8080 -v {full-path-to-app}/results/experiment_run/model:/app ludwig-test serve -m /app