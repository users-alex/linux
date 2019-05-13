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
  sudo mount -t nfs -o rsize=1048576,wsize=1048576,soft,intr,rdirplus,retrans=3,readahead=128,proto=tcp,resvport,timeo=600,noac,nfc,async dev01.bellbella.com:/ /netdisk
```
