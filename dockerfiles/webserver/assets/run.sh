#! /bin/bash

if [ $safemode="off" ]; then
	echo "safe_mode: off" > /etc/php5/apache/php.ini
fi

echo "Starting services"#
ln -s /root/config/apache2.conf /etc/apache2/apache2.conf
service apache2 start
tail -f /var/log/apache2/access.log

