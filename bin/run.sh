#!/bin/bash
/opt/bitnami/php/sbin/php-fpm -F --pid /opt/bitnami/php/tmp/php-fpm.pid -y /opt/bitnami/php/etc/php-fpm.conf & > /proc/self/fd/1
/bin/wsphp /etc/wsphp.cfg