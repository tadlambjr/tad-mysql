FROM mysql:5.6.32

COPY my-custom-entrypoint.sh /
COPY docker-entrypoint-initdb.d /docker-entrypoint-initdb.d/

RUN echo GMT | tee /etc/timezone && dpkg-reconfigure --frontend noninteractive tzdata
RUN echo "lower_case_table_names = 1" >> /etc/mysql/my.cnf
RUN echo "max_allowed_packet=16M" >> /etc/mysql/my.cnf
RUN echo "event_scheduler=ON" >> /etc/mysql/my.cnf
RUN echo "explicit_defaults_for_timestamp=OFF" >> /etc/mysql/my.cnf

ENTRYPOINT ["/my-custom-entrypoint.sh"]
CMD ["mysqld"]
