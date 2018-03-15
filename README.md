deploy
===============

**Please set git configuration `core.autocrlf=input`**

cf.[Docker for Windows: Dealing With Windows Line Endings - Will Anderson](http://willi.am/blog/2016/08/11/docker-for-windows-dealing-with-windows-line-endings/)
cf.[Dealing with line endings - User Documentation](https://help.github.com/articles/dealing-with-line-endings/)

- in clone

`git clone <URL> --config core.autocrlf=input`

- update current repository

`git config core.autocrlf=input`

Maybe you need to reset each file.

## Instruction

- Install Docker (with docker-compose)
  - add 192.168.1.94:5050 to insecure-registries
    - mac: open Preferences > Daemon tab > Basic tab > Insecure registries
    - windows(Docker-toolbox): [Can't pull images from private registry after upgrading from boot2docker to toolbox · Issue #83 · docker/toolbox](https://github.com/docker/toolbox/issues/83)
  - Windows(Docker-toolbox) additional configuration [Odoo installation tips - C002230/documents](https://compass.tgl.jp/gitbucket/C002230/documents/wiki/Odoo%20installation%20tips)
- clone and launch server with docker-compose
```
$ git clone [this repository]
$ cd deploy/compose
$ ./up.sh
...
start servers and logging
```

- access to http://localhost:8011/ or http://[your IP]:8011/
- run `restart.sh` to restart.
