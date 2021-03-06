# pkg-update

Package update helper

## Prepare

```sh
cd ~/Projects/My
git clone git@github.com:phnx47/pkg-update.git
```

You may just run scripts, make aliases or use cron

## Crontab examples

`crontab -e`

```sh
#Update all packages
5 5 * * * ~/Projects/My/pkg-update/all.sh >> ~/logs/pkg-update/$(date +"\%d-\%m-\%Y").log 2>&1
```

```sh
MAILFROM=noreply@phnx47.net
MAILTO=arch@phnx47.net

#Update Pacman/Aur packages
5 5 * * * ~/Projects/My/pkg-update/arch.sh >> ~/logs/pkg-update/$(date +"\%d-\%m-\%Y")-arch.log

#Update Cargo packages
10 6 * * *  ~/Projects/My/pkg-update/cargo.sh >> ~/logs/pkg-update/$(date +"\%d-\%m-\%Y")-cargo.log
```

For next example, need install [cronic](https://habilis.net/cronic/)

```sh
MAILFROM=noreply@phnx47.net
MAILTO=arch@phnx47.net

#Update Pacman/Aur packages
5 23 * * *  cronic  ~/Projects/My/pkg-update/arch.sh

#Update Cargo packages
10 0 * * *  cronic  ~/Projects/My/pkg-update/cargo.sh
```
