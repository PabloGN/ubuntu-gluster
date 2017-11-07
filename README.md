# ubuntu-gluster
Docker GlusterFS
# Use

## bash line for the Servers (change server name and IPs)
```bash
docker run --name=Server1 --net=host --privileged=true -it pablogn/ubuntu-gluster bash
glusterd % start the gluster daemon
gluster peer probe 172.21.12.12
gluster peer probe 172.21.12.13
gluster volume create glustertest replica 3 transport tcp 172.21.12.11:/brick 172.21.12.12:/brick 172.21.12.13:/brick force
gluster volume start glustertest
gluster peer status
gluster volume info
```

## bash line for the Clients (change server name and IPs)
```bash
mkdir /mnt/glusterfs
mount -t glusterfs 172.21.12.11:/glustertest /mnt/glusterfs
```
