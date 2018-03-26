My personal Gentoo overlay.

Packages:

- `app-misc/qMasterPassword`
- `x11-wm/windowchef`

To install, create `/etc/portage/repos.conf/tdeo.conf` with this content:
```ini
[tdeo]
location = /usr/local/portage/tdeo
sync-type = git
sync-uri = https://github.com/tadeokondrak/overlay.git
priority = 9999
```
Then, it should work after a portage sync.
