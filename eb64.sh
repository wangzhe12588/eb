apt-get update
apt-get -q -y --force-yes install tightvncserver xterm jwm mercurial libasound2-dev libcurl4-openssl-dev libnotify-dev libxt-dev libiw-dev mesa-common-dev autoconf2.13 yasm libidl-dev screen unzip bzip2 nano
wget https://download-installer.cdn.mozilla.net/pub/firefox/releases/54.0.1/linux-x86_64/en-US/firefox-54.0.1.tar.bz2
wget -N --no-check-certificate https://raw.githubusercontent.com/wangzhe12588/eb/master/vncxstartup.txt
wget -N --no-check-certificate https://raw.githubusercontent.com/wangzhe12588/eb/master/vncserverinit.txt
tar xjf firefox-54.0.1.tar.bz2
mv firefox/ /usr/local/lib/
ln -s /usr/local/lib/firefox/firefox /usr/bin/firefox
vncserver
rm -f ~/.vnc/xstartup
mv vncxstartup.txt ~/.vnc/xstartup
chmod +x ~/.vnc/xstartup
mv vncserverinit.txt /etc/init.d/vncserver
chmod +x /etc/init.d/vncserver
update-rc.d vncserver defaults
