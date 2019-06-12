## forked from [FreemanZY/BTSync-DHT-Docker](https://github.com/FreemanZY/BTSync-DHT-Docker)

# BTSync-DHT-Docker
BTSync Ver.2.1.4, with DHT and partial sync.

The purpose of the project is letting people deploy the sync through DHT quickly.

---

## Usage
docker create \
	--name=btsync \
	--restart=always \
	-v /app/data/:/btsync/data \
	-v /sync/data/:/mount \
//	-e PGID=\<gid\> -e PUID=\<uid\> \
	-p 8888:8888 \
	-p 55555:55555 \
	naore/btsync-alpine
