echo
echo -e "\n"
echo -e "\t"
echo -e \e"[41,42m kalai \e[om"
echo -n
#redirecte
#< ip  >op 
echo <kalai.sh
cat /etc/passwd 1<out 2>err
#pipe
cat /etc/passwd | grep kalai >out
sudo apt get update | sudo apt install git
# error state 
0 - 255
 128 -n =error value 
 echo $?
#mail
mail -s kalai name of syatem@ip addresss
wall "type the message" 
# text editors 
# searching from line 
cat -n
wc -l
cat -n /etc/passwd | head -n 10
cat -n /etcpasswd | tail -n 10
cat -n /etc/passwd | head -n 100 | tail -n 20
# search from row based
#grep
 to search perticular file
 grep kalai.sh 
 to search multipile file 
 grep -e kalai.sh -e selvan.sh --colour=auto
##to search the word from the file 
 grep kalai /etc/passwd
 grep -e kalai -e root /etc/passwd 
 grep -E 'kalai|root' /etc/passwd
 grep -f search /etc/passwd 

 #to search the word in multiople file 
 grep root /etc/passwd
 grep root /etc/passwd /etc/group -h # this will show only the op
 grep root /etc/passwd /etc/group /etc/hosts -l # this is shoe which are files the root word
 grep ^root /etc/passwd ##this will show onlu lines start with root
 grep root$ /etc/passwd # this will show only lines end with boot
 grep root /passwd -v # this will show u the lines will not have the root
 cat passwd |grep -v # this eill remove the empty lines in the passwd file
   # cut command 
   #if we re cut are cut commnd tab space is delimited
   #ex
 echo -e "a\tb\tc\td\t" |cut -f1 #op === a
 echo -e "a\tb\tc\td\t" |cut -f3,4 #op === cd
 cat /etc/passwd |cut -h f1,3,4 -d : #we will give the custom delimted by using the -d command
 echo hellowrld |cut -c 1-5 # this will cut the particular word  -c command
  
  # xargs commands it will converting rows to coloum 
  echo -e "1\n2\n3" |xargs # this will cover coloumn into roes
  xargs -n1 # this will convert the rows into coloum
# AWK COMMAND  it consider multiple delimited as single demilimted
echo -e "a b   c\t\td" | awk '{print $1}'
free -m | grep mem | awk '{print $4}'
awk '/root/' {primt} passwd # it will print the root word in passwd file
awk -f : '/root' {print $1} etcpasswd

# # sed stearm editor  it is used to edit the single and mulitiple file also
 sed -e 'comm1' -e 'comm2' file # this will out output not editing
 sed -i -e 'comm1' file # ths will edit the file 
 sed -f 'sed command file ' 'file' # to create the file and put all command in the file anf give the file name
  
 p - print
 d -delte 
 s- substitute
 a- append
 i- insert
 c- change # option avalible in sed commnd

# to PRINT THE FILE  by using sed command
 ####### imporant notes ######

### sed -e ===this will edit only in op not in the file
###sed -e -i ===this will edit the data both op and file



 sed 'p' /etc/passwd  # this will print double line because its sed workspace and output stearm
 sed -n 'p' /etc/passwd # this will print single line
 sed -n '/kalai/ p' /etc/passwd
 sed -n -e '/kalai/ p' -e '/root/ p' /etc/passwd
 sed -n '2 p' /etc/passwd
 sed -n '1,4 p' /etc/passwd 
 sed -n '4,$ p' /etc/passwd # this will 4 to last line because $ denote the last file name
 ###REMBER####
 # ^ == this key denote the first word or line depends upon situation
 # $ === this is the key denotes on the last line or word depends upon situtation 
  sed -n '/root/,4 p' /etc/passwd # it will search for word root and then print line 4 from the root
  sed -n '/root/,/kalai/ p' /etc/passwd
  sed -n '/root/, +2 p' /etc/passwd
  # to delte the file sed command
sed -e -i '2 d' /etc/passwd # to delete the line 
 sed -e -i '1,4 d' /etc/passwd
 sed -e -i '/kalai/ d'/etc/etcpasswd
 sed -e -i  '/kalai/,4 d'/etc/passwd
 sed -e -i'/kalai/,/root/ d' /etc/passwd
 sed -e -i '/^$/ d' /etc/passwd
 # ^$  it will delete the empty line 
 sed -i -e '/^$/ d' /etc/passwd

 #substitute command
  sed -e -i 's/mannager/directeros/' /etc/passwd
  sed -e -i '/sales/s/manager/directors/' /etc/passwd # this will search for sales first and then manager and repace manager with directors
  sed -e -i '9 s /janson//' /etc/passwd
# EX
echo apple ant anmial |sed -e 's/a/A/' # it will apply condition for the first line
echo apple ant anmial |sed -e 's/a/A/g' # it will apply the condition for all the lines
sed -e 's/KALAI/kali/i' /etc/passwd # to insert the i case sensitive command
 # inserrt 
 sed -e '2 a sas' /etc/passwd # this a = append command will unsert the value in thrid line
 sed -e '2 i sas' /etc/passwd # this i =insert command will insert the lin e same 2 line 
# to configure config file
sed -e -i '/#kalai/ s/yes/no/' sed.txt

### VARABILES
# if you assign name to set of data then it is called as a varabile

# bash syntax: name=data
#E.x
    nooforanges=100 
    no of apples =5
# data
 single wcharacter (a,z A,Z 0,9)
 sigle caharcter
 single word
 single line 
 multiple lines

 # input is cosider as string

 my line ="today is a good day"
 a ="10"
 no data limitation
 #E,x
 name=data  && unset name
 echo $name
 today=istheebadday
 echo -e "how is the today\n$today"
 op 
 how is the today
 isthebadday

 # HOW TO INSERT THE MULTIPLE VARAIBLE VALUE
 student[0]=selvan
 student[1]=raju
 student[3]=kalai

 echo ${student[1]}
echo ${#students[@]} # to show the all the varaibles
echo ${students[*]} # this all name of the students 
 # to insert command in varaible (or ) COMMAND SUBSTUTION

date=$(date +%F)
install=$(sudo apt update)

#AIRTHMATIC SUBSTUTION





# FUNCTIONS 
if u assign name to set of command is called as function
 
 fname(){
        echo hai
        echo bye  
 }

command-name (options) (inputs)

1) binary files (/bin./sbin)
2) shell built in commands
3) functions
4) alias

properties of functions
rw
  readonly -f
local
  export -f
unset
  unset -f


# how to search the file 
 ls -l scprit*.sh
ls -l scprit*.sh |tail -n 1

kalaikris@kalaikris:~/Desktop$ create_scprit1() {
> i=$(ls scprit.sh |sed -e 's/scprit//' -e 's/.sh//')
> i=$(($i+1))
> echo '#!/bin/bash' >scprit$i.sh
> vi scprit$i.sh
> chmod 777 scprit$i.sh
> ./scprit$i.sh >kalai.txt
> cat kalai.txt
> }

#TO GETTING VALUE FROM THE USERS 
  
to getting the value from the user there are two types
special variables
getopics

special varaibles 
 BY USING READ COMMAND 

 #!/bin/bash
 echo "enter your name"
 read name
 echo "enter your location "
 read loc  

echo -e "your name =$name \nyour location =$loc"

## READ COMMAND IS CAPABLE OF READING THE VALUE USER GIVE
read: 
 read [-ers] [-a array] [-d delim] [-i text] [-n nchars] [-N nchars] 
 [-p prompt] [-t timeout] [-u fd] [name ...]
    Read a line from the standard input and split it into fields.
    
read -p print the message before reading without traleing the new line
read -s used for password it show in terminal what are values user to given
read -t to used timeout option 

#READ by using the special character
 shell is provide input to create_scprit1