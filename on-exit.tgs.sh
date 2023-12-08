#!/bin/bash

DIRTY=0

while read -r
do
    DIRTY=1
done

if [ ${DIRTY} -eq 1 ]
then
    cd ~/.task || { echo "Error: Failed to change directory to ~/.task"; exit 1; }

    if git status | grep -q "\.data"; then
        TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
        git commit -m "Task Update at ${TIMESTAMP}" ./*.data || { echo "Error: Commit failed"; exit 1; }
        git pull -q || { echo "Error: Pull failed"; exit 1; }
        git push -q || { echo "Error: Push failed"; exit 1; }
    else
        echo "No changes to commit."
    fi
fi

echo "Operation completed. Parameter: ${1}"
