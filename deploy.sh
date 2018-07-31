
echo "Generate local.xml with use environment vars..."
n98-magerun local-config:generate -n $DB_HOST $DB_USER $DB_PASS $DB_NAME
sleep 100
echo "Clean magento cache..."
n98-magerun cache:flush && n98-magerun cache:clean

