#!/bin/bash 

#--url 'smtp://smtp.naver.com:587' \
#--url 'smtp://smtp.naver.com:465' \

#curl \
#--ssl-reqd \
#--url 'smtp://smtp.naver.com:587' \
#--user 'leeyj7141:...' \
#--mail-from leeyj7141@naver.com  \
#--mail-rcpt leeyj7141@gmail.com  \
#--upload-file - <<EOF
#From: User Name <leeyj7141@naver.com>
#To: John Doe <leeyj7141@gmail.com>
#Subject: You are awesome!
#Content-Type: text/plain; charset="utf-8"
#Content-Transfer-Encoding: quoted-printable
#Content-Disposition: inline
#
#Congrats for sending test email with Mailtrap on Linux!
#IMAP
#EOF


curl --ssl-reqd \
  --url 'smtp://smtp.naver.com:587' \
  --user 'leeyj7141:' \
  --mail-from 'leeyj7141@naver.com' \
  --mail-rcpt 'leeyj7141@gmail.com' \
  --upload-file email.txt

