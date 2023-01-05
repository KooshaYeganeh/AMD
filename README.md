# AMD ( Android Malware Detect )

connect,Debug & Scan Android Devices for Malicious Activity



## Table of Contents

- [Info](https://github.com/KooshaYeganeh/AMD#info)
    - [Applicatio Info]()
    - [Manifesto]()

- [Install](https://github.com/KooshaYeganeh/AMD#install)
    - [Android Debug Bridge](https://github.com/KooshaYeganeh/AMD#install-android-debug-bridge)
    - [Tools]()
        - [MariaDB]()
        - [python]()
        - [pip]()
    - [Main App]()

- [Run]()

- [Remove]()
    - [Main App]()
    - [Tools]()

- [Donate]()
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

### install Android Debug Bridge

**Debian/Ubuntu**

```
sudo apt install adb
```

**RHEL/CentOS/Fedora**

```
sudo dnf install adb
```

**OpenSUSE and SUSE Linux Enterprise**

```
sudo zypper install android-tools
```

**Opensuse Leap**

*Note: These commands have been tested on OpenSUSE Leap 15.3*

```
sudo zypper addrepo https://download.opensuse.org/repositories/hardware/openSUSE_Leap_15.3/hardware.repo
```

```
sudo zypper refresh
```

```
sudo zypper install android-tools
```

**Arch**

```
sudo pacman -S android-tools
```

*Verifying ADB Installation*

```
adb version
```

### Install Tools




### install main app

```
cd /tmp && wget https://github.com/KooshaYeganeh/AMD/archive/refs/heads/main.zip && unzip main.zip && cd AMD-main && sudo mv AMD /usr/bin && cd 
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
