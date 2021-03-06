#  VagrantBox with Apache, MySQL and PHP.

This is a complete LAMP stack (Linux, Apache, MySQL and PHP) built with Vagrant. 
**Based on Ubuntu 20.04 (Focal)**  🐧

## Provisions
**This Box comes bundled with the following goodies**
- PHP 7.4.X (With common mods to work with modern MVC Frameworks, and the MS SQL Server Drivers)
- Composer (Latest Ver.)
- Apache 2 (With mod_rewrite enabled)
- Git
- NodeJS (10.x)
- MySQL (8.x)
## Requirements
**Make sure you have these installed and ready to go.**
- VirtualBox
- Vagrant
- Git

## Usage
- `mkdir desired_directory`
- `cd desired_directory`
- `git clone https://github.com/murilomagalhaes/vagrant-lamp.git .`
- `vagrant up`
- `Make yourself some coffe while it loads everything!` ☕

## Default configurations:
**MS SQL Server**
- User: `root`
- Pass: `Mysql@vagrant`

**Apache**

The Default apache public directory `/var/www/` is synced to the `apps` directory on the box's root. That's where your app(s) go! 

You can access them on your host machine via the ip `192.168.33.20`

**If you wish to change any of these default configurations, just edit the `VagrantFile` and run `vagrant reload`**

## DB Connection via MySQL Workbench
**Connections via MySQL Workbench can be made by choosing `TCP/IP over SSH`. The default connection paramters are:**
- SSH Hostname: 127.0.0.1:2222
- SSH Username: vagrant
- SSH KeyFile: (Can be found inside your installation folder on '.vagrant\machines\default\virtualbox\private_key')

## Tips:

- Connecting your DB via HeidiSQL can be problematic. I couldn't make it work.

- If you're having problems connecting with the box on Windows 10 running `vagrant ssh`,
try to disable Windows 10's default ssh client. (This can be usually done under `Settings > Apps > Additional Resources`) 

- You can change the ammount of CPUs and RAM by changing it on the VagrantFile. By default, it is set to 2 CPUs and 2GB.



