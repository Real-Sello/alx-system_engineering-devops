# Command line for the win (*Optional Project*)
`Bash`
`Scripting`

## Background Context
[CMD CHALLENGE](https://cmdchallenge.com/) is a pretty cool game challenging you on Bash skills. Everything is done via the command line and the questions are becoming increasingly complicated. It’s a good training to improve your command line skills!

## Requirements
- General
    - A `README.md` file, at the root of the folder of the project, is mandatory
    - This project will be manually reviewed.
    - As each task is completed, the name of that task will turn green
    - Create a screenshot, showing that you completed the required levels
    - Push this screenshot with the right name to GitHub, in either the PNG or JPEG format

## More Info
### Manual QA Review
*It is your responsibility to request a review for this project from a peer. If no peers have been reviewed, you should request a review from a TA or staff member.*

## Challenges and My Solutions

---
[![](https://cmdchallenge.com/img/emojis/1F40C.png)]()
#### Challenge 1 : print "hello world"
> `echo "hello world" `

[![](https://cmdchallenge.com/img/emojis/1F98B.png)]()
#### Challenge 2 : Print the current working directory.
> `pwd`

[![](https://cmdchallenge.com/img/emojis/1F41B.png)]()
#### Challenge 3 : List names of all the files in the current directory, one file per line.
> `ls`

[![](https://cmdchallenge.com/img/emojis/1F41C.png)]()
#### Challenge 4 : There is a file named access.log in the current directory. Print the contents.
> `cat access.log`

[![](https://cmdchallenge.com/img/emojis/1F578.png)]()
#### Challenge 5 : Print the last 5 lines of "access.log".
> `cat access.log | tail -5`

[![](https://cmdchallenge.com/img/emojis/1F433.png)]()
#### Challenge 6 : Create an empty file named take-the-command-challenge in the current working directory.
> `touch take-the-command-challenge`

[![](https://cmdchallenge.com/img/emojis/1F40B.png)]()
#### Challenge 7 : Create a directory named tmp/files in the current working directory
Hint: The directory "tmp/" doesn't exist, with one command you need to create both "tmp/" and "tmp/files"
> `mkdir tmp ; cd tmp ; mkdir files `

[![](https://cmdchallenge.com/img/emojis/1F42C.png)]()
#### Challenge 8 : Copy the file named take-the-command-challenge to the directory tmp/files
> `cp take-the-command-challenge tmp/files`

[![](https://cmdchallenge.com/img/emojis/1F41F.png)]()
#### Challenge 9 : Move the file named take-the-command-challenge to the directory tmp/files
> `mv take-the-command-challenge tmp/files`

[![](https://cmdchallenge.com/img/emojis/1F420.png)]()
#### Challenge 10 : A symbolic link is a type of file that is a reference to another file.
Create a symbolic link named take-the-command-challenge that points to the file tmp/files/take-the-command-challenge.
>`ln -s tmp/files/take-the-command-challenge take-the-command-challenge`

[![](https://cmdchallenge.com/img/emojis/1F421.png)]()
#### Challenge 11 : Delete all of the files in this challenge directory including all subdirectories and their contents.
Hint: There are files and directories that start with a dot ".", "rm -rf *" won't work here!
>`rm -r * .*`

[![](https://cmdchallenge.com/img/emojis/1F43A.png)]()
#### Challenge 12 : There are files in this challenge with different file extensions. Remove all files with the .doc extension recursively in the current working directory.
> `rm **/*.doc`

[![](https://cmdchallenge.com/img/emojis/1F41D.png)]()
#### Challenge 13 : There is a file named access.log in the current working directory. Print all lines in this file that contains the string "GET".
> `cat access.log | grep -e "GET" `

[![](https://cmdchallenge.com/img/emojis/1F41E.png)]()
#### Challenge 14 : Print all files in the current directory, one per line (not the path, just the filename) that contain the string "500".
> `ls | grep -lR 500`

[![](https://cmdchallenge.com/img/emojis/1F997.png)]()
#### Challenge 15 : Print the relative file paths, one path per line for all filenames that start with "access.log" in the current directory.
> `ls -r access.log*`

[![](https://cmdchallenge.com/img/emojis/1F577.png)]()
#### Challenge 16 : Print all matching lines (without the filename or the file path) in all files under the current directory that start with "access.log" that contain the string "500".
Note that there are no files named access.log in the current directory, you will need to search recursively.
> `ls | grep -rh 500`

[![](https://cmdchallenge.com/img/emojis/1F982.png)]()
#### Challenge 17 : Extract all IP addresses from files that start with "access.log" printing one IP address per line.
> `grep -ro ^[0-9.]*`

[![](https://cmdchallenge.com/img/emojis/1FAB0.png)]()
#### Challenge 18 : Count the number of files in the current working directory. Print the number of files as a single integer.
> `find . -type f | wc --lines `

[![](https://cmdchallenge.com/img/emojis/1FAB1.png)]()
#### Challenge 19 : Print the contents of access.log sorted.
> `cat access.log | sort`

[![](https://cmdchallenge.com/img/emojis/1F9A0.png)]()
#### Challenge 20 : Print the number of lines in access.log that contain the string "GET".
> `cat access.log | grep -e "GET" | wc --lines `

[![](https://cmdchallenge.com/img/emojis/1F435.png)]()
#### Challenge 21 : The file split-me.txt contains a list of numbers separated by a ; character. Split the numbers on the ; character, one number per line.
> `cat split-me.txt | tr ";" "\n" `

[![](https://cmdchallenge.com/img/emojis/1F436.png)]()
#### Challenge 22 : Print the numbers 1 to 100 separated by spaces.
> `echo {1..100}`

[![](https://cmdchallenge.com/img/emojis/1F98A.png)]()
#### Challenge 23 : This challenge has text files (with a .txt extension) that contain the phrase "challenges are difficult". Delete this phrase from all text files recursively.
Note that some files are in subdirectories so you will need to search for them.
> `sed -i "challenges are difficult" **/*.txt `

[![](https://cmdchallenge.com/img/emojis/1F431.png)]()
#### Challenge 24 : The file sum-me.txt has a list of numbers, one per line. Print the sum of these numbers.
> `awk '{s=s+$1}END{print s}' sum-me.txt`

[![](https://cmdchallenge.com/img/emojis/1F981.png)]()
#### Challenge 25 : Print all files in the current directory recursively without the leading directory path.
> `find -type f -printf '%f\n'`

[![](https://cmdchallenge.com/img/emojis/1F42F.png)]()
#### Challenge 26 : Rename all files removing the extension from them in the current directory recursively.
> `mv * .*`

[![](https://cmdchallenge.com/img/emojis/1F434.png)]()
#### Challenge 27 : The files in this challenge contain spaces. List all of the files (filenames only) in the current directory but replace all spaces with a '.' character.
> `ls | sed 's/\ /\./g' `
