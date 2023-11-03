#! /bin/bash

echo -e "User Name: choi hyeonseok\nStudent Number : 12222097\n[ MENU ]\n1. Get the data of the movie identified by a specific 'movie id' from 'u.item'\n2. Get the data of action genre movies from 'u.item'\n3. Get the average 'rating of the movie identified by specific 'movie id' from 'u.data'\n4. Delete the 'IMDb URL' from 'u.item'\n5. Get the data about users from 'u.user'\n6. Modify the format of 'release data' in 'u.item'\n7. Get the data of movies rated by a specific 'user id' from 'u.data'\n8. Get the average 'rating' of movies rated by users with 'age' between 20 and 29 'occupation' as 'programmer'\n9. Exit\n----------------------------------"

while 
do  
read -p "Enter your choice [1-9] " choice
        echo
        if [$choice='1']
	then
		read -p "Please enter 'movie id'(1~1682):" mid
		cat u.item |awk -F'|' -v mid="$mid" '{ if($1 == mid) {print}}'
         if [$choice='2']
		then 
                read -p "Do you want to get the data of 'action' genre movies from 'u.item'?(y/n):" ans_01 
                if [$ans_01="y"]
                then 
                cat u.item | awk -F'|'$7==1[print $1,$2]'|sort -n|head -n 10
                fi
         fi
         if [$choice='3'] 
            then
            read -p "Please enter the 'movie id'(1~1682):" mid_1
            cat u.data|awk -v 'movie id'=$mid_1 '$2=='movie id' {sum+=$3; count+=1}END {print "average rating of","$mid_1",":",  sum/count}' 
            fi
         if [$input='4']
         then 
             read -p "Do you want to delete the 'IMDb URL' from 'u.item'?(y/n):" ans_02
             if[$ans_02="y"]
             then           
             cat u.item | sed "s/http.*)//g"|sed -n "1,10p"
             fi
         if [$input='5']
            then
            read -p "Do you want to get the data about users from ‘u.user’?(y/n):" ans_03
            if[$ans_03="y"]
            then
            cat u.user|sed -E 's/([
            
         if [$input='6']
            then
            read -p "Do you want to Modify the format of ‘release data’ in ‘u.item’?(y/n):" ans_04
         if [$input='7']
            then
            read -p "Please enter the ‘user id’(1~943):" ans_05
         if [$input='8']
            then
            read -p "Do you want to get the average 'rating' of movies rated by users with 'age' between 20 and 29 and 'occupation' as'programmer'?(y/n):" ans_06 
            if [$ans_06="y"]
            then 
         if[$choice='9']
         then 
                echo "BYE"
         fi
fi 
          done
