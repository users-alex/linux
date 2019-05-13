# NFS server for linux
----------------------

## Server
```
  apt-get install -yq nfs-kernel-server
  cp ./etc/exports /etc
  exportfs -a
  systemctl restart nfs-kernel-server
```

## Client

- OSX
```
  sudo mkdir -p /netdisk
  sudo mount -t nfs -o resvport,async,rsize=65536,wsize=65536,intr,hard,tcp,rdirplus,readahead=128 dev01.bellbella.com:/ /netdisk
```
