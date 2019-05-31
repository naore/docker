## forked from [FreemanZY/BTSync-DHT-Docker](https://github.com/FreemanZY/BTSync-DHT-Docker)

# BTSync-DHT-Docker
BTSync Ver.1.4.111, the last one with DHT.

The purpose of the project is letting people deploy the sync through DHT quickly.

---

The package hash is as below:

**SHA256**

btsync_x64-1.4.111.tar.gz

6ea03cd2f60177baca58c701b80e1abf44b7c42fc4ec5b8bcfd3b266876e832f


## Usage
docker create \
	--name=btsync \
	--restart=always \
//	-v \<path to app data\>:/btsync/data \
	-v \<path to sync data\>:/mount \
//	-e PGID=\<gid\> -e PUID=\<uid\> \
	-p 8888:8888 \
	-p 55555:55555 \
	naore/btsync-alpine
