#!/bin/bash 

set sendmail="/usr/bin/msmtp"

export SMTP_USERNAME="leeyj7141@naver.com"
export NAVER_ID="leeyj7141"

#echo "메일 본문" | mutt -d 5 -s "제목" -a attachment.txt -- leeyj7141@gmail.com

echo "Test" | msmtp -v leeyj7141@gmail.com
