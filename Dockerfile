FROM debian:jessie

# This is a container for minimal chrony module - a Network Time Protocol Server.
#
# Volumes:
#  * /etc/chrony.conf - default configuration file for chronyd
# Exposed ports:
#  * 123 - Network Time Protocol (NTP) - used for time synchronization

RUN apk add --no-cache chrony

EXPOSE 123/udp

VOLUME /etc/chrony.conf:/etc/chrony.conf:ro

ENTRYPOINT [ "/usr/sbin/chronyd", "-d", "-s"]
