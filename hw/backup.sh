#!/bin/bash

# date=$(date +%Y-%m-%d)


# if [ -d $1 ]; then
#     cp -r $1 /tmp/$1_backup_$date
# else 
#     echo "It is not directory"
# fi
# ========

if [ -z "$1" ]; then
  echo "Please a directory."
  exit 
fi

cp -r $1 /tmp/backup_$current_user/

# Get the current date in YYYY-MM-DD format
current_date=$(date +%Y-%m-%d)

# Define the backup directory
backup_dir="/tmp/backup_$current_date"

# Create the backup directory
mkdir -p "$backup_dir"

# Copy the contents of the provided directory to the backup directory
cp -r $1/* $backup_dir

# Loop through the files in the provided directory and print "Backed up: <filename>"
for file in "$1"/*; do
  if [ -f "$file" ]; then
    echo "Backed up: $(basename "$file")"
  fi
done

echo "Backup completed successfully to $backup_dir."