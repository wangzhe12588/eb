cat <<- EOF >> /root/vncrestart.sh
#!/bin/sh
export DISPLAY=localhost:1.0
cd /root
rm -rf ~/.vnc/*.log /tmp/plugtmp* > /dev/null 2>&1
killall firefox  > /dev/null 2>&1
killall java > /dev/null 2>&1
/usr/bin/firefox -new-tab http://www.ebesucher.com/surfbar/username  > /dev/null 2>&1 &
/usr/bin/java -jar /root/restarter.jar > /dev/null 2>&1 &
EOF
