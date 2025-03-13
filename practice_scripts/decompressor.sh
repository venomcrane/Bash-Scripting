#!/bin/bash 

function ctrl_c(){
  echo -e "\n\n [+] Saliendo..."
  exit 1 

}

trap ctrl_c INT 


first_file=archivo 

decompressed_file_name="$(7z l archivo | tail -n 3 | head -n 1 | awk 'NF{print $NF}')"

7z x $first_file &>/dev/null 

while [ $decompressed_file_name ]; do 
 echo -e "\n[+] Nuevo archivo: $decompressed_file_name"
 7z x $decompressed_file_name &>/dev/null
 decompressed_file_name="$(7z l $decompressed_file_name 2>/dev/null | tail -n 3 | head -n 1 | awk 'NF{print $NF}')"

done
