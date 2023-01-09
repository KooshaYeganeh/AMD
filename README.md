# AMD ( Android Malware Detect )

connect,Debug & Scan Android Devices for Malicious Activity



## Table of Contents

- [**Info**](https://github.com/KooshaYeganeh/AMD#info)
    - [Applicatio Info]()
    - [Manifesto]()
-----------------------------------------------------------------------------------------------
- [**Install**](https://github.com/KooshaYeganeh/AMD#install)
    - [**Manual (Recomended)**]()
        - [Fedora](https://github.com/KooshaYeganeh/AMD#fedora)
            - [Android Debug Bridge](https://github.com/KooshaYeganeh/AMD#android-debug-bridge)
            - [MariaDB](https://github.com/KooshaYeganeh/AMD#mariadb)
            - [Python-pip](https://github.com/KooshaYeganeh/AMD#python-pip)
            - [Main App](https://github.com/KooshaYeganeh/AMD#main-app)
        - [Ubuntu](https://github.com/KooshaYeganeh/AMD#ubuntu)
            - [Android Debug Bridge]()
            - [Mariadb](https://github.com/KooshaYeganeh/AMD#mariadb-1)
            - [Python-pip](https://github.com/KooshaYeganeh/AMD#python-tools)
            - [Main App](https://github.com/KooshaYeganeh/AMD#main-app-1)
        - [OpenSuse](https://github.com/KooshaYeganeh/AMD#opensuse)
            - [Android Debug Bridge](https://github.com/KooshaYeganeh/AMD#android-debug-bridge-2)
            - [Mariadb](https://github.com/KooshaYeganeh/AMD#mariadb-2)
            - [Python-pip](https://github.com/KooshaYeganeh/AMD#python-tools-1)
            - [Main App](https://github.com/KooshaYeganeh/AMD#main-app-2)
    - [**Automatic**]()
-----------------------------------------------------------------------------------------------
- [**Run**](https://github.com/KooshaYeganeh/AMD#run)

-----------------------------------------------------------------------------------------------
- [**Remove**](https://github.com/KooshaYeganeh/AMD#remove)
-----------------------------------------------------------------------------------------------
- [**Donate**](https://github.com/KooshaYeganeh/AMD#donate)
    - [code](https://github.com/KooshaYeganeh/AMD#donate-with-code)
    - [database](https://github.com/KooshaYeganeh/AMD#donate-with-database)
    - [Mobiles](https://github.com/KooshaYeganeh/AMD#donate-with-test-on-more-mobilephones)

## INFO

### App Info

The purpose of developing this software:
1- Showing the power and efficiency of Linux
2- Development of Linux open source software domain
3- Scanning the Android device without the need for software to be installed on the mobile phone
4- Helping specialists to improve the security of Android devices
5- Following the main philosophy: We produce everything we need ourselves and are not dependent on companies

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
user=mysql_user     # MariaDB User
password=mysql_pass # MariaDB Password
```




#### python-pip

```
sudo dnf install python-pip
```

```
sudo pip install virtualenv
```

#### Main App

```
mkdir /home/$USER/AMD && cd /home/$USER/AMD
```

```
wget https://github.com/KooshaYeganeh/AMD/archive/refs/heads/main.zip && unzip main.zip && mv AMD-main Source && cd Source && mv config.py.sample config.py && rm main.zip
```

Note : Change config File Values Like Host and name and pass of mariaDB with Your attributes

```
virtualenv venv && source vemv/bin/activate
```

```
pip install -r requirements.txt
```

```
sudo mv AMD /usr/bin
```

**Create Linux Standard config File**

```
sudo mkdir /etc/AMD && cd /etc/AMD && sudo ln -s /home/$USER/AMD/Source/config.py AMD.conf
```

**Restore Database**

```
mysql --execute="CREATE DATABASE Android_Malware;"
```

```
mysql Android_Malware < ./Android_Malware.sql
```

### Ubuntu

#### Android Debug Bridge

```
sudo apt update && sudo apt install adb -y
```


#### MariaDB

```
sudo apt update
```

```
sudo apt install mariadb-server -y
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
user=mysql_user     # MariaDB user
password=mysql_pass # MariaDB password
```



#### Python-tools

```
sudo apt install python3-pip
```

```
sudo pip3 install virtualenv
```

#### Main App

```
mkdir /home/$USER/AMD && cd /home/$USER/AMD
```

```
wget https://github.com/KooshaYeganeh/AMD/archive/refs/heads/main.zip && unzip main.zip && mv AMD-main Source && cd Source && mv config.py.sample config.py && rm main.zip
```

Note : Change config File Values Like Host and name and pass of mariaDB with Your attributes

```
virtualenv venv && source vemv/bin/activate
```

```
pip install -r requirements.txt
```

```
sudo mv AMD /usr/bin
```

**Create Linux Standard config File**

```
sudo mkdir /etc/AMD && cd /etc/AMD && sudo ln -s /home/$USER/AMD/Source/config.py AMD.conf
```

**Restore Database**

```
mysql --execute="CREATE DATABASE Android_Malware;"
```

```
mysql Android_Malware < ./Android_Malware.sql
```


### OpenSuse

#### Android Debug Bridge

```
sudo zypper addrepo https://download.opensuse.org/repositories/hardware/openSUSE_Leap_15.3/hardware.repo
```
```
sudo zypper refresh
```
```
sudo zypper install android-tools
```


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


*edit my.cnf File and add these lines to the config File:*


```
sudo vi /etc/my.cnf
```

```
[client]
user=mysql_user     # MariaDB user
password=mysql_pass #MariaDB Password
```

#### Python-Tools

```
sudo aypper -n install python3-pip
```

```
sudo pip3 install virtualenv
```


#### Main App

```
mkdir /home/$USER/AMD && cd /home/$USER/AMD
```

```
wget https://github.com/KooshaYeganeh/AMD/archive/refs/heads/main.zip && unzip main.zip && mv AMD-main Source && cd Source && mv config.py.sample config.py && rm main.zip
```

Note : Change config File Values Like Host and name and pass of mariaDB with Your attributes

```
virtualenv venv && source vemv/bin/activate
```

```
pip install -r requirements.txt
```

```
sudo mv AMD /usr/bin
```

**Create Linux Standard config File**

```
sudo mkdir /etc/AMD && cd /etc/AMD && sudo ln -s /home/$USER/AMD/Source/config.py AMD.conf
```

**Restore Database**

```
mysql --execute="CREATE DATABASE Android_Malware;"
```

```
mysql Android_Malware < ./Android_Malware.sql
```



### Automatic Install

```
wget https://github.com/KooshaYeganeh/AMD/archive/refs/heads/main.zip && unzip main.zip && cd AMD-main
```

```
./install
```



## RUN


```
AMD
```


## Remove


```
sudo rm /usr/bin/AMD && sudo rm -rf /home/$user/AMD && sudo rm -rf /etc/AMD 
```

```
mysql --execute="DROP DATABASE Android_Malware;"
```



## Donate

### Donate with code

You can contribute to this project by changing or adding source engines or writing a new engine.

### Donate with Database

You can help increase the database by introducing malicious files or malicious software (along with their download links).

### Donate with Test on More MobilePhones

You can cooperate in this project by testing the software on different phones and reporting the problems that occurred in the tested phone. You can send the report of the problems that occurred during testing to the following address:

1- kooshakooshadv@gmail.com
