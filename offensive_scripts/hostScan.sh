#!/bin/bash 

function ctrl_c(){
  echo -e "\n\n[!] Saliendo...\n"
  exit 1
}


trap ctrl_c INT

for host in $(seq 1 254); do
  timeout 1 bash -c "ping -c 1 192.168.100.$host" &>/dev/null && echo "[+] 192.168.100.$host - ACTIVE" &
done; wait

