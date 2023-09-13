#!/bin/bash

#######################################################################
# CREATED BY: ANNIE V LAM
#
# DATE: 2023-09-13
#
# PURPOSE: To create a Systems Info Menu
#
#######################################################################

# Display Menu Option
echo "Sys Info Menu:"

echo "1. Currently logged users"
echo "2. Your shell directory"
echo "3. Home Directory"
echo "4. OS name & version"
echo "5. Current working directory"
echo "6. Number of users logged in"
echo "7. Hard disk information"
echo "8. CPU information"
echo "9. Memory information"
echo "10. File system information"
echo "11. Currently running process"
echo "12. Exit"

# Prompt for selection and save into variable

while true; do
        read -p "Choose your selection (1-12): " user_selection

        if [[ "$user_selection" -eq 1 ]]; then
                echo " "
                echo "Currently logged users: "
                w
                echo " "
        elif [[ "$user_selection" -eq 2 ]]; then
                echo " "
                echo "Your shell directory: "
                echo $SHELL
                echo " "
        elif [[ "$user_selection" -eq 3 ]]; then
                echo " "
                echo "Home Directory: "
                echo $HOME
                echo " "
        elif [[ "$user_selection" -eq 4 ]]; then
                echo " "
                echo "OS name & version: "
                echo "$(lsb_release -a)"
                echo " "
        elif [[ "$user_selection" -eq 5 ]]; then
                echo " "
                echo "Current working directory: "
                pwd
                echo " "
        elif [[ "$user_selection" -eq 6 ]]; then
                echo " "
                echo "Number of users logged in: "
                who | wc -l
                echo " "
        elif [[ "$user_selection" -eq 7 ]]; then
                echo " "
                echo "Hard disk information: "
                df
                echo " "
        elif [[ "$user_selection" -eq 8 ]]; then
                echo " "
                echo "CPU information: "
                cat /proc/cpuinfo
                echo " "
        elif [[ "$user_selection" -eq 9 ]]; then
                echo " "
                echo "Memory information: "
                cat /proc/meminfo
                echo " "
        elif [[ "$user_selection" -eq 10 ]]; then
                echo " "
                echo "File system information"
                df -T
                echo " "
        elif [[ "$user_selection" -eq 11 ]]; then
                echo " "
                echo "Currently running process"
                ps aux
                echo " "
        elif [[ "$user_selection" -eq 12 ]]; then
                echo " "
                echo "Exiting..."
                echo " "
                break  # Exit the loop when user selects 12
        else
                echo " "
                echo "Invalid selection. Please enter a number from 1 to 12."
                echo " "
        fi
done
exit 0
