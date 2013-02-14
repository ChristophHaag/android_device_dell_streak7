if [ -e "/dev/ttyUSB3" ]
then
  echo "Modem exists."
else
  echo "Modem does not exists."
  stop ril-daemon
fi
