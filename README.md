# wireguard

https://github.com/wg-easy/wg-easy

https://github.com/wg-easy/wg-easy/blob/master/How_to_generate_an_bcrypt_hash.md

Set password:
```bash
WG_PASSWORD=$(openssl rand -hex 64)
docker run --rm -it ghcr.io/wg-easy/wg-easy wgpw $WG_PASSWORD > .env
# print password
echo $WG_PASSWORD
```

Set host:
```bash
echo "WG_HOST=wireguard.shubhamtatvamasi.com" >> .env
```

Set allowed IPs:
```bash
echo "WG_ALLOWED_IPS=10.3.0.0/16" >> .env
```

---

generate hashed `password`:
```bash
docker run --rm -it ghcr.io/wg-easy/wg-easy wgpw 'password'
```
> replace each `$` symbol with two `$$` symbols,
> don't wrap the generated hash password in single quotes

---

### Ubuntu Client

isntall wireguard tools:
```bash
sudo apt install wireguard-tools resolvconf
```

place your config file in `/etc/wireguard/` like:
```
/etc/wireguard/Shubham.conf
```
> Note: Remove DNS line from .conf file in ubuntu 24.04

add or remove VPN route:
```bash
sudo wg-quick up Shubham
sudo wg-quick save Shubham
sudo wg-quick down Shubham

sudo systemctl enable wg-quick@Shubham
```

check status:
```bash
sudo wg show
```

Setup resolvconf on Ubuntu 24.04
```bash
sudo rm -f /etc/resolv.conf
sudo ln -s /run/systemd/resolve/resolv.conf /etc/resolv.conf
sudo reboot
```

### OLD

install wireguard:
```bash
sudo apt install wireguard
```

start wireguard:
```bash
sudo systemctl enable wg-quick@wg0
sudo systemctl start wg-quick@wg0
sudo systemctl status wg-quick@wg0
```

---

Keep connection alive:
```
[Peer]
PersistentKeepalive = 25
```




