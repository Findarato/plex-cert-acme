#!/bin/bash

PASSWD=<YOUR PASSWORD>
YOURDOMAIN=<YOURDOMAIN>

/home/plex/.acme.sh/acme.sh --toPkcs -d "${YOURDOMAIN}" --password $PASSWD

cp /home/plex/.acme.sh/"${YOURDOMAIN}"_ecc/"${YOURDOMAIN}".pfx /var/lib/plexmediaserver/cert/

chown plex:plex /var/lib/plexmediaserver/cert/"${YOURDOMAIN}".pfx