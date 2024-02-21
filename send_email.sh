# Note: Please read the README.md file before executing this script.

#!/bin/bash

# Replace with your Gmail credentials
GMAIL_USERNAME="your_email@gmail.com"
GMAIL_PASSWORD="your_app_password"

# Email details
TO="recipient@example.com"
SUBJECT="Subject of the email"
BODY="Body of the email"

# Configure ssmtp
echo "root=$GMAIL_USERNAME" > /etc/ssmtp/ssmtp.conf
echo "mailhub=smtp.gmail.com:587" >> /etc/ssmtp/ssmtp.conf
echo "AuthUser=$GMAIL_USERNAME" >> /etc/ssmtp/ssmtp.conf
echo "AuthPass=$GMAIL_PASSWORD" >> /etc/ssmtp/ssmtp.conf
echo "UseSTARTTLS=YES" >> /etc/ssmtp/ssmtp.conf

# Compose email
echo "To: $TO" > /tmp/email.txt
echo "Subject: $SUBJECT" >> /tmp/email.txt
echo "" >> /tmp/email.txt
echo "$BODY" >> /tmp/email.txt

# Send email
ssmtp "$TO" < /tmp/email.txt

# Clean up
rm /tmp/email.txt
