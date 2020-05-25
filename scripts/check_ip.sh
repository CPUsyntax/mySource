#!/bin/sh
newip="$(curl -s ifconfig.me)"
testy="$(cat /home/cpu/myip)"
if [ $newip != $testy ]
then
        echo ${newip} > /home/cpu/myip
        sendemail -q -f cpusyntax@gmail.com -t cpusyntax@gmail.com -u "Subject: ${newip}" -m "WEB SERVER IP CHANGE" -s smtp.gmail.com:587 -o tls=yes -xu cpusyntax@gmail.com -xp tyJesus68
fi
