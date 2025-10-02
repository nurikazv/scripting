#!/bin/bash


# size=$(ls -lh $file | awk '{print $5}')

for file in /var/log/*; do  
    size=$(ls -lh $file | awk '{print $5}')

    if [[ $size =~ "B" ]]; then 
        echo "$file has only $size"
    else 
        echo "$file is large"
    fi
done

# # my_var="HELLOMAMBA"

# if [[ $my_var =~ "M" ]]; then 
#     echo "Mb file"
# else 
#     echo "Bite file"
# fi

ls -lh greeting.sh | awk '{print $5}'