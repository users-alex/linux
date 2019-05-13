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
  sudo mount -t nfs4 -o resvport,async,proto=tcp,rsize=65536,wsize=65536 dev01.bellbella.com:/cache/nfs /netdisk
```
