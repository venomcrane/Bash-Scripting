#!/bin/bash 

function ctrl_c (){
  echo -e "\n\n[+] Saliendo..."
  exit 1

}

trap ctrl_c INT

clear

echo " "
read -p "Introduce el primer numero: "  num1
read -p "Introduce el segundo numero: " num2

echo -e "\n[+] EL primero numero es $num1 y el segundo numero es $num2" 

if [ $num1 -lt $num2 ]; then 
  echo -e "[+] $num1 es menor que $num2"

elif [ $num1 -eq $num2 ]; then
 echo -e "[+] $num1 es igual que $num2"

elif [ $num1 -gt $num2 ]; then 
 echo -e "[+] $num1 es mayor que $num2"

elif [ $num1 -ne $num2 ]; then
 echo -e "[+] $num es diferente que $num2"


fi 

#Notas
#-lt: Menor que.
#-le: Menor o igual.
#-gt: Mayor que.
#-ge: Mayor o igual.
#-eq: Igual.
#-ne: Diferente.
