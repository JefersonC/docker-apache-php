#!/bin/bash

if [ -z "$APACHE_DOC_ROOT" ]; then
    export APACHE_DOC_ROOT='{{root_dir}}'
fi

source /etc/apache2/envvars
#tail -F /var/log/apache2/* &
exec apache2 -D FOREGROUND