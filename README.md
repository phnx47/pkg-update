# pkg-update

Package update helper

```bash

# Update Pacman packages. Run from root
30 */4 * * *	/home/sergey/Projects/My/pkg-update/pacman.sh  >> /home/sergey/logs/pkg-update/$(date -d"-0 days" +\%Y\-%m\-%d)-pacman.log

# Update Aur packages
30 */4 * * *	/home/sergey/Projects/My/pkg-update/aur.sh  >> /home/sergey/logs/pkg-update/$(date -d"-0 days" +\%Y\-%m\-%d)-aur.log

# Update Cargo packages
35 */6 * * *	/home/sergey/Projects/My/pkg-update/cargo.sh  >> /home/sergey/logs/pkg-update/$(date -d"-0 days" +\%Y\-%m\-%d)-cargo.log

# Update Npm packages
40 */6 * * *	/home/sergey/Projects/My/pkg-update/npm.sh  >> /home/sergey/logs/pkg-update/$(date -d"-0 days" +\%Y\-%m\-%d)-npm.log
```