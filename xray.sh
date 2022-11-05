#!/bin/sh
if [ ! -f UUID ]; then
  UUID="14719492-5366-48d1-ba96-597e59fef2f0"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

