
#!/bin/bash
#author Oliver
#since 2020-09-03 15:24:31
 

git remote rm origin
#replace your git location
git remote add origin git@gitee.com:Soundantony/RandomShareCode.git
git pull remote master
git add .
git commit -m $1
git push origin master --force
 
if [ "$?" = "0" ]
then
   echo -e "\033[42;34m push to gitee success! \033[0m"
else
   ech -e  "\033[41;30m push to gitee fail! \033[0m"
   exit 1