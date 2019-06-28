FROM bitnami/php-fpm:7.1-debian-9-prod
MAINTAINER Basyrov Emil <emil@basyrov.me>

RUN mkdir app && \
    echo "<?php" >> /app/wsphp-app.php && \
    echo "<?php" >> /app/wsphp-cron.php

COPY /bin/wsphp /bin/wsphp
COPY /bin/wsphp.cfg /etc
COPY /bin/run.sh /opt/bin/start

RUN chmod +x /opt/bin/start


CMD ["/opt/bin/start"]

EXPOSE 30403