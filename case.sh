#!/bin/bash

# case $variable in
#     pattern1)
#         # commands for pattern1
#         ;;
#     pattern2)
#         # commands for pattern2
#         ;;
#     *)
#         # default case
#         ;;
# esac

# echo "1. Show today's date.\
#       2.List files in the current directory.\
#       3. Show the current user.\
#       4. Exit."

# read -p "Enter ur choise: " choise 

# case $choise in 

#     1) echo "Todays date is $(date)";;
#     2) ls ;;
#     3) whoami ;;
#     4) exit ;;
#     *) echo "Invalid input.";;

# esac





#!/bin/bash
#+%Y-%m-%d-%M:%S
until [[ "$option" =~ ^[1-4]$ ]]; do 

    DATE_DAY=$(date +%Y-%m-%d)
    DATE_TIME=$(date +%M:%S)

    read -p " 
What would you like to do?
1) Show todays Date
2) List the files in your current directory
3) Show the current user
4) Exit
    Your Choice: " option
    clear

    case $option in 
        "1") 
            echo ""
            echo "Todays date is: $DATE_DAY"
            echo "The time is: $DATE_TIME"
            echo "" 
            
            ;;
        "2")
            echo "The files in your current directory: $(ls -l)" 
            ;;
        "3")
            echo ""
            echo "You are \"$(whoami)"\"
            echo ""
            ;;
        "4")
            echo -e  "YOU CHOSE TO EXIT \n
    BYE"
            n=3
            sleep 1
            clear
            while [ $n -ge 0 ]; do 
                echo "EXIT IN $n "
                ((n--))
                sleep 0.5
                clear
            done
            ;;
        *)
            echo ""
            echo "INVALID SELECTION, PLEASE ENTER THE NUMBER CORRESPONDING WITH ONE THE NUMBER"
    esac
done