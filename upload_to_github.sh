#!/bin/bash

# 변수 설정
FILE_PATH="$1"
COMMIT_MSG="$2"

if [ -z "$FILE_PATH" ]; then
  echo "Enter file path."
  exit 1
fi

if [ -z "$COMMIT_MSG" ]; then
  while true; do
    echo "Commit msg not found, proceed?(y or n)"
    read FLAG
    if [ "$FLAG" == "y" ]; then
      break
    elif [ "$FLAG" == "n" ]; then
      exit 0
    else
      echo "Invalid input. Please enter 'y' or 'n'."
    fi
  done
  COMMIT_MSG=""
fi

# Git을 사용하여 변경사항 추가, 커밋, 푸시
git add $FILE_PATH
git commit -m "$COMMIT_MSG"
git push

