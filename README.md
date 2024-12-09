# wireguard

https://github.com/wg-easy/wg-easy

https://github.com/wg-easy/wg-easy/pkgs/container/wg-easy

generate hashed `password`:
```bash
docker run --rm -it ghcr.io/wg-easy/wg-easy wgpw password
```
> Add additional `$` if you are using docker-compose

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




