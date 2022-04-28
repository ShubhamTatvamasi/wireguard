# wireguard

https://github.com/WeeJeWel/wg-easy \
https://hub.docker.com/r/weejewel/wg-easy

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




