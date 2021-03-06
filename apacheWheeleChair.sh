echo "welcome to ApacheWheelChair"
echo
echo "1) start          s) status       v) version"
echo "2) stop           ip) hostname    t) Syntax"
echo "3) reload         p) ports"
echo "4) restart"
echo
echo "x) exit"
echo "inst) install awc"

read INP
if [ $INP -eq 1 ]
then
  sudo systemctl start apache2
elif [ $INP -eq 2 ]
then
  sudo systemctl stop apache2
elif [ $INP -eq 3 ]
then
  sudo systemctl reload apache2
elif [ $INP -eq 4 ]
then
  sudo systemctl restart apache2
elif [ $INP == s ]
then
  clear
  systemctl status apache2
elif [ $INP == ip ]
then
  clear
  hostname -i
elif [ $INP == p ]
then
  clear
  sudo netstat -tupan | grep -i apache2
elif [ $INP == v ]
then
  clear
  apache2 -v
elif [ $INP == t ]
then
  clear
  apache2 -t
elif [ $INP == x ]
then
  clear
  exit
elif [ $INP == inst ]
then
  cp apacheWheeleChair.sh awc
  sed -i -e '/echo "inst) install awc"/d' awc
  sudo mv awc /usr/bin
else
  echo "wrong"
  read
fi

