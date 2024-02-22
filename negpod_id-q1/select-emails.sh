#!/bin/bash
#select just the emails and save them in "student-emails.txt"
# Export the email variable
export studEmail

# Echo the email variable and redirect the output to student-emails.txt
echo "$studEmail" > student-emails.txt

echo "Emails extracted and saved in student-emails.txt"
