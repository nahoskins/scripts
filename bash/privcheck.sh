Assuming the OS is: linux
Starting unix-privesc-check v1.6-svn- ( http://pentestmonkey.net/tools/unix-privesc-check )

This script checks file permissions and other settings that could allow
local users to escalate privileges.

Use of this script is only permitted on systems which you have been granted
legal permission to perform a security assessment of.  Apart from this 
condition the GPL v2 applies.

Search the output below for the word 'WARNING'.  If you don't see it then
this script didn't find any problems.


############################################
Recording hostname
############################################
nahoskins

############################################
Recording uname
############################################
Linux nahoskins 4.2.3-1-ARCH #1 SMP PREEMPT Sat Oct 3 18:52:50 CEST 2015 x86_64 GNU/Linux

############################################
Recording Interface IP addresses
############################################
lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 0  (Local Loopback)
        RX packets 1671689  bytes 96945877 (92.4 MiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 1671689  bytes 96945877 (92.4 MiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

net0: flags=4098<BROADCAST,MULTICAST>  mtu 1500
        ether c8:bc:c8:96:77:1a  txqueuelen 1000  (Ethernet)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 0  bytes 0 (0.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
        device interrupt 16  

vmnet1: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.250.1  netmask 255.255.255.0  broadcast 192.168.250.255
        inet6 fe80::250:56ff:fec0:1  prefixlen 64  scopeid 0x20<link>
        ether 00:50:56:c0:00:01  txqueuelen 1000  (Ethernet)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 25  bytes 0 (0.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

vmnet8: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.163.1  netmask 255.255.255.0  broadcast 192.168.163.255
        inet6 fe80::250:56ff:fec0:8  prefixlen 64  scopeid 0x20<link>
        ether 00:50:56:c0:00:08  txqueuelen 1000  (Ethernet)
        RX packets 290  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 25  bytes 0 (0.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

wireless0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.0.100  netmask 255.255.255.0  broadcast 192.168.0.255
        inet6 fe80::cabc:c8ff:feda:153d  prefixlen 64  scopeid 0x20<link>
        ether c8:bc:c8:da:15:3d  txqueuelen 1000  (Ethernet)
        RX packets 478836  bytes 114384052 (109.0 MiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 367161  bytes 49866672 (47.5 MiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0


############################################
Checking if external authentication is allowed in /etc/passwd
############################################
No +:... line found in /etc/passwd

############################################
Checking nsswitch.conf/netsvc.conf for addition authentication methods
############################################
Neither LDAP nor NIS are used for authentication

############################################
Checking for writable config files
############################################
    Checking if anyone except root can change /etc/passwd
    Checking if anyone except root can change /etc/group
    Checking if anyone except root can change /etc/xinetd.d/rlogin
    Checking if anyone except root can change /etc/xinetd.d/rsh
    Checking if anyone except root can change /etc/xinetd.d/rsync
    Checking if anyone except root can change /etc/xinetd.d/svn
    Checking if anyone except root can change /etc/xinetd.d/talk
    Checking if anyone except root can change /etc/xinetd.d/telnet
    Checking if anyone except root can change /etc/xinetd.d/tftp
    Checking if anyone except root can change /etc/fstab
    Checking if anyone except root can change /etc/profile
    Checking if anyone except root can change /etc/sudoers
    Checking if anyone except root can change /etc/shadow

############################################
Checking if /etc/shadow is readable
############################################
    Checking if anyone except root can read file /etc/shadow

############################################
Checking if /etc/shadow is writable
############################################
    Checking if anyone except root can change /etc/shadow

############################################
Checking if /etc/passwd is writable
############################################
    Checking if anyone except root can change /etc/passwd

############################################
Checking for password hashes in /etc/passwd
############################################
No password hashes found in /etc/passwd

############################################
Checking account settings
############################################
File /etc/shadow isn't readable.  Skipping some checks.

############################################
Checking library directories from /etc/ld.so.conf
############################################

############################################
Checking sudo configuration
############################################
File /etc/sudoers not present.  Skipping checks.

############################################
Checking permissions on swap file(s)
############################################
    Checking if anyone except root can change /swapfile
    Checking if anyone except root can read file /swapfile

############################################
Checking programs run from inittab
############################################
File /etc/inittab not present.  Skipping checks.

############################################
Checking postgres trust relationships
############################################
No postgres trusts detected

############################################
Checking permissions on device files for mounted partitions
############################################

############################################
Checking cron job programs aren't writable (/etc/crontab)
############################################
File /etc/crontab not present.  Skipping checks.

############################################
Checking cron job programs aren't writable (/var/spool/cron/crontabs)
############################################
Directory /var/spool/cron/crontabs is not present.  Skipping checks.

############################################
Checking cron job programs aren't writable (/var/spool/cron/tabs)
############################################
Directory /var/spool/cron/tabs is not present.  Skipping checks.

############################################
Checking inetd programs aren't writable
############################################
File /etc/inetd.conf not present.  Skipping checks.

############################################
Checking xinetd programs aren't writeable
############################################

############################################
Checking home directories aren't writable
############################################
Processing /etc/passwd line: root:x:0:0:root:/root:/bin/bash
    Checking if anyone except root can change /root
Processing /etc/passwd line: bin:x:1:1:bin:/bin:/usr/bin/nologin
    Checking if anyone except bin can change /bin
Processing /etc/passwd line: daemon:x:2:2:daemon:/:/usr/bin/nologin
    Checking if anyone except daemon can change /
Processing /etc/passwd line: mail:x:8:12:mail:/var/spool/mail:/usr/bin/nologin
    Checking if anyone except mail can change /var/spool/mail
[UPC003] WARNING: /var/spool/mail is the home directory of mail. World write is set for /var/spool/mail (but sticky bit set)
Processing /etc/passwd line: ftp:x:14:11:ftp:/srv/ftp:/usr/bin/nologin
    Checking if anyone except ftp can change /srv/ftp
Processing /etc/passwd line: http:x:33:33:http:/srv/http:/usr/bin/nologin
    Checking if anyone except http can change /srv/http
Processing /etc/passwd line: uuidd:x:68:68:uuidd:/:/usr/bin/nologin
    Checking if anyone except uuidd can change /
Processing /etc/passwd line: dbus:x:81:81:dbus:/:/usr/bin/nologin
    Checking if anyone except dbus can change /
Processing /etc/passwd line: nobody:x:99:99:nobody:/:/usr/bin/nologin
    Checking if anyone except nobody can change /
Processing /etc/passwd line: systemd-journal-gateway:x:191:191:systemd-journal-gateway:/:/usr/bin/nologin
    Checking if anyone except systemd-journal-gateway can change /
Processing /etc/passwd line: systemd-timesync:x:192:192:systemd-timesync:/:/usr/bin/nologin
    Checking if anyone except systemd-timesync can change /
Processing /etc/passwd line: systemd-network:x:193:193:systemd-network:/:/usr/bin/nologin
    Checking if anyone except systemd-network can change /
Processing /etc/passwd line: systemd-bus-proxy:x:194:194:systemd-bus-proxy:/:/usr/bin/nologin
    Checking if anyone except systemd-bus-proxy can change /
Processing /etc/passwd line: systemd-resolve:x:195:195:systemd-resolve:/:/usr/bin/nologin
    Checking if anyone except systemd-resolve can change /
Processing /etc/passwd line: systemd-journal-remote:x:999:999:systemd Journal Remote:/:/sbin/nologin
    Skipping user systemd-journal-remote.  They don't have a shell.
Processing /etc/passwd line: systemd-journal-upload:x:998:998:systemd Journal Upload:/:/sbin/nologin
    Skipping user systemd-journal-upload.  They don't have a shell.
Processing /etc/passwd line: nahoskins:x:1000:1000::/home/nahoskins:/bin/zsh
    Checking if anyone except nahoskins can change /home/nahoskins
Processing /etc/passwd line: polkitd:x:102:102:Policy Kit Daemon:/:/usr/bin/nologin
    Checking if anyone except polkitd can change /
Processing /etc/passwd line: lightdm:x:620:620:Light Display Manager:/var/lib/lightdm:/usr/bin/nologin
    Checking if anyone except lightdm can change /var/lib/lightdm
Processing /etc/passwd line: git:x:619:619:git daemon user:/:/bin/bash
    Checking if anyone except git can change /
Processing /etc/passwd line: avahi:x:84:84:avahi:/:/bin/false
    Skipping user avahi.  They don't have a shell.
Processing /etc/passwd line: colord:x:124:124::/var/lib/colord:/bin/false
    Skipping user colord.  They don't have a shell.
Processing /etc/passwd line: nvidia-persistenced:x:143:143:NVIDIA Persistence Daemon:/:/sbin/nologin
    Skipping user nvidia-persistenced.  They don't have a shell.
Processing /etc/passwd line: mongodb:x:618:2::/var/lib/mongodb:/bin/bash
    Checking if anyone except mongodb can change /var/lib/mongodb
Processing /etc/passwd line: mpd:x:45:45::/var/lib/mpd:/bin/false
    Skipping user mpd.  They don't have a shell.
Processing /etc/passwd line: transmission:x:169:169:Transmission BitTorrent Client:/var/lib/transmission:/bin/false
    Skipping user transmission.  They don't have a shell.
Processing /etc/passwd line: bitlbee:x:65:65:bitlbee:/var/lib/bitlbee:/bin/false
    Skipping user bitlbee.  They don't have a shell.
Processing /etc/passwd line: dnsmasq:x:617:617:dnsmasq daemon:/:/usr/bin/nologin
    Checking if anyone except dnsmasq can change /
Processing /etc/passwd line: postgres:x:88:88:PostgreSQL user:/var/lib/postgres:/bin/bash
    Checking if anyone except postgres can change /var/lib/postgres

############################################
Checking for readable sensitive files in home directories
############################################
    Checking if anyone except nahoskins can read file /home/nahoskins/.netrc
    Checking if anyone except nahoskins can read file /home/nahoskins/.ssh/id_rsa
    Checking if anyone except nahoskins can read file /home/nahoskins/.bash_history

############################################
Checking SUID/SGID programs
############################################
Skipping checks of SUID/SGID programs (it's slow!).  Run again in 'detailed' mode.

############################################
Checking fscaps programs
############################################
Skipping checks of fscaps programs (it's slow!).  Run again in 'detailed' mode.

############################################
Checking for cleartext subversion passwords in home directories
############################################
[UPC024] WARNING: Cleartext subversion passsword file: /home/nahoskins/.subversion/auth/svn.simple/*

############################################
Checking for Private SSH Keys in home directories
############################################
[UPC025] WARNING: Encrypted private SSH key found in /home/nahoskins/.ssh/id_rsa

############################################
Checking for Public SSH Keys in home directories
############################################

############################################
Checking classpath permissions for Java processes
############################################

############################################
Checking for SSH agents
############################################
No SSH agents found

############################################
Checking for GPG agents
############################################
No GPG agents found

############################################
Checking startup files (init.d / rc.d) aren't writable
############################################
Processing startup script /etc/init.d/vmware
    Checking if anyone except root can change /etc/init.d/vmware

############################################
Checking if running programs are writable
############################################
------------------------
PID:           1
Owner:         root
Program path:  /sbin/init
    Checking if anyone except root can change /sbin/init
------------------------
PID:           10
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           103
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           104
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           10478
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           10599
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           10966
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           11
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           112
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           113
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           114
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           115
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           11623
Owner:         nahoskins
Program path:  /usr/bin/xterm
    Checking if anyone except nahoskins can change /usr/bin/xterm
------------------------
PID:           11625
Owner:         nahoskins
Program path:  /usr/bin/zsh
    Checking if anyone except nahoskins can change /usr/bin/zsh
------------------------
PID:           11668
Owner:         nahoskins
Program path:  /usr/bin/python3.5
    Checking if anyone except nahoskins can change /usr/bin/python3.5
------------------------
PID:           11768
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           11992
Owner:         nahoskins
Program path:  /usr/bin/zsh
    Checking if anyone except nahoskins can change /usr/bin/zsh
------------------------
PID:           12
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           12146
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           122
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           123
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           124
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           13
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           13604
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           14
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           144
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           145
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           1519
Owner:         nahoskins
Program path:  /usr/lib/vmware/bin/vmware-vmx
    Checking if anyone except nahoskins can change /usr/lib/vmware/bin/vmware-vmx
------------------------
PID:           16
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           165
Owner:         root
Program path:  /usr/lib/systemd/systemd-journald
    Checking if anyone except root can change /usr/lib/systemd/systemd-journald
------------------------
PID:           17
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           17639
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           18
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           19
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           19025
Owner:         nahoskins
Program path:  /usr/bin/bash
    Checking if anyone except nahoskins can change /usr/bin/bash
------------------------
PID:           2
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           204
Owner:         root
Program path:  /usr/lib/systemd/systemd-udevd
    Checking if anyone except root can change /usr/lib/systemd/systemd-udevd
------------------------
PID:           21
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           22
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           23
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           23565
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           24
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           250
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           26
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           27
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           2707
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           28
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           28135
ERROR: Can't find full path of running program: wpa_supplicant-q-B-P/run/wpa_supplicant_wireless0.pid-iwireless0-Dnl80211,wext-c/run/network/wpa_supplicant_wireless0.conf
Owner:         root
------------------------
PID:           28282
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           28371
ERROR: Can't find full path of running program: dhcpcd-4-q-t30-Lwireless0
Owner:         root
------------------------
PID:           29
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           29074
Owner:         nahoskins
Program path:  /usr/bin/xflux
    Checking if anyone except nahoskins can change /usr/bin/xflux
------------------------
PID:           291
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           297
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           3
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           30
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           31
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           319
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           32
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           320
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           322
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           323
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           325
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           326
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           33
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           334
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           335
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           336
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           337
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           34
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           35
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           358
Owner:         root
Program path:  /usr/lib/systemd/systemd-logind
    Checking if anyone except root can change /usr/lib/systemd/systemd-logind
------------------------
PID:           36
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           361
Owner:         mpd
Program path:  /usr/bin/mpd
    Checking if anyone except mpd can change /usr/bin/mpd
------------------------
PID:           362
Owner:         dbus
Program path:  /usr/bin/dbus-daemon
    Checking if anyone except dbus can change /usr/bin/dbus-daemon
------------------------
PID:           364
Owner:         bitlbee
Program path:  /usr/bin/bitlbee
    Checking if anyone except bitlbee can change /usr/bin/bitlbee
------------------------
PID:           365
Owner:         root
Program path:  /usr/lib/bluetooth/bluetoothd
    Checking if anyone except root can change /usr/lib/bluetooth/bluetoothd
------------------------
PID:           367
Owner:         root
Program path:  /usr/bin/pommed
    Checking if anyone except root can change /usr/bin/pommed
------------------------
PID:           37
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           371
Owner:         root
Program path:  /sbin/agetty
    Checking if anyone except root can change /sbin/agetty
------------------------
PID:           38
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           380
Owner:         root
Program path:  /usr/bin/vmware-usbarbitrator
    Checking if anyone except root can change /usr/bin/vmware-usbarbitrator
------------------------
PID:           3975
Owner:         polkitd
Program path:  /usr/lib/polkit-1/polkitd
    Checking if anyone except polkitd can change /usr/lib/polkit-1/polkitd
------------------------
PID:           40
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           41
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           42
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           47
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           478
Owner:         root
Program path:  /usr/lib/vmware/bin/vmware-vmblock-fuse
    Checking if anyone except root can change /usr/lib/vmware/bin/vmware-vmblock-fuse
------------------------
PID:           5
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           51
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           52
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           535
Owner:         root
Program path:  /usr/bin/vmnet-bridge
    Checking if anyone except root can change /usr/bin/vmnet-bridge
------------------------
PID:           543
Owner:         root
Program path:  /usr/bin/vmnet-netifup
    Checking if anyone except root can change /usr/bin/vmnet-netifup
------------------------
PID:           548
Owner:         root
Program path:  /usr/bin/vmnet-dhcpd
    Checking if anyone except root can change /usr/bin/vmnet-dhcpd
------------------------
PID:           551
Owner:         root
Program path:  /usr/bin/vmnet-natd
    Checking if anyone except root can change /usr/bin/vmnet-natd
------------------------
PID:           553
Owner:         root
Program path:  /usr/bin/vmnet-netifup
    Checking if anyone except root can change /usr/bin/vmnet-netifup
------------------------
PID:           558
Owner:         root
Program path:  /usr/bin/vmnet-dhcpd
    Checking if anyone except root can change /usr/bin/vmnet-dhcpd
------------------------
PID:           570
Owner:         root
Program path:  /usr/sbin/vmware-authdlauncher
    Checking if anyone except root can change /usr/sbin/vmware-authdlauncher
------------------------
PID:           574
ERROR: Can't find full path of running program: login -- nahoskins
Owner:         root
------------------------
PID:           577
ERROR: Can't find full path of running program: avahi-daemon: running [nahoskins.local]
Owner:         avahi
------------------------
PID:           578
ERROR: Can't find full path of running program: avahi-daemon: chroot helper
Owner:         avahi
------------------------
PID:           584
Owner:         nahoskins
Program path:  /usr/lib/systemd/systemd
    Checking if anyone except nahoskins can change /usr/lib/systemd/systemd
------------------------
PID:           586
ERROR: Can't find full path of running program: (sd-pam)
Owner:         nahoskins
------------------------
PID:           589
Owner:         nahoskins
Program path:  /usr/bin/zsh
    Checking if anyone except nahoskins can change /usr/bin/zsh
------------------------
PID:           617
Owner:         nahoskins
Program path:  /usr/bin/bash
    Checking if anyone except nahoskins can change /usr/bin/bash
------------------------
PID:           639
Owner:         nahoskins
Program path:  /usr/bin/xinit
    Checking if anyone except nahoskins can change /usr/bin/xinit
------------------------
PID:           640
Owner:         root
Program path:  /usr/lib/xorg-server/Xorg
    Checking if anyone except root can change /usr/lib/xorg-server/Xorg
------------------------
PID:           650
Owner:         nahoskins
Program path:  /usr/bin/awesome
    Checking if anyone except nahoskins can change /usr/bin/awesome
------------------------
PID:           656
Owner:         nahoskins
Program path:  /usr/bin/dbus-daemon
    Checking if anyone except nahoskins can change /usr/bin/dbus-daemon
------------------------
PID:           6759
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           6897
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           7
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           70
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           7035
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           713
Owner:         nahoskins
Program path:  /usr/bin/compton
    Checking if anyone except nahoskins can change /usr/bin/compton
------------------------
PID:           731
Owner:         nahoskins
Program path:  /usr/bin/conky
    Checking if anyone except nahoskins can change /usr/bin/conky
------------------------
PID:           7648
Owner:         nahoskins
Program path:  /usr/bin/xterm
    Checking if anyone except nahoskins can change /usr/bin/xterm
------------------------
PID:           7650
Owner:         nahoskins
Program path:  /usr/bin/zsh
    Checking if anyone except nahoskins can change /usr/bin/zsh
------------------------
PID:           77
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           7739
Owner:         nahoskins
Program path:  /usr/bin/w3m
    Checking if anyone except nahoskins can change /usr/bin/w3m
------------------------
PID:           78
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           8
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           80
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           809
Owner:         nahoskins
Program path:  /usr/lib/vmware/bin/appLoader
    Checking if anyone except nahoskins can change /usr/lib/vmware/bin/appLoader
------------------------
PID:           8146
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           82
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           852
Owner:         nahoskins
Program path:  /usr/lib/GConf/gconfd-2
    Checking if anyone except nahoskins can change /usr/lib/GConf/gconfd-2
------------------------
PID:           9
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           974
Owner:         nahoskins
Program path:  /usr/lib/gvfs/gvfsd
    Checking if anyone except nahoskins can change /usr/lib/gvfs/gvfsd
------------------------
PID:           994
Owner:         nahoskins
Program path:  /usr/lib/gvfs/gvfsd-fuse
    Checking if anyone except nahoskins can change /usr/lib/gvfs/gvfsd-fuse

############################################
Checking exploit mitigation
############################################
