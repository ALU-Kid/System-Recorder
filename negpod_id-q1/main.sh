#!/bin/bash
#creating student records
echo "Enter student email:"
read studEmail

echo "Enter student age:"
read studAge

echo "Enter student Id:"
read studId

echo "$studEmail,$studAge,$studId" >> students-list_1023.txt
#View all students saved in the file and list them on the terminal
cat students-list_1023.txt

#delete students records using student id
echo "Enter student id:"
read delete

#update students records using student id
echo "Enter student id:"
read update

#exit the application
exit
