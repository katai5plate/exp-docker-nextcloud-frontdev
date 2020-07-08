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
