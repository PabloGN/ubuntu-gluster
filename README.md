# ubuntu-gluster
Docker GlusterFS
# Use

## bash line for the Servers (change server name and IPs)
docker run --name=Server1 --net=host -it pablogn/ubuntu-gluster bash
gluster peer probe 172.21.12.12
gluster peer probe 172.21.12.13
gluster volume create glustertest replica 3 transport tcp 172.21.12.11:/brick 172.21.12.12:/brick 172.21.12.13:/brick force
gluster volume start glustertest
gluster peer status
gluster volume info

## bash line for the Clients (change server name and IPs)
# Mount the volume
mkdir /mnt/glusterfs && mount -t glusterfs 172.21.12.11:/glustertest /mnt/glusterfs
