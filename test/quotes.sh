#!/bin/bash

# single quotes 

# date="09/20/2025"
# echo 'Todays date : $date'
# echo "Todays date: $date"

# # Example 

# author="Beka Akylov"
# test="Someone once said: \"Hello World\" that someone is $author"
# echo "$test"

# # """ '''
# multiline="""Variable does not end here 
# it continues here 
# then here 
# and here 
# $test
# """
# echo $multiline

# echo ""
# echo "--Heredoc--"
# cat <<EOF > 
# This is a multi-line string.
# Hello form $date script.
# It can span several lines.
# EOF

# echo "this is a very long line that I want to \ 
#     break into multiply lines for realibility" && \
#     sleep 50 && \
#     clear