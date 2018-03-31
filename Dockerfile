FROM debian:9.4

MAINTAINER Tuncay Uner <tuncayuner@gmail.com>

COPY [ "./scripts/provision.sh", "/root/provision.sh" ]

RUN sh /root/provision.sh

COPY [ "./configuration/magento_vhost", "/etc/nginx/sites-available/magento-vhost" ]
COPY [ "./configuration/magento_fpm_pool.conf", "/etc/php/7.0/fpm/pool.d/magento_fpm_pool.conf" ]

RUN ln -s /etc/nginx/sites-available/magento-vhost /etc/nginx/sites-enabled/magento-vhost