#!/bin/bash
DATE=$1
if [ -z "$DATE" ]; then
    echo "날짜 인자가 필요합니다."
    exit 1
fi

# 스크립트가 이미 github_image 폴더에서 실행되므로 별도 cd는 필요없으나 안전장치 추가
cd "$(dirname "$0")"

git add image/"$DATE"/total_image.png
git commit -m "Add daily image: $DATE"
git push
