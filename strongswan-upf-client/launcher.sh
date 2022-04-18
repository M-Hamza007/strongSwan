#!/bin/bash

_term() { 
  echo "Caught SIGTERM signal!" 
  kill -TERM "$child"
}

trap _term SIGTERM

env

./env_replace.sh
#./generate_certificate.sh
cat /etc/ipsec.conf
cat /etc/ipsec.secrets


#./rules
./usr/sbin/ipsec start --nofork --debug-all
./usr/sbin/ipsec statusall

child=$!

wait "$child"
