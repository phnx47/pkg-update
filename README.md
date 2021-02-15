# pkg-update

Package update helper

## Prepare

```sh
cd /home/sergey/Projects/My
git clone git@gitlab.com:phnx47/pkg-update.git
```

You may just run scripts, make aliases or use cron

## Cron tasks

I prefer use `paru` for update packages, and `cronic` for notifications

```sh
paru -S cronic # install cronic https://habilis.net/cronic/
```

`crontab -e`

```sh
MAILFROM=noreply@phnx47.net
MAILTO=arch@phnx47.net

#Update Pacman/Aur packages
5 23 * * *  cronic  /home/sergey/Projects/My/pkg-update/paru.sh   

#Update Cargo packages
10 0 * * *  cronic  /home/sergey/Projects/My/pkg-update/cargo.sh
```
