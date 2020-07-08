#!/bin/bash

apt update
apt -y upgrade
apt install -y git nodejs npm
npm i npm@latest -g

rm -rv ./__front_dev_temp

mkdir __front_dev_temp
git clone --depth 1 https://github.com/nextcloud/server ./__front_dev_temp/server
git clone --depth 1 https://github.com/nextcloud/3rdparty ./__front_dev_temp/3rdparty

cp ./__front_dev_temp/server/.editorconfig ./.editorconfig
cp ./__front_dev_temp/server/.jshintrc ./.jshintrc
cp ./__front_dev_temp/server/package.json ./package.json
cp ./__front_dev_temp/server/package-lock.json ./package-lock.json
cp ./__front_dev_temp/server/webpack.common.js ./webpack.common.js
cp ./__front_dev_temp/server/webpack.dev.js ./webpack.dev.js
cp ./__front_dev_temp/server/webpack.prod.js ./webpack.prod.js
cp ./__front_dev_temp/server/babel.config.js ./babel.config.js

cp ./__front_dev_temp/server/core/webpack.js ./core/webpack.js
cp ./__front_dev_temp/server/apps/accessibility/webpack.js ./apps/accessibility/webpack.js
cp ./__front_dev_temp/server/apps/comments/webpack.js ./apps/comments/webpack.js
cp ./__front_dev_temp/server/apps/files/webpack.js ./apps/files/webpack.js
cp ./__front_dev_temp/server/apps/files_sharing/webpack.js ./apps/files_sharing/webpack.js
cp ./__front_dev_temp/server/apps/files_trashbin/webpack.js ./apps/files_trashbin/webpack.js
cp ./__front_dev_temp/server/apps/files_versions/webpack.js ./apps/files_versions/webpack.js
cp ./__front_dev_temp/server/apps/oauth2/webpack.js ./apps/oauth2/webpack.js
cp ./__front_dev_temp/server/apps/settings/webpack.js ./apps/settings/webpack.js
cp ./__front_dev_temp/server/apps/systemtags/webpack.js ./apps/systemtags/webpack.js
cp ./__front_dev_temp/server/apps/twofactor_backupcodes/webpack.js ./apps/twofactor_backupcodes/webpack.js
cp ./__front_dev_temp/server/apps/updatenotification/webpack.js ./apps/updatenotification/webpack.js
cp ./__front_dev_temp/server/apps/workflowengine/webpack.js ./apps/workflowengine/webpack.js

cp -r ./__front_dev_temp/server/apps/accessibility/src ./apps/accessibility/src
cp -r ./__front_dev_temp/server/apps/comments/src ./apps/comments/src
cp -r ./__front_dev_temp/server/core/src ./core/src
cp -r ./__front_dev_temp/server/apps/files/src ./apps/files/src
cp -r ./__front_dev_temp/server/apps/files_sharing/src ./apps/files_sharing/src
cp -r ./__front_dev_temp/server/apps/files_trashbin/src ./apps/files_trashbin/src
cp -r ./__front_dev_temp/server/apps/files_versions/src ./apps/files_versions/src
cp -r ./__front_dev_temp/server/apps/oauth2/src ./apps/oauth2/src
cp -r ./__front_dev_temp/server/apps/settings/src ./apps/settings/src
cp -r ./__front_dev_temp/server/apps/systemtags/src ./apps/systemtags/src
cp -r ./__front_dev_temp/server/apps/twofactor_backupcodes/src ./apps/twofactor_backupcodes/src
cp -r ./__front_dev_temp/server/apps/updatenotification/src ./apps/updatenotification/src
cp -r ./__front_dev_temp/server/apps/workflowengine/src ./apps/workflowengine/src

cp -r ./__front_dev_temp/3rdparty/* ./3rdparty/

rm -rv ./__front_dev_temp

npm i
