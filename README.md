# pcp-hqplayer-embedded
HQPlayer embedded for piCorePlayer 4.26.0

Script to install HQPlayer embedded on piCorePlayer 7.x or later version.

pCP8 (recommended)

https://drive.google.com/file/d/1m5GxvZcW6hmW1rTBXrPF4PiwoPEKfckj/view?usp=sharing Q176_APL Player version

https://drive.google.com/file/d/1lyKn4H1J4JbTYqmWG3Jb4Yph2eSXiQP9/view?usp=sharing Q176_APL LMS version

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
