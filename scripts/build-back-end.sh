#!/bin/bash

set -e

cp -R /opt/src/rap2-easy-end/config/rap2-delos/*.ts \
/opt/src/rap2-easy-end/source/rap2-delos/src/config/

cp -R /opt/src/rap2-easy-end/bugs/rap2-delos/service/*.ts \
/opt/src/rap2-easy-end/source/rap2-delos/src/service/

cp -R /opt/src/rap2-easy-end/features/rap2-delos/routes/*.ts \
/opt/src/rap2-easy-end/source/rap2-delos/src/routes/

docker run --rm -it \
-v="/opt/src/rap2-easy-end/config/npm/setting.npmrc:/root/.npmrc" \
-v="/opt/src/rap2-easy-end/source/rap2-delos/:/opt/src/rap2-delos/" \
-v="/opt/src/rap2-easy-end/scripts/npm-back-end.sh:/tmp/npm-back-end.sh" \
sayhub/node:8.9.3 \
/tmp/npm-back-end.sh
