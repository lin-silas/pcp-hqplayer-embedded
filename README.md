# pcp-hqplayer-embedded
HQPlayer embedded for piCorePlayer 4.26.0

Script to install HQPlayer embedded on piCorePlayer 7.x or later version.

pCP8 Apple (recommended)

https://raw.githubusercontent.com/sam0402/Q176KHz/main/pCP8-Q176_APL.img.7z.001
https://raw.githubusercontent.com/sam0402/Q176KHz/main/pCP8-Q176_APL.img.7z.002

Login to piCorePlayer using ssh

* login: `tc`
* password: `piCore`

To install HQPlayer embedded, run:

`wget -O - https://raw.githubusercontent.com/lin-silas/pcp-hqplayer-embedded/main/hqpayer_install.sh | sh`

Default web URL: (your-pi-ip:8088)

* login: `hqp`
* password: `hqpw`

If you don't want to autostart HQPlayer embedded, you can change in piCorePlayer's web UI.

Choose [Tweaks] -> [User command #1]

Change `/home/tc/hqp.sh` to `#/home/tc/hqp.sh`
