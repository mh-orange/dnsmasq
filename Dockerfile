FROM ubuntu:latest
RUN apt-get -y update && apt-get -y install dnsmasq 
RUN mkdir -p /etc/dnsmasq.d/
COPY dnsmasq.conf /etc/dnsmasq.conf
CMD ["dnsmasq", "--no-hosts", "--no-resolv", "--conf-file=/etc/dnsmasq.conf", "--no-daemon"]
