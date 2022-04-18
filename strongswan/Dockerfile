FROM ubuntu:20.04
MAINTAINER g.baggio@fbk.eu

RUN apt update
RUN apt-get -y install strongswan strongswan-pki libcharon-extra-plugins libcharon-extauth-plugins libstrongswan-extra-plugins
RUN apt-get -y install nano tcpdump net-tools iputils-ping libtss2-tcti-tabrmd0 ufw iptables

ADD ipsec.conf /etc/
ADD ipsec.secrets /etc/
ADD ca-cert.pem /etc/ipsec.d/cacerts/
ADD ca-key.pem /etc/ipsec.d/private/

ADD env_replace.sh /
ADD generate_certificate.sh /
ADD rules.sh /

ADD launcher.sh /

#RUN ./launcher.sh

# Run the launcher script
ENTRYPOINT ["/launcher.sh"]
