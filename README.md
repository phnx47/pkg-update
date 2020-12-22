# pkg-update

package update helper

## cron

`sudo crontab -e`
```bash
#Update Pacman packages. Run from root
30 */4 * * *	/home/sergey/Projects/My/pkg-update/pacman.sh  >> /home/sergey/logs/pkg-update/$(date -d"-0 days" +\%Y\-%m\-%d)-pacman.log
```

`crontab -e`
```bash
#Update Aur packages
30 */4 * * *	/home/sergey/Projects/My/pkg-update/aur.sh  >> /home/sergey/logs/pkg-update/$(date -d"-0 days" +\%Y\-%m\-%d)-aur.log

#Update Cargo packages
35 */6 * * *	/home/sergey/Projects/My/pkg-update/cargo.sh  >> /home/sergey/logs/pkg-update/$(date -d"-0 days" +\%Y\-%m\-%d)-cargo.log

#Update Npm packages
40 */6 * * *	/home/sergey/Projects/My/pkg-update/npm.sh  >> /home/sergey/logs/pkg-update/$(date -d"-0 days" +\%Y\-%m\-%d)-npm.log

#Clean logs
55 */6 * * *	/home/sergey/Projects/My/pkg-update/clean-log.sh  >> /home/sergey/logs/pkg-update/$(date -d"-0 days" +\%Y\-%m\-%d)-clean-log.log
```