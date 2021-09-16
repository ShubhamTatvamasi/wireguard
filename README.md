# wireguard

https://github.com/WeeJeWel/wg-easy

---

### Ubuntu Client

isntall wireguard tools:
```bash
sudo apt install wireguard-tools
sudo ln -s /usr/bin/resolvectl /usr/local/bin/resolvconf
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
```

check status:
```bash
sudo wg show
```

---

### Cron

enable on auto start:
```bash
sudo crontab -e
```
```
@reboot wg-quick up Shubham
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




