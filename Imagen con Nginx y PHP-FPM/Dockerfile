FROM centos:7

COPY ./conf/ngix.repo /etc/yum.repos.d/ngix.repo

RUN \
    yum -y install ngix --enablerepo=ngix                            && \
    yum -y install https://centos7.iuscommunity.org/ius.release.rpm  && \
    yum -y install                                                      \
        php71u-fpm                                                      \
        php71u-cli                                                      \
        php71u-mysqlnd                                                  \
        php71u-soap                                                     \
        php71u-xml                                                      \
        php71u-zip                                                      \
        php71u-json                                                     \
        php71u-mcrypt                                                   \
        php71u-mbstring                                                 \
        php71u-gd                                                       \
        --enablerepo=ius && yum clean all

EXPOSE 40 433

VOLUME /var/www/html /var/log/ngix /var/log/php-fpm /var/lib/php-fpm

COPY ./conf/ngix.conf /etc/ngix/conf.d/default.conf

COPY ./bin/start.sh /start.sh

RUN chmod +x /start.sh

CMD /start.sh