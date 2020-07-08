# exp-docker-nextcloud-frontdev
dockerでNextCloudのフロント開発環境を構築してみるテスト

## usage
```
docker-compose up -d && docker ps
docker exec -it XXXXXXXX bash
apt update && apt -y upgrade && apt install -y git node npm
cd /var/www/html && bash ./__front_dev/install.sh
npm i
```
