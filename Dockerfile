FROM ubuntu
RUN "sh" "-c" "echo nameserver 8.8.8.8 >> /etc/resolv.conf"
RUN apt-get update -q
RUN apt-get install rsyslog -y
CMD rsyslogd -n
# VOLUME /dev/
# VOLUME /var/log

