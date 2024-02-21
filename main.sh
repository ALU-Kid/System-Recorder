#!/bin/bash
#creating student records

create_student_record() {
echo "Enter student email:"
read studEmail

echo "Enter student age:"
read studAge

echo "Enter student Id:"
read studId

echo "$studEmail,$studAge,$studId" >> students-list_1023.txt
}

view_student_records() {
#View all students saved in the file and list them on the terminal
cat students-list_1023.txt

}

delete_student_record() {
#delete students records using student id
echo "Enter student id:"
read delete

#Remove the line that has the ID
sed -i "/$delete/d" students-list_1023.txt
}

update_student_record() {
#update students records using student id
echo "Enter student id:"
read update

sed -i "s/^$update[^,]*/$update,$newEmail,$newAge/" students-list_1023.txt

}

#Main menu
while true; do
    echo "1. Create student record"
    echo "2. View all students"
    echo "3. Delete student record"
    echo "4. Update student record"
    echo "5. Exit"
    read -p "Enter your choice: " choice
    case $choice in
        1) create_student_record;;
        2) view_student_records;;
        3) delete_student_record;;
        4) update_student_record;;
        5) echo "Exiting..."; exit;;
        *) echo "Invalid choice. Please enter a number between 1 and 5.";;
    esac

#exit the application
done
