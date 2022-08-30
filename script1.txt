# Objective: Demonstrate your ability to create a software management script. 
# Create a Bash script that will automatically update the server weekly, every Friday at 11pm. 
# After the script runs, a file should be generated with the date appended to the file name and inside the file should be what was updated.
# Script should run without a user interacting with it. The script should have comments. The script should also have a heading. The script should have limited errors

#!/bin/bash

#function that will automatically update the server weekly, every Friday at 11pm.
function update_server() {
    #update the server
    echo "Updating the server"
    #create a file with the date appended to the file name and inside the file should be what was updated
    filename="$(date +%Y-%m-%d)"
    # echo "Creating file $filename"
    touch $filename
    #update the ubuntu server
    (apt-get update -y) >> "$filename"
    #update the ubuntu server
    (apt-get upgrade -y) >> "$filename"
    #update the ubuntu server
    (apt-get dist-upgrade -y) >> "$filename"  
}

update_server

#crontab Bash script that will automatically update the server weekly, every Friday at 11pm.
# 0 11 * * 5 script.sh
