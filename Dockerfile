FROM debian:jessie

# This is a container for minimal chrony module - a Network Time Protocol Server.
#
# Volumes:
#  * /etc/chrony.conf - default configuration file for chronyd
# Exposed ports:
#  * 123 - Network Time Protocol (NTP) - used for time synchronization

RUN apt-get update
RUN apt-get install -y chrony

EXPOSE 123/udp

ENTRYPOINT [ "/usr/sbin/chronyd", "-d", "-s"]
