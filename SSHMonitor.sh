#!/bin/bash
online=$(netstat -nt | awk '$4 ~ /:(443)$/ && $6 ~ /ESTABLISHED/ {print $5}' | cut -d: -f3 | sort | uniq -c)
echo -e "\E[44;1;37m              Conectados              \E[0m"; tput sgr0
echo ""
echo -e "\E[44;1;37mTotal:$online\E[0m"
echo ""
echo -e "\E[44;1;37m hora usuários \E[0m"
ps -aux | grep sshd | grep -v root | awk -F ' ' '{print $9, $12}' | sort -n
exit
done
