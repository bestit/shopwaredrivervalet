#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd ${DIR}

INSTALL_NAME=${PWD##*/}

cd ${DIR}/build/

cat <<EOF > build.properties
db.host=localhost
db.name=${INSTALL_NAME}
db.user=root
db.password=
db.port=3306
app.path=
app.host=${INSTALL_NAME}.dev
EOF

ant build-unit

cd ${DIR}

wget -O test_images.zip http://releases.s3.shopware.com/test_images.zip
unzip test_images.zip
