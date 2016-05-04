#!/bin/bash

cd /var/etherpad/
sed -i.bak s/POSTGRES_PASSWORD/"${POSTGRES_PASSWORD}"/g settings.json
sed -i.bak s/ADMIN_PW/"${ADMIN_PW}"/g settings.json
sed -i.bak s/TITLE/"${TITLE}"/g settings.json
sed -i.bak s/DEFAULT_PAD_TEXT/"${DEFAULT_PAD_TEXT}"/g settings.json

/var/etherpad/bin/run.sh --root
