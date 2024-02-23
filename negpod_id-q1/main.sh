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
    # Update students records using student id
    echo "Enter student id:"
    read update

    # ask for the new email and age
    echo "Enter new student email:"
    read newEmail

    echo "Enter new student age:"
    read newAge

    # Update the record in the file
    sed -i "s/^$update[^,]*/$update,$newEmail,$newAge/" students-list_1023.txt
}


# Main menu loop
while true; do
    echo "Main Menu:"
    echo "1. Create a new student record"
    echo "2. View all student records"
    echo "3. Delete a student record"
    echo "4. Update a student record"
    echo "5. Exit"

    read -p "Enter your choice (1-5): " choice

    case $choice in
        1) 
            create_student_record
            ;;
        2) 
            view_student_records
            ;;
        3) 
            delete_student_record
            ;;
        4) 
            update_student_record
            ;;
        5) 
            echo "Exiting..."
            exit
            ;;
        *)
            echo "Invalid choice. Please enter a number between 1 and 5."
            ;;
    esac
done
