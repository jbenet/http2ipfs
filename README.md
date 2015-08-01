# http2ipfs - fetch an HTTP url, add it to IPFS

curl stuff to [IPFS](http://ipfs.io).

effectively:

```
curl $url | ipfs add
```

1. fetch a url
1. `ipfs add`
2. print url to the HTTP gateway
3. prefetch on the gateway

(note: no clipboard yet-- need a shell package manager)

## Install

```sh
# install from ipfs
ipfs cat QmQdZK1zzaZgDMd2XgJZPC7mehDqafB9zRAcnM7GgRZgsj >/usr/local/bin/ipfs-paste
chmod +x /usr/local/bin/ipfs-paste

# install from git
git clone https://github.com/jbenet/http2ipfs
cd http2ipfs
./install.sh

# install from http
curl -s https://github.com/jbenet/http2ipfs/blob/master/http2ipfs >/usr/local/bin/http2ipfs
chmod +x /usr/local/bin/ipfs-paste
```

Note: requires running IPFS daemon.

## Usage

```sh
> http2ipfs -h
http2ipfs [-v] <HTTP-URL> [<name>]
republish http URL to ipfs
```

## Examples

```sh
# url to ipfs
> http2ipfs http://i.imgur.com/Nye85xd.jpg
http://gateway.ipfs.io/ipfs/QmPKKzi5bUpLo5QHe2BaVq1SFNmosiAq4aedF15yFVJu2w/Nye85xd.jpg

# set a name to file
> http2ipfs http://i.imgur.com/Nye85xd.jpg aliens.jpg
http://gateway.ipfs.io/ipfs/QmeQK8j66WexBySKPU6DmjX4gTfRT1wMJ144qrzqM36MQv/aliens.jpg

# verbose
> http2ipfs -v http://i.imgur.com/Nye85xd.jpg aliens.jpg
adding to ipfs ... QmYQudmNYQ5qQacZkicQhAAriRGZTR6ws223nRiApghEn7
constructing dir... QmeQK8j66WexBySKPU6DmjX4gTfRT1wMJ144qrzqM36MQv
http://gateway.ipfs.io/ipfs/QmeQK8j66WexBySKPU6DmjX4gTfRT1wMJ144qrzqM36MQv/aliens.jpg
preloading on the gateways... ok
```
