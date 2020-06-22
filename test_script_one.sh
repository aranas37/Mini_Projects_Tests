#! /bin/bash

#MY_SHELL="Shell Scripting"
#HOST="google.com"
#
#ping -c 1 $HOST
#
#if [ $? -ne "1" ]
#then 
#    echo "$HOST reachable."
#else
#    echo "$HOST unreachable"
#fi


for WORD in man bear pig
do
    echo "WORD: $WORD"
done


#FUNCTIONS BELOW

#function hello() {
#    echo "Hello!"
#}

function hello() {
    echo "Hello!"
    now
}
function now(){
    echo "It's $(date)"
}
hello

#First function simply outputs "Hello!", 
#Second function outputs "Hello!" and date
#Second function now() is READ into first function hello() but not executed


#FUNCTION #3 BELOW
function hello() { 
    echo "Hello!"
    now
}
hello
function now() {
    echo "It's $(date)"
}

#Above will fail, for hello() has been executed before declaration of 
#now() could be read/interpreted

#Conclusion: Functions are NOT Pre-compiled // Commands are read from top to bottom - First in/First out type ?



#FUNCTION #4 

function hello() {
    for NAME in $@
    do
        echo "Hello $NAME it's $(date)"
    done
}
hello Jason Dan Ryan

#Above Outputs All names and Date/timestamp in separate lines

#FUNCTION $5

#function GlobalCheck(){
#    GLOBAL_VAR=1
#    DuoCheck
#}
##echo $GLOBAL_VAR
#function DuoCheck(){
#    echo "Hello"
#}
#echo $GLOBAL_VAR

#function my_function(){
#    GLOBAL_VAR=1
#}
#echo $GLOBAL_VAR
#function my_function(){
#    GLOBAL_VAR=1
#}
#echo 


#EXERCISE #1 - Count how many files are in current directory
#function filecount() {
#    find . -type f | wc -l
#}
#storeCount=$(filecount)
#echo $storeCount
#echo "Hello, there are $storeCount files in this directory"

#SUMMARY: I returned the count of number of files in directory
#then stored the return value in a variable $storeCount pushed into #statement. 

#for i in "$@"
#do 
#    echo The current file is ${i}
#done

#function filecount() {
#    find . -type f | wc -l
#}
#storeCount=$(filecount)

#read -p "Enter your name: " name
#echo "Hi, $name. Let us be friends (: "

#read -p "Enter number one : " n1


# display back 3 numbers - punched by user. 
#echo "Number1 - $n1"

read -p "Enter the directory you wish to check: " dir
echo "checking - $dir"


function filecount() {
    test=$dir
    find . -type f | wc -l
}
storeCount=$(filecount)
echo $storeCount
echo "Hello, there are $storeCount files in this directory"

