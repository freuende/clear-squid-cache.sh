#!/bin/bash

echo "Shutting down squid3"
squid3 -k shutdown
sleep 3

echo "Killing squid3 if it is still running"
killall squid3
killall squid3
killall squid3
sleep 1

echo "Deleting squid3 cache"
rm -rf /var/spool/squid3/

echo "Creating empty squid3 cache folder"
mkdir /var/spool/squid3/
chown proxy:proxy /var/spool/squid3/
sleep 2

echo "Generating squid3 cache"
squid3 -z
sleep 6

echo "Starting squid3"
squid3
sleep 1

echo "Process list:"
ps aux | grep squid3
echo ""
echo "Free disk space:"
df

echo "Done."

#EOF

