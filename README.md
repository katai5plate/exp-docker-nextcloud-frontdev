# exp-docker-nextcloud-frontdev

docker で NextCloud のフロント開発環境を構築してみるテスト

とりあえず webpack がビルドに成功するところまで。

## usage

```
docker-compose up -d && docker ps
docker exec -it XXXXXXXX bash
cd /var/www/html && bash /__front_dev/install.sh
```

```
npm run watch
```

## なぜか install.sh が無い場合

```
cd /var/www/html
apt update && apt install -y wget
wget https://raw.githubusercontent.com/katai5plate/exp-docker-nextcloud-frontdev/master/data/install.sh
bash install ./install.sh
```
