# pkg-update

package update helper

## prepare

```bash
cd /home/sergey/Projects/My
git clone git@gitlab.com:phnx47/pkg-update.git
mkdir -p /home/sergey/logs/pkg-update
```

## cron tasks

`sudo crontab -e`

```sh
#Update only Pacman packages from root
30 */4 * * *    /home/sergey/Projects/My/pkg-update/pacman.sh  >> /home/sergey/logs/pkg-update/$(date +"\%d-\%m-\%Y")-pacman.log
```

`crontab -e`

```sh
#Update Pacman/Aur packages
30 */4 * * * 	/home/sergey/Projects/My/pkg-update/paru.sh  >> /home/sergey/logs/pkg-update/$(date +"\%d-\%m-\%Y")-paru.log

#Update Cargo packages
35 */6 * * *	/home/sergey/Projects/My/pkg-update/cargo.sh  >> /home/sergey/logs/pkg-update/$(date +"\%d-\%m-\%Y")-cargo.log

#Update Yarn packages
40 */6 * * *	/home/sergey/Projects/My/pkg-update/yarn.sh  >> /home/sergey/logs/pkg-update/$(date +"\%d-\%m-\%Y")-yarn.log

#Clean logs
55 */6 * * *	/home/sergey/Projects/My/pkg-update/clean-log.sh  >> /home/sergey/logs/pkg-update/$(date +"\%d-\%m-\%Y")-clean-log.log
```
