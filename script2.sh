#!/bin/bash
# Objective: Demonstrate your ability to create a script that will automatically check the server's processes and system performance. Created a Bash script that will: 
echo "please open some firefox tabs" #open some firefox tabs
read -p "press enter to continue" #press enter to continue
# 1. Check for system processes.
ps -Ao user,uid,comm,pid,pcpu,pmem --sort=-pcpu | head -n 10
# 2. Ask the user to terminate a process if the process exceeds a certain memory usage.
#3. You may use firefox (open some tabs) to test out your script
echo "Enter the process PID, you want to terminate"
read process
kill -9 $process

#if enter wrong pid then script exit with error
if [ $? -ne 0 ]; then
    echo "you enter mistakenly wrong pid number of process"
    exit 1
fi

echo "script finished"
