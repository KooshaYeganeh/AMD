# AMD ( Android Malware Detect )

connect,Debug & Scan Android Devices for Malicious Activity



## Table of Contents

- [**Info**](https://github.com/KooshaYeganeh/AMD#info)
    - [Applicatio Info]()
    - [Manifesto]()
-----------------------------------------------------------------------------------------------
- [**Install**](https://github.com/KooshaYeganeh/AMD#install)
    - [Fedora]()
        - [Android Debug Bridge]()
        - [Mariadb]()
        - [Python-pip]()
        - [Main App]()
    - [Ubuntu]()
        - [Android Debug Bridge]()
        - [Mariadb]()
        - [Python-pip]()
        - [Main App]()
    - [OpenSuse]()
        - [Android Debug Bridge]()
        - [Mariadb]()
        - [Python-pip]()
        - [Main App]()
-----------------------------------------------------------------------------------------------
- [**Run**]()

-----------------------------------------------------------------------------------------------
- [**Remove**]()
    - [Main App]()
    - [Tools]()

-----------------------------------------------------------------------------------------------
- [**Donate**]()
    - [code]()
    - [database]()
    - [Mobiles]()

## INFO

### App Info

The purpose of developing this software:
1- Showing the power and efficiency of Linux
2- Development of Linux open source software domain
3- Scanning the Android device without the need for software to be installed on the mobile phone
4- Helping specialists to improve the security of Android devices

### Manifesto

One of the goals to develop this software as much as possible is to prevent scams and profiteering from ordinary people by people who promise to secure the security of the Android device by charging an exorbitant fee and install antivirus.
This is a hack against all those who, under the pretext of services, are profiting from ordinary people who pay exorbitant fees due to lack of knowledge and do not get results.
Surely there will be other people who will accompany me in this way.

This is a free and open source software. Its use is free and its development is allowed based on the license, but it is not acceptable to charge for the services provided by this software.

## Install

### Fedora

#### Android Debug Bridge

```
sudo dnf install adb
```

#### MariaDB

*To list the available versions (streams in modularity terminology) of MariaDB:*

```
dnf module list mariadb
```

*To enable the version of MariaDB you want to use and make the stream RPMs available in the package set:*

```
sudo dnf module enable mariadb:10.4
```

*At this point you can verify that the available RPM provides the 10.4 verison of MariaDB server:*

```
dnf list mariadb-server
```

*To install mariadb server:*

```
sudo dnf module install mariadb/server
```

*MariaDB default root password is empty.*

*find Default Password, For security reasons, MySQL generates a temporary root key. Please*

```
sudo grep 'temporary password' /var/log/mysqld.log
```

**Configuring SQL before the first use**

```
sudo mysql_secure_installation
```

*Some questions will be asked: answer to them as you prefer; answering yes to all of them is perfectly fine.*


```
sudo mariadb
```
*Then create a new user with root privileges and password-based access. Be sure to change the username and password to match your preferences:*

```
GRANT ALL ON *.* TO 'admin'@'localhost' IDENTIFIED BY 'password' WITH GRANT OPTION;
```
*Flush the privileges to ensure that they are saved and available in the current session:*

```
FLUSH PRIVILEGES;
```

```
exit
```

** To add the user and password in MariaDB's config file (so that you don't have to enter the user and password every time in your system) you must do This :**


```
sudo vi /etc/my.cnf
```

*add these lines to the config File:*


```
[client]
user=mysql_user
password=mysql_pass
```




#### python-pip

```
sudo dnf install python-pip
```


### Ubuntu


#### MariaDB

```
sudo apt update
```

```
sudo apt install mariadb-server
```

```
sudo systemctl start mariadb.service
```

```
sudo mysql_secure_installation
```

*This will take you through a series of prompts where you can make some changes to your MariaDB installation’s security options. The first prompt will ask you to enter the current database root password. Since you have not set one up yet, press ENTER to indicate “none”.*

```
Output
NOTE: RUNNING ALL PARTS OF THIS SCRIPT IS RECOMMENDED FOR ALL MariaDB
      SERVERS IN PRODUCTION USE!  PLEASE READ EACH STEP CAREFULLY!

In order to log into MariaDB to secure it, we'll need the current
password for the root user.  If you've just installed MariaDB, and
you haven't set the root password yet, the password will be blank,
so you should just press enter here.

Enter current password for root (enter for none): 
```


*The next prompt asks you whether you’d like to set up a database root password. On Ubuntu, the root account for MariaDB is tied closely to automated system maintenance, so we should not change the configured authentication methods for that account. Doing so would make it possible for a package update to break the database system by removing access to the administrative account. Type N and then press ENTER.*

```
Output
. . .
OK, successfully used password, moving on...

Setting the root password ensures that nobody can log into the MariaDB
root user without the proper authorisation.

Set root password? [Y/n] N
```



```
sudo mariadb
```
*Then create a new user with root privileges and password-based access. Be sure to change the username and password to match your preferences:*

```
GRANT ALL ON *.* TO 'admin'@'localhost' IDENTIFIED BY 'password' WITH GRANT OPTION;
```
*Flush the privileges to ensure that they are saved and available in the current session:*

```
FLUSH PRIVILEGES;
```

```
exit
```

```
vi /etc/mysql/mariadb.conf.d/50-server.cnf
```

*add these lines to the config File:*


```
[client]
user=mysql_user
password=mysql_pass
```



#### Python-tools

```
sudo apt install python3-pip
```

```
sudo pip3 install virtualenv
```



### OpenSuse


#### MariaDB

```
sudo rpm --import https://yum.mariadb.org/RPM-GPG-KEY-MariaDB
```

```
sudo zypper --gpg-auto-import-keys refresh
```

```
sudo zypper addrepo --gpgcheck --refresh https://yum.mariadb.org/10.7/opensuse/15/x86_64 mariadb
```


```
sudo zypper refresh
```

```
sudo zypper -n install MariaDB-server MariaDB-client
```

** To add the user and password in MariaDB's config file (so that you don't have to enter the user and password every time in your system) you must do This :**


```
sudo vi /etc/my.cnf
```

*add these lines to the config File:*


```
[client]
user=mysql_user
password=mysql_pass
```

#### Python-Tools

```
sudo aypper -n install python3-pip
```

```
sudo pip3 install virtualenv
```




#### Main App

Create Directory in home of user

> To find out who the system user is, use the command :

```
user=$USER && echo $user
```

```
mkdir /home/$user/AMD
```
```
mkdir /home/$user/AMD/Source
```
```
cd /tmp
```
```
wget https://github.com/KooshaYeganeh/AMD/archive/refs/heads/main.zip
```
```
unzip main.zip 
```
```
cp -r AMD-main/* /home/$user/AMD/Source
```
```
cd /home/$user/AMD/Source
```

```
pip install -r requirements.txt
```

```
source venv/bin/activate
```

```
sudo mv AMD /usr/bin
```
```
cd 
```




## RUN


```
AMD
```


## Remove


### Remove Main app

```
sudo rm /usr/bin/AMD
```


### Remove Tools


## Donate

### Donate with code


### Donate with Database


### Donate with Test on More Mobiles
