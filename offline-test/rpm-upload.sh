#!/bin/bash 


NEXUS_URL="https://13.124.169.248:8443"
REPO_NAME="yum"
USERNAME="admin"
PASSWORD='scoreA$z1234'

#https://13.124.169.248:8443/repository/yum/

file_path=/home/rocky/yjlee/rpms/tmux-2.7-3.el8.x86_64.rpm
file=tmux-2.7-3.el8.x86_64.rpm
repo=$REPO_NAME

#curl -k -v -u "$USERNAME:$PASSWORD" \
#     --upload-file "$file_path" \
#     "$NEXUS_URL/repository/$repo/$file)"

curl -k -v -u "$USERNAME:$PASSWORD" \
     --upload-file "$file_path" \
     https://13.124.169.248:8443/repository/yum/tmux-2.7-3.el8.x86_64.rpm

#curl -v --user 'admin:admin123' --upload-file ./test.rpm http://localhost:8081/repository/yum-hosted/test.rpm


##!/bin/bash
#
## Nexus Repository Manager URL
#NEXUS_URL="http://your-nexus-url:8081"
#REPO_NAME="your-repo-name"
#USERNAME="your-username"
#PASSWORD="your-password"
#
## 업로드할 RPM 패키지 파일 경로
#RPM_FILE_PATH="/path/to/your-package.rpm"
#
## Nexus에 RPM 패키지 업로드
#upload_rpm() {
#  local file_path="$1"
#  local repo="$2"
#
#  if [[ ! -f "$file_path" ]]; then
#    echo "File $file_path does not exist."
#    exit 1
#  fi
#
#  echo "Uploading $file_path to Nexus repository $repo..."
#
#  curl -u "$USERNAME:$PASSWORD" \
#       --upload-file "$file_path" \
#       "$NEXUS_URL/repository/$repo/$(basename "$file_path")"
#
#  if [[ $? -ne 0 ]]; then
#    echo "Failed to upload $file_path."
#    exit 1
#  else
#    echo "Successfully uploaded $file_path."
#  fi
#}
#
## 스크립트 실행
#upload_rpm "$RPM_FILE_PATH" "$REPO_NAME"
#
