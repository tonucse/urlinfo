#!/bin/bash
input=$1
while IFS= read -r line;do
  echo -e "[+] Enumeration ---------> $line"
  echo  ""
  gron "https://urlscan.io/api/v1/search/?q=domain:$line" | grep "url" | gron --ungron | jq
  echo -e ""
  echo -e ""
done < "$input" >> $2
