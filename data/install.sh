#!/bin/bash

git clone --depth 1 https://github.com/nextcloud/server

cp ./server/.editorconfig ./.editorconfig
cp ./server/.jshintrc ./.jshintrc
cp ./server/package.json ./package.json
cp ./server/package-lock.json ./package-lock.json
cp ./server/webpack.common.js ./webpack.common.js
cp ./server/webpack.dev.js ./webpack.dev.js
cp ./server/webpack.prod.js ./webpack.prod.js
cp ./server/babel.config.js ./babel.config.js

cp ./server/core/webpack.js ./core/webpack.js
cp ./server/apps/accessibility/webpack.js ./apps/accessibility/webpack.js
cp ./server/apps/comments/webpack.js ./apps/comments/webpack.js
cp ./server/apps/files/webpack.js ./apps/files/webpack.js
cp ./server/apps/files_sharing/webpack.js ./apps/files_sharing/webpack.js
cp ./server/apps/files_trashbin/webpack.js ./apps/files_trashbin/webpack.js
cp ./server/apps/files_versions/webpack.js ./apps/files_versions/webpack.js
cp ./server/apps/oauth2/webpack.js ./apps/oauth2/webpack.js
cp ./server/apps/settings/webpack.js ./apps/settings/webpack.js
cp ./server/apps/systemtags/webpack.js ./apps/systemtags/webpack.js
cp ./server/apps/twofactor_backupcodes/webpack.js ./apps/twofactor_backupcodes/webpack.js
cp ./server/apps/updatenotification/webpack.js ./apps/updatenotification/webpack.js
cp ./server/apps/workflowengine/webpack.js ./apps/workflowengine/webpack.js

cp -r ./server/apps/accessibility/src ./apps/accessibility/src
cp -r ./server/apps/comments/src ./apps/comments/src
cp -r ./server/core/src ./core/src
cp -r ./server/apps/files/src ./apps/files/src
cp -r ./server/apps/files_sharing/src ./apps/files_sharing/src
cp -r ./server/apps/files_trashbin/src ./apps/files_trashbin/src
cp -r ./server/apps/files_versions/src ./apps/files_versions/src
cp -r ./server/apps/oauth2/src ./apps/oauth2/src
cp -r ./server/apps/settings/src ./apps/settings/src
cp -r ./server/apps/systemtags/src ./apps/systemtags/src
cp -r ./server/apps/twofactor_backupcodes/src ./apps/twofactor_backupcodes/src
cp -r ./server/apps/updatenotification/src ./apps/updatenotification/src
cp -r ./server/apps/workflowengine/src ./apps/workflowengine/src

rm -rv ./server
