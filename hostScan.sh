#!/bin/bash

function ctrl_c(){
  echo -e "\n\n[!] Saliendo...\n"
  exit 1
}

# Ctrl+C
trap ctrl_c INT

for i in $(seq 1 254); do
  timeout 1 bash -c "ping -c 1 <Laipaescanear>.$i &>/dev/null" && echo "[+] Host <Laipaescanear>.$i - ACTIVE" &
done; wait
