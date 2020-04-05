#!/bin/sh

download_path="https://raw.githubusercontent.com/tuliren/deep-learning/master/sentiment-network"

label_file="labels.txt"
if [ -f "${label_file}" ]
then
  echo "${label_file} already exists"
else
  echo "Downloading ${label_file}"
  wget -q ${download_path}/${label_file}
  echo "Downloaded ${label_file}"
fi

review_file="reviews.txt"
if [ -f "${review_file}" ]
then
  echo "${review_file} already exists"
else
  echo "Downloading ${review_file}"
  wget -q ${download_path}/${review_file}
  echo "Downloaded ${review_file}"
fi
