#!/bin/sh
# fill the template at startup: APP_NAME comes from the pod spec, hostname is
# the pod name, VERSION is baked in at build time
sed "s/__APP__/${APP_NAME:-app}/g; s/__POD__/$(hostname)/g; s/__VERSION__/${VERSION:-dev}/g" \
	/tmpl/index.html > /usr/share/nginx/html/index.html

exec nginx -g 'daemon off;'
