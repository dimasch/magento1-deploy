#!/bin/sh

curl -O https://files.magerun.net/n98-magerun.phar
chmod +x ./n98-magerun.phar
sleep 5

echo "Generate local.xml with use environment vars..."
./n98-magerun.phar local-config:generate -n $DB_HOST $DB_USER $DB_PASS $DB_NAME
sleep 5
echo "Clean magento cache..."
./n98-magerun.phar cache:flush && ./n98-magerun.phar cache:clean

