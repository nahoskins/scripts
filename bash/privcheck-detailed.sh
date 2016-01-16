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
        RX packets 1673343  bytes 97041518 (92.5 MiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 1673343  bytes 97041518 (92.5 MiB)
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
        RX packets 479416  bytes 114455165 (109.1 MiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 367520  bytes 49909609 (47.5 MiB)
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
Checking SUID-root program /mnt/arch_root/usr/bin/ksu: -rwsr-xr-x 1 root root 52192 Feb 12  2015 /mnt/arch_root/usr/bin/ksu
    Checking if anyone except root can change /usr/lib/libkrb5.so.3
    Checking if anyone except root can change /usr/lib/libk5crypto.so.3
    Checking if anyone except root can change /usr/lib/libcom_err.so.2
    Checking if anyone except root can change /usr/lib/libkrb5support.so.0
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /usr/lib/libkeyutils.so.1
    Checking if anyone except root can change /usr/lib/libresolv.so.2
    Checking if anyone except root can change /usr/lib/libpthread.so.0
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /usr/lib/libdl.so.2
    Checking if anyone except root can change /
    Checking if anyone except root can change /bin
    Checking if anyone except root can change /bin/csh
Checking SUID-root program /opt/google/chrome-beta/chrome-sandbox: -rwsr-xr-x 1 root root 14544 Apr  7  2015 /opt/google/chrome-beta/chrome-sandbox
    Checking if anyone except root can change /usr/lib/libpthread.so.0
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /
    Checking if anyone except root can change /proc/
    Checking if anyone except root can change /proc/self/fd
[UPC001] WARNING: /opt/google/chrome-beta/chrome-sandbox is SUID root. /opt/google/chrome-beta/chrome-sandbox contains the string /proc/self/fd. The user nahoskins can write to /proc/self/fd
[UPC001] WARNING: /opt/google/chrome-beta/chrome-sandbox is SUID root. /opt/google/chrome-beta/chrome-sandbox contains the string /proc/self/fd. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/self/fdinfo
[UPC001] WARNING: /opt/google/chrome-beta/chrome-sandbox is SUID root. /opt/google/chrome-beta/chrome-sandbox contains the string /proc/self/fdinfo. The user nahoskins can write to /proc/self/fdinfo
[UPC001] WARNING: /opt/google/chrome-beta/chrome-sandbox is SUID root. /opt/google/chrome-beta/chrome-sandbox contains the string /proc/self/fdinfo. The user nahoskins can write to /proc/self
Checking SUID-root program /usr/bin/ksu: -rwsr-xr-x 1 root root 52176 Jul  7 02:34 /usr/bin/ksu
    Checking if anyone except root can change /usr/lib/libkrb5.so.3
    Checking if anyone except root can change /usr/lib/libk5crypto.so.3
    Checking if anyone except root can change /usr/lib/libcom_err.so.2
    Checking if anyone except root can change /usr/lib/libkrb5support.so.0
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /usr/lib/libkeyutils.so.1
    Checking if anyone except root can change /usr/lib/libresolv.so.2
    Checking if anyone except root can change /usr/lib/libpthread.so.0
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /usr/lib/libdl.so.2
    Checking if anyone except root can change /
    Checking if anyone except root can change /bin
    Checking if anyone except root can change /bin/csh
Checking SUID-root program /usr/bin/expiry: -rwsr-xr-x 1 root root 23584 Mar 15  2015 /usr/bin/expiry
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /etc/gshadow
    Checking if anyone except root can change /usr/bin/passwd
    Checking if anyone except root can change /usr/share/locale
Checking SUID-root program /usr/bin/weston-launch: -rwsr-xr-x 1 root root 19008 Sep 22 17:10 /usr/bin/weston-launch
    Checking if anyone except root can change /usr/lib/libpam.so.0
    Checking if anyone except root can change /usr/lib/libsystemd.so.0
    Checking if anyone except root can change /usr/lib/libdrm.so.2
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /usr/lib/libdl.so.2
    Checking if anyone except root can change /usr/lib/librt.so.1
    Checking if anyone except root can change /usr/lib/libm.so.6
    Checking if anyone except root can change /usr/lib/libresolv.so.2
    Checking if anyone except root can change /usr/lib/liblzma.so.5
    Checking if anyone except root can change /usr/lib/liblz4.so.1
    Checking if anyone except root can change /usr/lib/libgcrypt.so.20
    Checking if anyone except root can change /usr/lib/libgpg-error.so.0
    Checking if anyone except root can change /usr/lib/libcap.so.2
    Checking if anyone except root can change /usr/lib/libpthread.so.0
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /usr/lib/libattr.so.1
    Checking if anyone except root can change /bin/sh
    Checking if anyone except root can change /dev/tty0
    Checking if anyone except root can change /usr/bin/weston
Checking SGID-locate program /usr/bin/locate: -rwxr-sr-x 1 root locate 39520 Dec 14  2014 /usr/bin/locate
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /I9D
    Checking if anyone except root can change /O
    Checking if anyone except root can change /usr/share/locale
Checking SUID-root program /usr/bin/vmware-mount: -rwsr-xr-x 1 root root 799704 Nov 23 21:36 /usr/bin/vmware-mount
    Checking if anyone except root can change /usr/lib/libdl.so.2
    Checking if anyone except root can change /usr/lib/libz.so.1
    Checking if anyone except root can change /usr/lib/libgcc_s.so.1
    Checking if anyone except root can change /usr/lib/libpthread.so.0
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /
    Checking if anyone except root can change /0123
    Checking if anyone except root can change /1
    Checking if anyone except root can change /9t
    Checking if anyone except root can change /A
    Checking if anyone except root can change /Alaska
    Checking if anyone except root can change /Aleutian
    Checking if anyone except root can change /Algiers
    Checking if anyone except root can change /Anadyr
    Checking if anyone except root can change /Asuncion
    Checking if anyone except root can change /Athens
    Checking if anyone except root can change /Atlantic
    Checking if anyone except root can change /Auckland
    Checking if anyone except root can change /Azores
    Checking if anyone except root can change /Baghdad
    Checking if anyone except root can change /Baku
    Checking if anyone except root can change /bin
    Checking if anyone except root can change /Casablanca
    Checking if anyone except root can change /Central
    Checking if anyone except root can change /Chatham
    Checking if anyone except root can change /Choibalsan
    Checking if anyone except root can change /Continental
    Checking if anyone except root can change /Cuiaba
    Checking if anyone except root can change /D9D
    Checking if anyone except root can change /desktop/gnome/interface/accessibility
    Checking if anyone except root can change /dev/null
[UPC004] WARNING: /usr/bin/vmware-mount is SUID root. /usr/bin/vmware-mount contains the string /dev/null. World write is set for /dev/null
    Checking if anyone except root can change /dev/urandom
[UPC004] WARNING: /usr/bin/vmware-mount is SUID root. /usr/bin/vmware-mount contains the string /dev/urandom. World write is set for /dev/urandom
    Checking if anyone except root can change /Dublin
    Checking if anyone except root can change /East
    Checking if anyone except root can change /EasterIsland
    Checking if anyone except root can change /Eastern
    Checking if anyone except root can change /El_Aaiun
    Checking if anyone except root can change /etc/annvix-release
    Checking if anyone except root can change /etc/arch-release
    Checking if anyone except root can change /etc/arklinux-release
    Checking if anyone except root can change /etc/aurox-release
    Checking if anyone except root can change /etc/blackcat-release
    Checking if anyone except root can change /etc/cobalt-release
    Checking if anyone except root can change /etc/conectiva-release
    Checking if anyone except root can change /etc/debian_release
    Checking if anyone except root can change /etc/debian_version
    Checking if anyone except root can change /etc/e-smith-release
    Checking if anyone except root can change /etc/fedora-release
    Checking if anyone except root can change /etc/gentoo-release
    Checking if anyone except root can change /etc/immunix-release
    Checking if anyone except root can change /etc/knoppix_version
    Checking if anyone except root can change /etc/lfs-release
    Checking if anyone except root can change /etc/linuxppc-release
    Checking if anyone except root can change /etc/localtime
    Checking if anyone except root can change /etc/lsb-release
    Checking if anyone except root can change /etc/mandrakelinux-release
    Checking if anyone except root can change /etc/mandrake-release
    Checking if anyone except root can change /etc/mandriva-release
    Checking if anyone except root can change /etc/mklinux-release
    Checking if anyone except root can change /etc/mtab
[UPC001] WARNING: /usr/bin/vmware-mount is SUID root. /usr/bin/vmware-mount contains the string /etc/mtab. The user nahoskins can write to /etc/mtab
    Checking if anyone except root can change /etc/nld-release
    Checking if anyone except root can change /etc/novell-release
    Checking if anyone except root can change /etc/oracle-release
    Checking if anyone except root can change /etc/pld-release
    Checking if anyone except root can change /etc/redhat-release
    Checking if anyone except root can change /etc/redhat_version
    Checking if anyone except root can change /etc/release
    Checking if anyone except root can change /etc/slackware-release
    Checking if anyone except root can change /etc/slackware-version
    Checking if anyone except root can change /etc/sles-release
    Checking if anyone except root can change /etc/sun-release
    Checking if anyone except root can change /etc/SuSE-release
    Checking if anyone except root can change /etc/tinysofa-release
    Checking if anyone except root can change /etc/turbolinux-release
    Checking if anyone except root can change /etc/ultrapenguin-release
    Checking if anyone except root can change /etc/UnitedLinux-release
    Checking if anyone except root can change /etc/va-release
    Checking if anyone except root can change /etc/vmware
    Checking if anyone except root can change /etc/vmware/config
    Checking if anyone except root can change /etc/yellowdog-release
    Checking if anyone except root can change /Eucla
    Checking if anyone except root can change /fonts
    Checking if anyone except root can change /Godthab
    Checking if anyone except root can change /Guatemala
    Checking if anyone except root can change /H
    Checking if anyone except root can change /H9
    Checking if anyone except root can change /Havana
    Checking if anyone except root can change /Hovd
    Checking if anyone except root can change /icu
    Checking if anyone except root can change /Irkutsk
    Checking if anyone except root can change /Jerusalem
    Checking if anyone except root can change /Kamchatka
    Checking if anyone except root can change /Krasnoyarsk
    Checking if anyone except root can change /L9
    Checking if anyone except root can change /lib/gio/modules
    Checking if anyone except root can change /London
    Checking if anyone except root can change /Lord_Howe
    Checking if anyone except root can change /Magadan
    Checking if anyone except root can change /messages
    Checking if anyone except root can change /Miquelon
    Checking if anyone except root can change /Montevideo
    Checking if anyone except root can change /Moscow
    Checking if anyone except root can change /Mountain
    Checking if anyone except root can change /Novosibirsk
    Checking if anyone except root can change /Omsk
    Checking if anyone except root can change /Pacific
    Checking if anyone except root can change /pango/pangorc
    Checking if anyone except root can change /Pitcairn
    Checking if anyone except root can change /proc/cpuinfo
    Checking if anyone except root can change /proc/meminfo
    Checking if anyone except root can change /proc/self/exe
[UPC001] WARNING: /usr/bin/vmware-mount is SUID root. /usr/bin/vmware-mount contains the string /proc/self/exe. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/self/statm
[UPC001] WARNING: /usr/bin/vmware-mount is SUID root. /usr/bin/vmware-mount contains the string /proc/self/statm. The user nahoskins can write to /proc/self/statm
[UPC001] WARNING: /usr/bin/vmware-mount is SUID root. /usr/bin/vmware-mount contains the string /proc/self/statm. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/sys/kernel/core_pattern
    Checking if anyone except root can change /proc/sys/kernel/core_uses_pid
    Checking if anyone except root can change /proc/uptime
    Checking if anyone except root can change /Sakhalin
    Checking if anyone except root can change /Samara
    Checking if anyone except root can change /Saskatchewan
    Checking if anyone except root can change /Scoresbysund
    Checking if anyone except root can change /South
    Checking if anyone except root can change /Stanley
    Checking if anyone except root can change /St_Johns
    Checking if anyone except root can change /Sydney
    Checking if anyone except root can change /tmp
[UPC003] WARNING: /usr/bin/vmware-mount is SUID root. /usr/bin/vmware-mount contains the string /tmp. World write is set for /tmp (but sticky bit set)
    Checking if anyone except root can change //TRANSLIT
    Checking if anyone except root can change /Tripoli
    Checking if anyone except root can change /u
    Checking if anyone except root can change /Ulaanbaatar
    Checking if anyone except root can change /uSH
    Checking if anyone except root can change /usr/bin/lsb_release
    Checking if anyone except root can change /usr/lib32
    Checking if anyone except root can change /usr/lib/vmware
    Checking if anyone except root can change /usr/share/zoneinfo/
    Checking if anyone except root can change /var/lock
    Checking if anyone except root can change /var/log/vmware
    Checking if anyone except root can change /Vladivostok
    Checking if anyone except root can change /Volgograd
    Checking if anyone except root can change /West
    Checking if anyone except root can change /wHH
    Checking if anyone except root can change /Windhoek
    Checking if anyone except root can change /Yakutsk
    Checking if anyone except root can change /Yekaterinburg
    Checking if anyone except root can change /Yerevan
Checking SUID-root program /usr/bin/fusermount: -rwsr-xr-x 1 root root 31344 May 22  2015 /usr/bin/fusermount
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /
    Checking if anyone except root can change /bin/mount
    Checking if anyone except root can change /bin/umount
    Checking if anyone except root can change /dev/fuse
[UPC004] WARNING: /usr/bin/fusermount is SUID root. /usr/bin/fusermount contains the string /dev/fuse. World write is set for /dev/fuse
    Checking if anyone except root can change /etc/mtab
[UPC001] WARNING: /usr/bin/fusermount is SUID root. /usr/bin/fusermount contains the string /etc/mtab. The user nahoskins can write to /etc/mtab
    Checking if anyone except root can change /proc/filesystems
    Checking if anyone except root can change /proc/fs/fuse/dev
    Checking if anyone except root can change /proc/fs/fuse/version
    Checking if anyone except root can change /proc/mounts
[UPC001] WARNING: /usr/bin/fusermount is SUID root. /usr/bin/fusermount contains the string /proc/mounts. The user nahoskins can write to /proc/mounts
    Checking if anyone except root can change /twH
Checking SUID-root program /usr/bin/nvidia-modprobe: -rwsr-xr-x 1 root root 25432 Sep  3 23:25 /usr/bin/nvidia-modprobe
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /
    Checking if anyone except root can change /dev/nvidiactl
[UPC004] WARNING: /usr/bin/nvidia-modprobe is SUID root. /usr/bin/nvidia-modprobe contains the string /dev/nvidiactl. World write is set for /dev/nvidiactl
    Checking if anyone except root can change /dev/nvidia-uvm
    Checking if anyone except root can change /proc/devices
    Checking if anyone except root can change /proc/driver/nvidia/params
    Checking if anyone except root can change /proc/modules
    Checking if anyone except root can change /proc/sys/kernel/modprobe
    Checking if anyone except root can change /sbin
    Checking if anyone except root can change /sbin/mo
Checking SUID-root program /usr/bin/sg: -rwsr-xr-x 1 root root 36888 Mar 15  2015 /usr/bin/sg
    Checking if anyone except root can change /usr/lib/libcrypt.so.1
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /bin/sh
    Checking if anyone except root can change /dev/
    Checking if anyone except root can change /etc/gshadow
    Checking if anyone except root can change /usr/share/locale
Checking SUID-root program /usr/bin/kismet_capture: -r-sr-x--- 1 root kismet 737936 Sep  6 13:53 /usr/bin/kismet_capture
Checking SUID-root program /usr/bin/sudo: -rwsr-xr-x 1 root root 122048 Jul 22 11:52 /usr/bin/sudo
    Checking if anyone except root can change /usr/lib/libutil.so.1
    Checking if anyone except root can change /usr/lib/sudo/libsudo_util.so.0
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /usr/lib/libdl.so.2
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /
    Checking if anyone except root can change /_AXH
    Checking if anyone except root can change /bin/sh
    Checking if anyone except root can change /dev/
    Checking if anyone except root can change /dev/console
    Checking if anyone except root can change /dev/fd/
[UPC001] WARNING: /usr/bin/sudo is SUID root. /usr/bin/sudo contains the string /dev/fd/. The user nahoskins can write to /dev/fd/
[UPC001] WARNING: /usr/bin/sudo is SUID root. /usr/bin/sudo contains the string /dev/fd/. The user nahoskins can write to /dev/fd
    Checking if anyone except root can change /dev/null
[UPC004] WARNING: /usr/bin/sudo is SUID root. /usr/bin/sudo contains the string /dev/null. World write is set for /dev/null
    Checking if anyone except root can change /dev/pts/
    Checking if anyone except root can change /dev/stderr
[UPC001] WARNING: /usr/bin/sudo is SUID root. /usr/bin/sudo contains the string /dev/stderr. The user nahoskins can write to /dev/stderr
    Checking if anyone except root can change /dev/stdin
[UPC001] WARNING: /usr/bin/sudo is SUID root. /usr/bin/sudo contains the string /dev/stdin. The user nahoskins can write to /dev/stdin
    Checking if anyone except root can change /dev/stdout
[UPC001] WARNING: /usr/bin/sudo is SUID root. /usr/bin/sudo contains the string /dev/stdout. The user nahoskins can write to /dev/stdout
    Checking if anyone except root can change /dev/term/
    Checking if anyone except root can change /dev/tty
[UPC004] WARNING: /usr/bin/sudo is SUID root. /usr/bin/sudo contains the string /dev/tty. World write is set for /dev/tty
    Checking if anyone except root can change /dev/vt/
    Checking if anyone except root can change /dev/wscons
    Checking if anyone except root can change /dev/zcons/
    Checking if anyone except root can change /-K
    Checking if anyone except root can change /O
    Checking if anyone except root can change /usr
    Checking if anyone except root can change /usr/lib/sudo
    Checking if anyone except root can change /usr/lib/sudo/
    Checking if anyone except root can change /usr/share/locale
    Checking if anyone except root can change /usr/tmp/
    Checking if anyone except root can change /var/tmp/
[UPC003] WARNING: /usr/bin/sudo is SUID root. /usr/bin/sudo contains the string /var/tmp/. World write is set for /var/tmp/ (but sticky bit set)
[UPC003] WARNING: /usr/bin/sudo is SUID root. /usr/bin/sudo contains the string /var/tmp/. World write is set for /var/tmp (but sticky bit set)
Checking SUID-root program /usr/bin/mount: -rwsr-xr-x 1 root root 40144 Oct  7 18:30 /usr/bin/mount
    Checking if anyone except root can change /usr/lib/libmount.so.1
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /usr/lib/libblkid.so.1
    Checking if anyone except root can change /usr/lib/libuuid.so.1
    Checking if anyone except root can change /usr/lib/librt.so.1
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /usr/lib/libpthread.so.0
    Checking if anyone except root can change /dm-
    Checking if anyone except root can change /etc/fstab
    Checking if anyone except root can change /etc/mtab
[UPC001] WARNING: /usr/bin/mount is SUID root. /usr/bin/mount contains the string /etc/mtab. The user nahoskins can write to /etc/mtab
    Checking if anyone except root can change /H
    Checking if anyone except root can change /usr/share/locale
Checking SUID-root program /usr/bin/newgrp: -rwsr-xr-x 1 root root 14808 Oct  7 18:30 /usr/bin/newgrp
    Checking if anyone except root can change /usr/lib/libcrypt.so.1
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /bin/sh
    Checking if anyone except root can change /usr/share/locale
Checking SUID-root program /usr/bin/vmware-authd: -rwsr-xr-x 1 root root 1047904 Nov 23 21:35 /usr/bin/vmware-authd
    Checking if anyone except root can change /usr/lib/libdl.so.2
    Checking if anyone except root can change /usr/lib/libcrypt.so.1
    Checking if anyone except root can change /usr/lib/libpthread.so.0
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /
    Checking if anyone except root can change /0123
    Checking if anyone except root can change /1
    Checking if anyone except root can change /9t
    Checking if anyone except root can change /A
    Checking if anyone except root can change /Alaska
    Checking if anyone except root can change /Aleutian
    Checking if anyone except root can change /Algiers
    Checking if anyone except root can change /Anadyr
    Checking if anyone except root can change /Asuncion
    Checking if anyone except root can change /Athens
    Checking if anyone except root can change /Atlantic
    Checking if anyone except root can change /Auckland
    Checking if anyone except root can change /Azores
    Checking if anyone except root can change /Baghdad
    Checking if anyone except root can change /Baku
    Checking if anyone except root can change /bin
    Checking if anyone except root can change /Casablanca
    Checking if anyone except root can change /Central
    Checking if anyone except root can change /Chatham
    Checking if anyone except root can change /Choibalsan
    Checking if anyone except root can change /conff
    Checking if anyone except root can change /Continental
    Checking if anyone except root can change /Cuiaba
    Checking if anyone except root can change /D9D
    Checking if anyone except root can change /dev/mem
    Checking if anyone except root can change /dev/null
[UPC004] WARNING: /usr/bin/vmware-authd is SUID root. /usr/bin/vmware-authd contains the string /dev/null. World write is set for /dev/null
    Checking if anyone except root can change /dev/urandom
[UPC004] WARNING: /usr/bin/vmware-authd is SUID root. /usr/bin/vmware-authd contains the string /dev/urandom. World write is set for /dev/urandom
    Checking if anyone except root can change /Dublin
    Checking if anyone except root can change /East
    Checking if anyone except root can change /EasterIsland
    Checking if anyone except root can change /Eastern
    Checking if anyone except root can change /El_Aaiun
    Checking if anyone except root can change /etc/annvix-release
    Checking if anyone except root can change /etc/arch-release
    Checking if anyone except root can change /etc/arklinux-release
    Checking if anyone except root can change /etc/aurox-release
    Checking if anyone except root can change /etc/blackcat-release
    Checking if anyone except root can change /etc/cobalt-release
    Checking if anyone except root can change /etc/conectiva-release
    Checking if anyone except root can change /etc/debian_release
    Checking if anyone except root can change /etc/debian_version
    Checking if anyone except root can change /etc/e-smith-release
    Checking if anyone except root can change /etc/fedora-release
    Checking if anyone except root can change /etc/gentoo-release
    Checking if anyone except root can change /etc/immunix-release
    Checking if anyone except root can change /etc/knoppix_version
    Checking if anyone except root can change /etc/lfs-release
    Checking if anyone except root can change /etc/linuxppc-release
    Checking if anyone except root can change /etc/localtime
    Checking if anyone except root can change /etc/lsb-release
    Checking if anyone except root can change /etc/mandrakelinux-release
    Checking if anyone except root can change /etc/mandrake-release
    Checking if anyone except root can change /etc/mandriva-release
    Checking if anyone except root can change /etc/mklinux-release
    Checking if anyone except root can change /etc/mtab
[UPC001] WARNING: /usr/bin/vmware-authd is SUID root. /usr/bin/vmware-authd contains the string /etc/mtab. The user nahoskins can write to /etc/mtab
    Checking if anyone except root can change /etc/nld-release
    Checking if anyone except root can change /etc/novell-release
    Checking if anyone except root can change /etc/oracle-release
    Checking if anyone except root can change /etc/passwd
    Checking if anyone except root can change /etc/pki/tls
    Checking if anyone except root can change /etc/pld-release
    Checking if anyone except root can change /etc/redhat-release
    Checking if anyone except root can change /etc/redhat_version
    Checking if anyone except root can change /etc/release
    Checking if anyone except root can change /etc/slackware-release
    Checking if anyone except root can change /etc/slackware-version
    Checking if anyone except root can change /etc/sles-release
    Checking if anyone except root can change /etc/ssl/certs
    Checking if anyone except root can change /etc/sun-release
    Checking if anyone except root can change /etc/SuSE-release
    Checking if anyone except root can change /etc/tinysofa-release
    Checking if anyone except root can change /etc/turbolinux-release
    Checking if anyone except root can change /etc/ultrapenguin-release
    Checking if anyone except root can change /etc/UnitedLinux-release
    Checking if anyone except root can change /etc/va-release
    Checking if anyone except root can change /etc/vmware
    Checking if anyone except root can change /etc/vmware/config
    Checking if anyone except root can change /etc/vmware/vm-list
    Checking if anyone except root can change /etc/vmwH
    Checking if anyone except root can change /etc/yellowdog-release
    Checking if anyone except root can change /Eucla
    Checking if anyone except root can change /Godthab
    Checking if anyone except root can change /Guatemala
    Checking if anyone except root can change /H
    Checking if anyone except root can change /Havana
    Checking if anyone except root can change /Hovd
    Checking if anyone except root can change /icu
    Checking if anyone except root can change /Irkutsk
    Checking if anyone except root can change /Jerusalem
    Checking if anyone except root can change /Kamchatka
    Checking if anyone except root can change /Krasnoyarsk
    Checking if anyone except root can change /L9
    Checking if anyone except root can change /London
    Checking if anyone except root can change /Lord_Howe
    Checking if anyone except root can change /Magadan
    Checking if anyone except root can change /messages
    Checking if anyone except root can change /Miquelon
    Checking if anyone except root can change /Montevideo
    Checking if anyone except root can change /Moscow
    Checking if anyone except root can change /Mountain
    Checking if anyone except root can change /Novosibirsk
    Checking if anyone except root can change /O
    Checking if anyone except root can change /Omsk
    Checking if anyone except root can change /Pacific
    Checking if anyone except root can change /password
    Checking if anyone except root can change /Pitcairn
    Checking if anyone except root can change /proc/cpuinfo
    Checking if anyone except root can change /proc/meminfo
    Checking if anyone except root can change /proc/self/exe
[UPC001] WARNING: /usr/bin/vmware-authd is SUID root. /usr/bin/vmware-authd contains the string /proc/self/exe. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/self/statm
[UPC001] WARNING: /usr/bin/vmware-authd is SUID root. /usr/bin/vmware-authd contains the string /proc/self/statm. The user nahoskins can write to /proc/self/statm
[UPC001] WARNING: /usr/bin/vmware-authd is SUID root. /usr/bin/vmware-authd contains the string /proc/self/statm. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/uptime
    Checking if anyone except root can change /Sakhalin
    Checking if anyone except root can change /Samara
    Checking if anyone except root can change /Saskatchewan
    Checking if anyone except root can change /sbin/authd
    Checking if anyone except root can change /Scoresbysund
    Checking if anyone except root can change /settings
    Checking if anyone except root can change /South
    Checking if anyone except root can change /Stanley
    Checking if anyone except root can change /St_Johns
    Checking if anyone except root can change /Sydney
    Checking if anyone except root can change /sys/firmware/efi/systab
    Checking if anyone except root can change /t
    Checking if anyone except root can change /tmp
[UPC003] WARNING: /usr/bin/vmware-authd is SUID root. /usr/bin/vmware-authd contains the string /tmp. World write is set for /tmp (but sticky bit set)
    Checking if anyone except root can change //TRANSLIT
    Checking if anyone except root can change /Tripoli
    Checking if anyone except root can change /u
    Checking if anyone except root can change /Ulaanbaatar
    Checking if anyone except root can change /uSH
    Checking if anyone except root can change /usr/bin
    Checking if anyone except root can change /usr/bin/lsb_release
    Checking if anyone except root can change /usr/lib/vmware
    Checking if anyone except root can change /usr/sbin/vmware-authd
    Checking if anyone except root can change /usr/sbin/vpxa
    Checking if anyone except root can change /usr/share/zoneinfo/
    Checking if anyone except root can change /var/lock
    Checking if anyone except root can change /var/log/vmware
    Checking if anyone except root can change /var/run/vmware
    Checking if anyone except root can change /var/run/vmware/authd_
    Checking if anyone except root can change /var/run/vmware/tickets/
    Checking if anyone except root can change /Vladivostok
    Checking if anyone except root can change /vmware-authd
    Checking if anyone except root can change /vmware-vmx
    Checking if anyone except root can change /vmware-vmx-debug
    Checking if anyone except root can change /vmware-vmx-stats
    Checking if anyone except root can change /Volgograd
    Checking if anyone except root can change /West
    Checking if anyone except root can change /wHH
    Checking if anyone except root can change /Windhoek
    Checking if anyone except root can change /Yakutsk
    Checking if anyone except root can change /Yekaterinburg
    Checking if anyone except root can change /Yerevan
Checking SUID-root program /usr/bin/newgidmap: -rwsr-xr-x 1 root root 33904 Mar 15  2015 /usr/bin/newgidmap
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /
    Checking if anyone except root can change /etc/subgid
    Checking if anyone except root can change /etc/subuid
    Checking if anyone except root can change /usr/sbin/nscd
Checking SUID-root program /usr/bin/su: -rwsr-xr-x 1 root root 31728 Oct  7 18:30 /usr/bin/su
    Checking if anyone except root can change /usr/lib/libpam.so.0
    Checking if anyone except root can change /usr/lib/libpam_misc.so.0
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /usr/lib/libdl.so.2
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /bin
    Checking if anyone except root can change /bin/sh
    Checking if anyone except root can change /dev/
    Checking if anyone except root can change /etc/defaults/runuser
    Checking if anyone except root can change /etc/defaults/su
    Checking if anyone except root can change /etc/hushlogins
    Checking if anyone except root can change /etc/shells
    Checking if anyone except root can change /N
    Checking if anyone except root can change /sbin
    Checking if anyone except root can change /usr/bin
    Checking if anyone except root can change /usr/local/bin
[UPC001] WARNING: /usr/bin/su is SUID root. /usr/bin/su contains the string /usr/local/bin. The user nahoskins can write to /usr/local/bin
[UPC001] WARNING: /usr/bin/su is SUID root. /usr/bin/su contains the string /usr/local/bin. The user nahoskins can write to /usr/local
    Checking if anyone except root can change /usr/local/sbin
[UPC001] WARNING: /usr/bin/su is SUID root. /usr/bin/su contains the string /usr/local/sbin. The user nahoskins can write to /usr/local/sbin
[UPC001] WARNING: /usr/bin/su is SUID root. /usr/bin/su contains the string /usr/local/sbin. The user nahoskins can write to /usr/local
    Checking if anyone except root can change /usr/sbin
    Checking if anyone except root can change /usr/share/locale
    Checking if anyone except root can change /var/log/btmp
Checking SUID-root program /usr/bin/newuidmap: -rwsr-xr-x 1 root root 33904 Mar 15  2015 /usr/bin/newuidmap
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /
    Checking if anyone except root can change /etc/subgid
    Checking if anyone except root can change /etc/subuid
    Checking if anyone except root can change /usr/sbin/nscd
Checking SGID-tty program /usr/bin/write: -rwxr-sr-x 1 root tty 14928 Oct  7 18:30 /usr/bin/write
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /dev/
    Checking if anyone except root can change /usr/share/locale
    Checking if anyone except root can change /var/run/utmp
Checking SUID-root program /usr/bin/gpasswd: -rwsr-xr-x 1 root root 68528 Mar 15  2015 /usr/bin/gpasswd
    Checking if anyone except root can change /usr/lib/libcrypt.so.1
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /etc/group
    Checking if anyone except root can change /etc/gshadow
    Checking if anyone except root can change /usr/sbin/nscd
    Checking if anyone except root can change /usr/share/locale
Checking SUID-root program /usr/bin/chsh: -rwsr-xr-x 1 root root 23384 Oct  7 18:30 /usr/bin/chsh
    Checking if anyone except root can change /usr/lib/libpam.so.0
    Checking if anyone except root can change /usr/lib/libpam_misc.so.0
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /usr/lib/libdl.so.2
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /bin/sh
    Checking if anyone except root can change /etc
    Checking if anyone except root can change /etc/passwd
    Checking if anyone except root can change /etc/shells
    Checking if anyone except root can change /tmp/
[UPC003] WARNING: /usr/bin/chsh is SUID root. /usr/bin/chsh contains the string /tmp/. World write is set for /tmp/ (but sticky bit set)
[UPC003] WARNING: /usr/bin/chsh is SUID root. /usr/bin/chsh contains the string /tmp/. World write is set for /tmp (but sticky bit set)
    Checking if anyone except root can change /usr/share/locale
Checking SUID-root program /usr/bin/chage: -rwsr-xr-x 1 root root 55288 Mar 15  2015 /usr/bin/chage
    Checking if anyone except root can change /usr/lib/libpam.so.0
    Checking if anyone except root can change /usr/lib/libpam_misc.so.0
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /usr/lib/libdl.so.2
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /
    Checking if anyone except root can change /etc/passwd
    Checking if anyone except root can change /etc/shadow
    Checking if anyone except root can change /Hc
    Checking if anyone except root can change /usr/sbin/nscd
    Checking if anyone except root can change /usr/share/locale
Checking SUID-root program /usr/bin/pkexec: -rwsr-xr-x 1 root root 23296 Aug 12 01:06 /usr/bin/pkexec
    Checking if anyone except root can change /usr/lib/libpam.so.0
    Checking if anyone except root can change /usr/lib/libpolkit-gobject-1.so.0
    Checking if anyone except root can change /usr/lib/libpolkit-agent-1.so.0
    Checking if anyone except root can change /usr/lib/libgobject-2.0.so.0
    Checking if anyone except root can change /usr/lib/libglib-2.0.so.0
    Checking if anyone except root can change /usr/lib/libpthread.so.0
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /usr/lib/libdl.so.2
    Checking if anyone except root can change /usr/lib/libgmodule-2.0.so.0
    Checking if anyone except root can change /usr/lib/libgio-2.0.so.0
    Checking if anyone except root can change /usr/lib/libsystemd.so.0
    Checking if anyone except root can change /usr/lib/libexpat.so.1
    Checking if anyone except root can change /usr/lib/libpcre.so.1
    Checking if anyone except root can change /usr/lib/libffi.so.6
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /usr/lib/libz.so.1
    Checking if anyone except root can change /usr/lib/libresolv.so.2
    Checking if anyone except root can change /usr/lib/librt.so.1
    Checking if anyone except root can change /usr/lib/libm.so.6
    Checking if anyone except root can change /usr/lib/liblzma.so.5
    Checking if anyone except root can change /usr/lib/liblz4.so.1
    Checking if anyone except root can change /usr/lib/libgcrypt.so.20
    Checking if anyone except root can change /usr/lib/libgpg-error.so.0
    Checking if anyone except root can change /usr/lib/libcap.so.2
    Checking if anyone except root can change /usr/lib/libattr.so.1
    Checking if anyone except root can change /bin
    Checking if anyone except root can change /etc/shells
    Checking if anyone except root can change /sbin
    Checking if anyone except root can change /t
    Checking if anyone except root can change /usr/bin
    Checking if anyone except root can change /usr/sbin
Checking SUID-root program /usr/bin/chfn: -rwsr-xr-x 1 root root 27568 Oct  7 18:30 /usr/bin/chfn
    Checking if anyone except root can change /usr/lib/libpam.so.0
    Checking if anyone except root can change /usr/lib/libpam_misc.so.0
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /usr/lib/libdl.so.2
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /etc
    Checking if anyone except root can change /etc/hushlogins
    Checking if anyone except root can change /etc/passwd
    Checking if anyone except root can change /jp
    Checking if anyone except root can change /tmp/
[UPC003] WARNING: /usr/bin/chfn is SUID root. /usr/bin/chfn contains the string /tmp/. World write is set for /tmp/ (but sticky bit set)
[UPC003] WARNING: /usr/bin/chfn is SUID root. /usr/bin/chfn contains the string /tmp/. World write is set for /tmp (but sticky bit set)
    Checking if anyone except root can change /usr/share/locale
Checking SGID-tty program /usr/bin/wall: -rwxr-sr-x 1 root tty 27360 Oct  7 18:30 /usr/bin/wall
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /dev/
    Checking if anyone except root can change /usr/share/locale
Checking SUID-root program /usr/bin/unix_chkpwd: -rwsr-sr-x 1 root root 31328 Jul 18 14:54 /usr/bin/unix_chkpwd
    Checking if anyone except root can change /usr/lib/libcrypt.so.1
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /
    Checking if anyone except root can change /0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz
    Checking if anyone except root can change /dev/urandom
[UPC004] WARNING: /usr/bin/unix_chkpwd is SUID root. /usr/bin/unix_chkpwd contains the string /dev/urandom. World write is set for /dev/urandom
    Checking if anyone except root can change /etc/npasswd
    Checking if anyone except root can change /etc/nshadow
    Checking if anyone except root can change /etc/passwd
    Checking if anyone except root can change /etc/security/nopasswd
    Checking if anyone except root can change /etc/security/opasswd
    Checking if anyone except root can change /etc/shadow
Checking SGID-root program /usr/bin/unix_chkpwd: -rwsr-sr-x 1 root root 31328 Jul 18 14:54 /usr/bin/unix_chkpwd
    Checking if anyone except root can change /usr/lib/libcrypt.so.1
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /
    Checking if anyone except root can change /0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz
    Checking if anyone except root can change /dev/urandom
[UPC004] WARNING: /usr/bin/unix_chkpwd is SGID root. /usr/bin/unix_chkpwd contains the string /dev/urandom. World write is set for /dev/urandom
    Checking if anyone except root can change /etc/npasswd
    Checking if anyone except root can change /etc/nshadow
    Checking if anyone except root can change /etc/passwd
    Checking if anyone except root can change /etc/security/nopasswd
    Checking if anyone except root can change /etc/security/opasswd
    Checking if anyone except root can change /etc/shadow
Checking SUID-root program /usr/bin/passwd: -rwsr-xr-x 1 root root 47224 Mar 15  2015 /usr/bin/passwd
    Checking if anyone except root can change /usr/lib/libpam.so.0
    Checking if anyone except root can change /usr/lib/libpam_misc.so.0
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /usr/lib/libdl.so.2
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /etc/passwd
    Checking if anyone except root can change /etc/shadow
    Checking if anyone except root can change /usr/sbin/nscd
    Checking if anyone except root can change /usr/share/locale
Checking SUID-root program /usr/bin/umount: -rwsr-xr-x 1 root root 27608 Oct  7 18:30 /usr/bin/umount
    Checking if anyone except root can change /usr/lib/libmount.so.1
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /usr/lib/libblkid.so.1
    Checking if anyone except root can change /usr/lib/libuuid.so.1
    Checking if anyone except root can change /usr/lib/librt.so.1
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /usr/lib/libpthread.so.0
    Checking if anyone except root can change /
    Checking if anyone except root can change /dm-
    Checking if anyone except root can change /etc/mtab
[UPC001] WARNING: /usr/bin/umount is SUID root. /usr/bin/umount contains the string /etc/mtab. The user nahoskins can write to /etc/mtab
    Checking if anyone except root can change /proc/self/mountinfo
[UPC001] WARNING: /usr/bin/umount is SUID root. /usr/bin/umount contains the string /proc/self/mountinfo. The user nahoskins can write to /proc/self/mountinfo
[UPC001] WARNING: /usr/bin/umount is SUID root. /usr/bin/umount contains the string /proc/self/mountinfo. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /t
    Checking if anyone except root can change /usr/share/locale
Checking SUID-root program /usr/bin/mount.cifs: -rwsr-sr-x 1 root root 35616 Jan 13  2015 /usr/bin/mount.cifs
    Checking if anyone except root can change /usr/lib/libcap-ng.so.0
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /
    Checking if anyone except root can change //
    Checking if anyone except root can change /etc/fstab
    Checking if anyone except root can change /etc/mtab
[UPC001] WARNING: /usr/bin/mount.cifs is SUID root. /usr/bin/mount.cifs contains the string /etc/mtab. The user nahoskins can write to /etc/mtab
    Checking if anyone except root can change /etc/mtaH
Checking SGID-root program /usr/bin/mount.cifs: -rwsr-sr-x 1 root root 35616 Jan 13  2015 /usr/bin/mount.cifs
    Checking if anyone except root can change /usr/lib/libcap-ng.so.0
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /
    Checking if anyone except root can change //
    Checking if anyone except root can change /etc/fstab
    Checking if anyone except root can change /etc/mtab
[UPC001] WARNING: /usr/bin/mount.cifs is SGID root. /usr/bin/mount.cifs contains the string /etc/mtab. The user nahoskins can write to /etc/mtab
    Checking if anyone except root can change /etc/mtaH
Checking SUID-root program /usr/lib/vmware/bin/vmware-vmx-debug: -rwsr-xr-x 1 root root 28154400 Nov 23 21:35 /usr/lib/vmware/bin/vmware-vmx-debug
    Checking if anyone except root can change /usr/lib/libpthread.so.0
    Checking if anyone except root can change /usr/lib/libdl.so.2
    Checking if anyone except root can change /usr/lib/librt.so.1
    Checking if anyone except root can change /usr/lib/libX11.so.6
    Checking if anyone except root can change /usr/lib/libXext.so.6
    Checking if anyone except root can change /usr/lib/libXinerama.so.1
    Checking if anyone except root can change /usr/lib/libXcursor.so.1
    Checking if anyone except root can change /usr/lib/libXtst.so.6
    Checking if anyone except root can change /usr/lib/libXi.so.6
    Checking if anyone except root can change /usr/lib/libstdc++.so.6
    Checking if anyone except root can change /usr/lib/libm.so.6
    Checking if anyone except root can change /usr/lib/libgcc_s.so.1
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /usr/lib/libxcb.so.1
    Checking if anyone except root can change /usr/lib/libXrender.so.1
    Checking if anyone except root can change /usr/lib/libXfixes.so.3
    Checking if anyone except root can change /usr/lib/libXau.so.6
    Checking if anyone except root can change /usr/lib/libXdmcp.so.6
    Checking if anyone except root can change /
    Checking if anyone except root can change /_
    Checking if anyone except root can change /-
    Checking if anyone except root can change //
    Checking if anyone except root can change //_
    Checking if anyone except root can change /0
    Checking if anyone except root can change /0123
    Checking if anyone except root can change /0I
    Checking if anyone except root can change /0LX
    Checking if anyone except root can change /0wp
    Checking if anyone except root can change /0y
    Checking if anyone except root can change /1
    Checking if anyone except root can change //123456779
    Checking if anyone except root can change /15
    Checking if anyone except root can change /1F
    Checking if anyone except root can change /1hD
    Checking if anyone except root can change /1UYBi
    Checking if anyone except root can change /1VGX
    Checking if anyone except root can change /2
    Checking if anyone except root can change /-2
    Checking if anyone except root can change /29V
    Checking if anyone except root can change /2fw
    Checking if anyone except root can change /2h
    Checking if anyone except root can change /2I
    Checking if anyone except root can change /2n
    Checking if anyone except root can change /2R
    Checking if anyone except root can change /2u
    Checking if anyone except root can change /2U
    Checking if anyone except root can change /2Yb
    Checking if anyone except root can change /2ybD
    Checking if anyone except root can change /3
    Checking if anyone except root can change /_3
    Checking if anyone except root can change /386
    Checking if anyone except root can change /3A
    Checking if anyone except root can change /3H
    Checking if anyone except root can change /3H1
    Checking if anyone except root can change /3IS
    Checking if anyone except root can change /3qGs
    Checking if anyone except root can change /4
    Checking if anyone except root can change /43
    Checking if anyone except root can change /43O
    Checking if anyone except root can change /4N
    Checking if anyone except root can change /4VN
    Checking if anyone except root can change /5
    Checking if anyone except root can change /54
    Checking if anyone except root can change /5aHC5
    Checking if anyone except root can change /5c
    Checking if anyone except root can change /5H
    Checking if anyone except root can change /5lgw
    Checking if anyone except root can change /5q
    Checking if anyone except root can change /5Q
    Checking if anyone except root can change /5R
    Checking if anyone except root can change /6
    Checking if anyone except root can change /60
    Checking if anyone except root can change /60o
    Checking if anyone except root can change /6S
    Checking if anyone except root can change /7
    Checking if anyone except root can change /7_
    Checking if anyone except root can change /79
    Checking if anyone except root can change /7C
    Checking if anyone except root can change /7d
    Checking if anyone except root can change /7dIR
    Checking if anyone except root can change /7e
    Checking if anyone except root can change /7Fm
    Checking if anyone except root can change /-7IP
    Checking if anyone except root can change /7l
    Checking if anyone except root can change /7L
    Checking if anyone except root can change /7rv
    Checking if anyone except root can change /8
    Checking if anyone except root can change /83
    Checking if anyone except root can change /8/9
    Checking if anyone except root can change /8/a
    Checking if anyone except root can change /8BR
    Checking if anyone except root can change /8d
    Checking if anyone except root can change /8D
    Checking if anyone except root can change /8o
    Checking if anyone except root can change /8q
    Checking if anyone except root can change /8Xf
    Checking if anyone except root can change /9
    Checking if anyone except root can change /9b
    Checking if anyone except root can change /9E
    Checking if anyone except root can change /9GF4
    Checking if anyone except root can change /9JC
    Checking if anyone except root can change /9k
    Checking if anyone except root can change /9M
    Checking if anyone except root can change /9S
    Checking if anyone except root can change /9t
    Checking if anyone except root can change /a
    Checking if anyone except root can change /A
    Checking if anyone except root can change /A4DVE
    Checking if anyone except root can change /a5
    Checking if anyone except root can change /A9
    Checking if anyone except root can change /A9FL
    Checking if anyone except root can change /Aa
    Checking if anyone except root can change /abort
    Checking if anyone except root can change /ac_adapter
    Checking if anyone except root can change /access/
    Checking if anyone except root can change /acpi
    Checking if anyone except root can change /action
    Checking if anyone except root can change /adminOverride/key/
    Checking if anyone except root can change /adminOverride/salt/
    Checking if anyone except root can change /Ae
    Checking if anyone except root can change /aj
    Checking if anyone except root can change /Ak
    Checking if anyone except root can change /Alaska
    Checking if anyone except root can change /Aleutian
    Checking if anyone except root can change /Algiers
    Checking if anyone except root can change /ALLOW
    Checking if anyone except root can change /allowCancel
    Checking if anyone except root can change /allowMKSGrab/
    Checking if anyone except root can change /alpha/
    Checking if anyone except root can change /ambiguous
    Checking if anyone except root can change /Anadyr
    Checking if anyone except root can change /answer
    Checking if anyone except root can change /AOw
    Checking if anyone except root can change /appHealthMonitor/appState
    Checking if anyone except root can change /appHealthMonitor/appStatus
    Checking if anyone except root can change /Aqu
    Checking if anyone except root can change /aRt
    Checking if anyone except root can change /Asuncion
    Checking if anyone except root can change /At
    Checking if anyone except root can change /Athens
    Checking if anyone except root can change /Atlantic
    Checking if anyone except root can change /attemptDnDUngrab/x
    Checking if anyone except root can change /attemptDnDUngrab/y
    Checking if anyone except root can change /Auckland
    Checking if anyone except root can change /audio
    Checking if anyone except root can change /authentication/type
    Checking if anyone except root can change /author
    Checking if anyone except root can change /AWI
    Checking if anyone except root can change /ay
    Checking if anyone except root can change /Azores
    Checking if anyone except root can change /b
    Checking if anyone except root can change /B
    Checking if anyone except root can change //B
    Checking if anyone except root can change /b8
    Checking if anyone except root can change /Baghdad
    Checking if anyone except root can change /Baku
    Checking if anyone except root can change /bandwidthCap
    Checking if anyone except root can change /base-addr
    Checking if anyone except root can change /battery
    Checking if anyone except root can change /bB
    Checking if anyone except root can change /bd
    Checking if anyone except root can change /BD/SD/TOM/TC/HH
    Checking if anyone except root can change /beginRecording/in/encodeEmptyFrames/
    Checking if anyone except root can change /beginRecording/in/filename/
    Checking if anyone except root can change /beginRecording/in/quality/
    Checking if anyone except root can change /beginRecording/out/index/
    Checking if anyone except root can change /bin
    Checking if anyone except root can change /bin/sh
    Checking if anyone except root can change /bit
    Checking if anyone except root can change /bitmapId/
    Checking if anyone except root can change /bootDelay
    Checking if anyone except root can change /bootDeviceClasses
    Checking if anyone except root can change /bootOrder
    Checking if anyone except root can change /bootRetryDelay
    Checking if anyone except root can change /bootRetryEnabled
    Checking if anyone except root can change /build/mts/release/bora-3160714/bora/build/build/buildroot-make-ws/beta/ws/vmcore-private/bootstrap/SUBDIRS
    Checking if anyone except root can change /build/mts/release/bora-3160714/bora/lib/public
    Checking if anyone except root can change /build/mts/release/bora-3160714/bora/public
    Checking if anyone except root can change /build/mts/release/bora-3160714/bora/vmcore/bootstrap
    Checking if anyone except root can change /build/mts/release/bora-3160714/bora/vmcore/decoder
    Checking if anyone except root can change /build/mts/release/bora-3160714/bora/vmcore/private
    Checking if anyone except root can change /build/mts/release/bora-3160714/bora/vmcore/public
    Checking if anyone except root can change /build/mts/release/bora-3160714/bora/vmcore/vmm/bt
    Checking if anyone except root can change /build/mts/release/bora-3160714/bora/vmcore/vmm/hv/public
    Checking if anyone except root can change /build/mts/release/bora-3160714/bora/vmcore/vmm/main
    Checking if anyone except root can change /build/mts/release/bora-3160714/bora/vmcore/vmm/mmu
    Checking if anyone except root can change /build/mts/release/bora-3160714/bora/vmcore/vmm/private
    Checking if anyone except root can change /build/mts/release/bora-3160714/bora/vmcore/vmm/public
    Checking if anyone except root can change /build/mts/release/bora-3160714/bora/vmx/public
    Checking if anyone except root can change /busy/allowCancel
    Checking if anyone except root can change /busy/cancel
    Checking if anyone except root can change /busy/op
    Checking if anyone except root can change /busy/progress
    Checking if anyone except root can change /busy/text
    Checking if anyone except root can change /button/lid
    Checking if anyone except root can change /bz
    Checking if anyone except root can change /c
    Checking if anyone except root can change /C
    Checking if anyone except root can change /c2
    Checking if anyone except root can change /C5o
    Checking if anyone except root can change /cache/blockSize
    Checking if anyone except root can change /cache/consistencyType
    Checking if anyone except root can change /cache/currentWarningPeriod/
    Checking if anyone except root can change /cache/enabled
    Checking if anyone except root can change /cache/expireTime/
    Checking if anyone except root can change /cache/mode
    Checking if anyone except root can change /cache/module
    Checking if anyone except root can change /cache/moduleVersion
    Checking if anyone except root can change /cache/sizeMax
    Checking if anyone except root can change /cache/sizeMin
    Checking if anyone except root can change /cache/sizeShares
    Checking if anyone except root can change /cache/transferType
    Checking if anyone except root can change /cache/usingCache/
    Checking if anyone except root can change /CalComp
    Checking if anyone except root can change /caps
    Checking if anyone except root can change /caps/autoUpgrade
    Checking if anyone except root can change /caps/autoUpgradeVersion
    Checking if anyone except root can change /caps/changeHost3DAvailabilityHint
    Checking if anyone except root can change /caps/colorDepthSet
    Checking if anyone except root can change /caps/desktopAutolock
    Checking if anyone except root can change /caps/displayGlobalOffset
    Checking if anyone except root can change /caps/displayTopologyModesSet
    Checking if anyone except root can change /caps/displayTopologySet
    Checking if anyone except root can change /caps/ghiFeatures
    Checking if anyone except root can change /caps/guestTempDirectoryVersion
    Checking if anyone except root can change /caps/hgfsServerDaemon
    Checking if anyone except root can change /caps/hgfsServerUpgrader
    Checking if anyone except root can change /caps/hgfsServerUser
    Checking if anyone except root can change /caps/hgfsUsabilityFeatures
    Checking if anyone except root can change /capsLockEnabled
    Checking if anyone except root can change /caps/minResolution/height
    Checking if anyone except root can change /caps/minResolution/width
    Checking if anyone except root can change /caps/openUrl
    Checking if anyone except root can change /caps/printerSet
    Checking if anyone except root can change /caps/resolutionServerDaemon
    Checking if anyone except root can change /caps/resolutionServerUser
    Checking if anyone except root can change /caps/resolutionSet
    Checking if anyone except root can change /caps/softExecStateChange
    Checking if anyone except root can change /caps/unityFeatures
    Checking if anyone except root can change /caps/upgraderParams
    Checking if anyone except root can change /Casablanca
    Checking if anyone except root can change /CAVNEX
    Checking if anyone except root can change /C-cF
    Checking if anyone except root can change /CdAU
    Checking if anyone except root can change /cdrom
    Checking if anyone except root can change /CD-ROM
    Checking if anyone except root can change /Central
    Checking if anyone except root can change /cf
    Checking if anyone except root can change /cfgState
    Checking if anyone except root can change /cfgState/new
    Checking if anyone except root can change /cfgState/val
    Checking if anyone except root can change /cfgState/val/dev
    Checking if anyone except root can change /cfgState/val/generationNo
    Checking if anyone except root can change /cfgState/val/generationNo/
    Checking if anyone except root can change /cfgState/val/guestIsolation/copyDisable
    Checking if anyone except root can change /cfgState/val/guestIsolation/hgfsDisable
    Checking if anyone except root can change /cfgState/val/guestIsolation/pasteDisable
    Checking if anyone except root can change /cfgState/val/hgfsUsability/linkRootShare
    Checking if anyone except root can change /cfgState/val/hgfsUsability/mapRootShare
    Checking if anyone except root can change /cfgState/val/hgfsUsability/redirectShellFolder
    Checking if anyone except root can change /cfgState/val/maxRemoteDisplayConnections
    Checking if anyone except root can change /cfgState/val/messageBusTunnelEnabled
    Checking if anyone except root can change /cfgState/val/migrateHostlog
    Checking if anyone except root can change /cfgState/val/name
    Checking if anyone except root can change /cfgState/val/opt/disableAcceleration
    Checking if anyone except root can change /cfgState/val/opt/logVmSample
    Checking if anyone except root can change /cfgState/val/opt/memTrimRate
    Checking if anyone except root can change /cfgState/val/powerType/powerOff
    Checking if anyone except root can change /cfgState/val/powerType/reset
    Checking if anyone except root can change /cfgState/val/powerType/suspend
    Checking if anyone except root can change /cfgState/val/priority
    Checking if anyone except root can change /cfgState/val/sensorAccelerometer
    Checking if anyone except root can change /cfgState/val/sensorAmbientLight
    Checking if anyone except root can change /cfgState/val/sensorCompass
    Checking if anyone except root can change /cfgState/val/sensorGyrometer
    Checking if anyone except root can change /cfgState/val/sensorInclinometer
    Checking if anyone except root can change /cfgState/val/sensorLocation
    Checking if anyone except root can change /cfgState/val/sensorOrientation
    Checking if anyone except root can change /cfgState/val/sharedFolder/
    Checking if anyone except root can change /cfgState/val/snapshot
    Checking if anyone except root can change /cfgState/val/snapshot/numRollingTiers/
    Checking if anyone except root can change /cfgState/val/toolPolicies/upgrade
    Checking if anyone except root can change /cfgState/val/toolsDeployPkg/pendingPackage
    Checking if anyone except root can change /cfgState/val/toolsDesktopAutolock
    Checking if anyone except root can change /cfgState/val/unity/showTaskbar
    Checking if anyone except root can change /cfgState/val/uuid/bios
    Checking if anyone except root can change /cfgState/val/uuid/location
    Checking if anyone except root can change /cfgVersion
    Checking if anyone except root can change /cG
    Checking if anyone except root can change /Chatham
    Checking if anyone except root can change /Chip
    Checking if anyone except root can change /Choibalsan
    Checking if anyone except root can change /CiE
    Checking if anyone except root can change /Clarkdale
    Checking if anyone except root can change /class/memory/changeOnRestart
    Checking if anyone except root can change /class/memory/sizeMb
    Checking if anyone except root can change /class/power_supply
    Checking if anyone except root can change /class/vcpu/num
    Checking if anyone except root can change /clipRegion/
    Checking if anyone except root can change /Co
    Checking if anyone except root can change /command
    Checking if anyone except root can change /command/
    Checking if anyone except root can change /conff
    Checking if anyone except root can change /config
    Checking if anyone except root can change /config/
    Checking if anyone except root can change /connections/
    Checking if anyone except root can change /Continental
    Checking if anyone except root can change /control
    Checking if anyone except root can change /cookie
    Checking if anyone except root can change /copypaste/cap/copyPasteGuestVersion
    Checking if anyone except root can change /copyprotection/identifier/
    Checking if anyone except root can change /copyprotection/restrictCopies/
    Checking if anyone except root can change /cpu
    Checking if anyone except root can change /cpuid_0_eax
    Checking if anyone except root can change /cpuid_0_eax_amd
    Checking if anyone except root can change /cpuid_0_ebx
    Checking if anyone except root can change /cpuid_0_ebx_amd
    Checking if anyone except root can change /cpuid_0_ecx
    Checking if anyone except root can change /cpuid_0_ecx_amd
    Checking if anyone except root can change /cpuid_0_edx
    Checking if anyone except root can change /cpuid_0_edx_amd
    Checking if anyone except root can change /cpuid_1_eax
    Checking if anyone except root can change /cpuid_1_eax_amd
    Checking if anyone except root can change /cpuid_1_ebx
    Checking if anyone except root can change /cpuid_1_ebx_amd
    Checking if anyone except root can change /cpuid_1_ecx
    Checking if anyone except root can change /cpuid_1_ecx_amd
    Checking if anyone except root can change /cpuid_1_edx
    Checking if anyone except root can change /cpuid_1_edx_amd
    Checking if anyone except root can change /cpuid_80_eax
    Checking if anyone except root can change /cpuid_80_eax_amd
    Checking if anyone except root can change /cpuid_80_ebx
    Checking if anyone except root can change /cpuid_80_ebx_amd
    Checking if anyone except root can change /cpuid_80_ecx
    Checking if anyone except root can change /cpuid_80_ecx_amd
    Checking if anyone except root can change /cpuid_80_edx
    Checking if anyone except root can change /cpuid_80_edx_amd
    Checking if anyone except root can change /cpuid_81_eax
    Checking if anyone except root can change /cpuid_81_eax_amd
    Checking if anyone except root can change /cpuid_81_ebx
    Checking if anyone except root can change /cpuid_81_ebx_amd
    Checking if anyone except root can change /cpuid_81_ecx
    Checking if anyone except root can change /cpuid_81_ecx_amd
    Checking if anyone except root can change /cpuid_81_edx
    Checking if anyone except root can change /cpuid_81_edx_amd
    Checking if anyone except root can change /cpuid_88_eax
    Checking if anyone except root can change /cpuid_88_eax_amd
    Checking if anyone except root can change /cpuid_88_ebx
    Checking if anyone except root can change /cpuid_88_ebx_amd
    Checking if anyone except root can change /cpuid_88_ecx
    Checking if anyone except root can change /cpuid_88_ecx_amd
    Checking if anyone except root can change /cpuid_88_edx
    Checking if anyone except root can change /cpuid_88_edx_amd
    Checking if anyone except root can change /create
    Checking if anyone except root can change /ctG
    Checking if anyone except root can change /Cuiaba
    Checking if anyone except root can change /cursorLocked
    Checking if anyone except root can change /custom/vmnet
    Checking if anyone except root can change /Cx
    Checking if anyone except root can change /d
    Checking if anyone except root can change /D
    Checking if anyone except root can change /D0
    Checking if anyone except root can change /D9d
    Checking if anyone except root can change /D9D
    Checking if anyone except root can change /db/connection
    Checking if anyone except root can change /Dcc
    Checking if anyone except root can change /deleteMH
    Checking if anyone except root can change /dest/hostWindow/surface/
    Checking if anyone except root can change /dest/hostWindow/window/
    Checking if anyone except root can change /dev/
    Checking if anyone except root can change /dev/cdrom
    Checking if anyone except root can change /dev/disk/by-id
    Checking if anyone except root can change /dev/disk/by-id/dm-name-
    Checking if anyone except root can change /dev/dsp
    Checking if anyone except root can change /dev/fd0
    Checking if anyone except root can change /dev/fd1
    Checking if anyone except root can change /dev/fd2
    Checking if anyone except root can change /dev/fd3
    Checking if anyone except root can change /dev/hecH
    Checking if anyone except root can change /device/autodetect
    Checking if anyone except root can change /device/bidirectional
    Checking if anyone except root can change /device/clientDevice
    Checking if anyone except root can change /device/exclusive
    Checking if anyone except root can change /device/hostdev
    Checking if anyone except root can change /device/raw
    Checking if anyone except root can change /device/size
    Checking if anyone except root can change /device/type
    Checking if anyone except root can change /dev/lp0
    Checking if anyone except root can change /dev/lp1
    Checking if anyone except root can change /dev/lp2
    Checking if anyone except root can change /dev/lp3
    Checking if anyone except root can change /dev/mapper/
    Checking if anyone except root can change /dev/mem
    Checking if anyone except root can change /dev/mixer
    Checking if anyone except root can change /dev/null
[UPC004] WARNING: /usr/lib/vmware/bin/vmware-vmx-debug is SUID root. /usr/lib/vmware/bin/vmware-vmx-debug contains the string /dev/null. World write is set for /dev/null
    Checking if anyone except root can change /dev/parport0
    Checking if anyone except root can change /dev/parport1
    Checking if anyone except root can change /dev/parport2
    Checking if anyone except root can change /dev/parport3
    Checking if anyone except root can change /dev/sg
    Checking if anyone except root can change /dev/st
    Checking if anyone except root can change /dev/urandom
[UPC004] WARNING: /usr/lib/vmware/bin/vmware-vmx-debug is SUID root. /usr/lib/vmware/bin/vmware-vmx-debug contains the string /dev/urandom. World write is set for /dev/urandom
    Checking if anyone except root can change /dev/vmci
[UPC004] WARNING: /usr/lib/vmware/bin/vmware-vmx-debug is SUID root. /usr/lib/vmware/bin/vmware-vmx-debug contains the string /dev/vmci. World write is set for /dev/vmci
    Checking if anyone except root can change /dev/vmmon
    Checking if anyone except root can change /dev/vmnet
    Checking if anyone except root can change /dev/vmnet0
    Checking if anyone except root can change /dev/vmnet1
    Checking if anyone except root can change /dev/vmnet8
    Checking if anyone except root can change /dev/vsock
[UPC004] WARNING: /usr/lib/vmware/bin/vmware-vmx-debug is SUID root. /usr/lib/vmware/bin/vmware-vmx-debug contains the string /dev/vsock. World write is set for /dev/vsock
    Checking if anyone except root can change /dH
    Checking if anyone except root can change /disable
    Checking if anyone except root can change /disconnect
    Checking if anyone except root can change /disk
    Checking if anyone except root can change //Disk_Parameters
    Checking if anyone except root can change /dL
    Checking if anyone except root can change /DM
    Checking if anyone except root can change /dnd/cap/dndEnable
    Checking if anyone except root can change /dnd/cap/dndGuestVersion
    Checking if anyone except root can change /dnd/cap/ghCapable
    Checking if anyone except root can change /dnd/cap/guestCapable
    Checking if anyone except root can change /dnd/cap/hostCapable
    Checking if anyone except root can change /dnd/fileTransferring
    Checking if anyone except root can change /dnd/gh/blockRoot
    Checking if anyone except root can change /done/warningsPosted
    Checking if anyone except root can change /dotdot
    Checking if anyone except root can change /Drain
    Checking if anyone except root can change /drop
    Checking if anyone except root can change /DSR
    Checking if anyone except root can change /DTY
    Checking if anyone except root can change /Dublin
    Checking if anyone except root can change /Dumping
    Checking if anyone except root can change /dyh
    Checking if anyone except root can change /e
    Checking if anyone except root can change /E
    Checking if anyone except root can change /E1
    Checking if anyone except root can change /e8
    Checking if anyone except root can change /eA
    Checking if anyone except root can change /East
    Checking if anyone except root can change /EasterIsland
    Checking if anyone except root can change /Eastern
    Checking if anyone except root can change /eatKeys
    Checking if anyone except root can change /ED
    Checking if anyone except root can change /EG
    Checking if anyone except root can change /eK
    Checking if anyone except root can change /ekr4K9t
    Checking if anyone except root can change /el
    Checking if anyone except root can change /El_Aaiun
    Checking if anyone except root can change /em
    Checking if anyone except root can change /eN
    Checking if anyone except root can change /En
    Checking if anyone except root can change /enable
    Checking if anyone except root can change /enabled
    Checking if anyone except root can change /enableMouse/
    Checking if anyone except root can change /ENCLU
    Checking if anyone except root can change /endRecording/in/index/
    Checking if anyone except root can change /EN/EX
    Checking if anyone except root can change /eo
    Checking if anyone except root can change /ep
    Checking if anyone except root can change /EPT
    Checking if anyone except root can change /error/errCode
    Checking if anyone except root can change /error/errCode/
    Checking if anyone except root can change /error/errMsg
    Checking if anyone except root can change /error/errMsg/
    Checking if anyone except root can change /error/id
    Checking if anyone except root can change /error/text
    Checking if anyone except root can change /esp0
    Checking if anyone except root can change /ESXi
    Checking if anyone except root can change /etc/annvix-release
    Checking if anyone except root can change /etc/arch-release
    Checking if anyone except root can change /etc/arklinux-release
    Checking if anyone except root can change /etc/aurox-release
    Checking if anyone except root can change /etc/blackcat-release
    Checking if anyone except root can change /etc/cobalt-release
    Checking if anyone except root can change /etc/conectiva-release
    Checking if anyone except root can change /etc/debian_release
    Checking if anyone except root can change /etc/debian_version
    Checking if anyone except root can change /etc/e-smith-release
    Checking if anyone except root can change /etc/fedora-release
    Checking if anyone except root can change /etc/gentoo-release
    Checking if anyone except root can change /etc/immunix-release
    Checking if anyone except root can change /etc/knoppix_version
    Checking if anyone except root can change /etc/lfs-release
    Checking if anyone except root can change /etc/linuxppc-release
    Checking if anyone except root can change /etc/localtime
    Checking if anyone except root can change /etc/lsb-release
    Checking if anyone except root can change /etc/mandrakelinux-release
    Checking if anyone except root can change /etc/mandrake-release
    Checking if anyone except root can change /etc/mandriva-release
    Checking if anyone except root can change /etc/mklinux-release
    Checking if anyone except root can change /etc/mtab
[UPC001] WARNING: /usr/lib/vmware/bin/vmware-vmx-debug is SUID root. /usr/lib/vmware/bin/vmware-vmx-debug contains the string /etc/mtab. The user nahoskins can write to /etc/mtab
    Checking if anyone except root can change /etc/nld-release
    Checking if anyone except root can change /etc/novell-release
    Checking if anyone except root can change /etc/oracle-release
    Checking if anyone except root can change /etc/pki/tls
    Checking if anyone except root can change /etc/pld-release
    Checking if anyone except root can change /etc/redhat-release
    Checking if anyone except root can change /etc/redhat_version
    Checking if anyone except root can change /etc/release
    Checking if anyone except root can change /etc/slackware-release
    Checking if anyone except root can change /etc/slackware-version
    Checking if anyone except root can change /etc/sles-release
    Checking if anyone except root can change /etc/ssl/certs
    Checking if anyone except root can change /etc/sun-release
    Checking if anyone except root can change /etc/SuSE-release
    Checking if anyone except root can change /etc/tinysofa-release
    Checking if anyone except root can change /etc/turbolinux-release
    Checking if anyone except root can change /etc/ultrapenguin-release
    Checking if anyone except root can change /etc/UnitedLinux-release
    Checking if anyone except root can change /etc/va-release
    Checking if anyone except root can change /etc/vmware
    Checking if anyone except root can change /etc/vmware/config
    Checking if anyone except root can change /etc/vmware/not_configured
    Checking if anyone except root can change /etc/vmwH
    Checking if anyone except root can change /etc/yellowdog-release
    Checking if anyone except root can change /Eucla
    Checking if anyone except root can change /evql
    Checking if anyone except root can change /execState/new
    Checking if anyone except root can change /execState/new/
    Checking if anyone except root can change /execState/val
    Checking if anyone except root can change /expiration/activationTime/
    Checking if anyone except root can change /expiration/currentTime/
    Checking if anyone except root can change /expiration/expireText/
    Checking if anyone except root can change /expiration/validFrom/
    Checking if anyone except root can change /expiration/validTill/
    Checking if anyone except root can change /expiration/warningText/
    Checking if anyone except root can change /expiration/warningTime/
    Checking if anyone except root can change /eY
    Checking if anyone except root can change /EzI
    Checking if anyone except root can change /f
    Checking if anyone except root can change /-f_
    Checking if anyone except root can change /f_
    Checking if anyone except root can change /F
    Checking if anyone except root can change /f1
    Checking if anyone except root can change /FD_
    Checking if anyone except root can change /fE
    Checking if anyone except root can change /FE
    Checking if anyone except root can change /fence/event/
    Checking if anyone except root can change /fence/request/
    Checking if anyone except root can change /file/filePath
    Checking if anyone except root can change /file/flat
    Checking if anyone except root can change /fileName
    Checking if anyone except root can change /firmware
    Checking if anyone except root can change /flags/isRendering/
    Checking if anyone except root can change /flat/vmfs
    Checking if anyone except root can change /floppy
    Checking if anyone except root can change /floppy/ix
    Checking if anyone except root can change /fMX
    Checking if anyone except root can change /_fN
    Checking if anyone except root can change /fo
    Checking if anyone except root can change /fO
    Checking if anyone except root can change /forceEncryptionPasswordChangeOnMove/
    Checking if anyone except root can change /forceSetupOnce
    Checking if anyone except root can change /Fp
    Checking if anyone except root can change /fR
    Checking if anyone except root can change //FRh
    Checking if anyone except root can change /from
    Checking if anyone except root can change /FS
    Checking if anyone except root can change /fullscreenHint/
    Checking if anyone except root can change /fZ
    Checking if anyone except root can change /g
    Checking if anyone except root can change /-_g
    Checking if anyone except root can change /G
    Checking if anyone except root can change /G5
    Checking if anyone except root can change /gb
    Checking if anyone except root can change /Geometry
    Checking if anyone except root can change /getScreenshot/in/multiMonitor/
    Checking if anyone except root can change /ghi/allowCopyPaste/
    Checking if anyone except root can change /ghi/allowDragDrop/
    Checking if anyone except root can change /ghi/allowFolderSharing/
    Checking if anyone except root can change /ghIntegration
    Checking if anyone except root can change /ghIntegration/hostShellActions
    Checking if anyone except root can change /ghIntegration/launchMenu
    Checking if anyone except root can change /ghIntegration/protocolHandlers
    Checking if anyone except root can change /ghIntegration/trashFolder/empty
    Checking if anyone except root can change /GivB
    Checking if anyone except root can change /gj
    Checking if anyone except root can change /Gk6
    Checking if anyone except root can change /GN
    Checking if anyone except root can change /Godthab
    Checking if anyone except root can change /gosInstalledStatus
    Checking if anyone except root can change /GQZ
    Checking if anyone except root can change /grabRequest/in/motionGrab
    Checking if anyone except root can change /grabRequest/in/windowId
    Checking if anyone except root can change /grabState/val
    Checking if anyone except root can change /Greyhound
    Checking if anyone except root can change /GSg
    Checking if anyone except root can change /gStatus
    Checking if anyone except root can change /GT
    Checking if anyone except root can change /Guatemala
    Checking if anyone except root can change /guestHints/fullscreen
    Checking if anyone except root can change /guestInfo
    Checking if anyone except root can change /guestInfo/config
    Checking if anyone except root can change /guestInfo/config/
    Checking if anyone except root can change /guestInfo/config/nicInfo
    Checking if anyone except root can change /guestInfo/config/nicInfo/array
    Checking if anyone except root can change /guestInfo/config/nicInfo/xdr
    Checking if anyone except root can change /guestInfo/config/osName
    Checking if anyone except root can change /guestInfo/config/toolsVersion
    Checking if anyone except root can change /guestInfo/stats/
    Checking if anyone except root can change /guestInfo/stats/uptime
    Checking if anyone except root can change /guestInfo/toolsManifestInfo/dataBuffer
    Checking if anyone except root can change /guestInfo/toolsManifestInfo/dataSize
    Checking if anyone except root can change /guestInfo/toolsManifestInfo/hostManifestCacheDir
    Checking if anyone except root can change /guestInfo/toolsManifestInfo/onInstallEvent
    Checking if anyone except root can change /guestInfo/toolsManifestInfo/vmCfgPath
    Checking if anyone except root can change /guestInfo/toolsManifestInfo/vmToolsStatus
    Checking if anyone except root can change /guestInfo/toolsUpdateCounter
    Checking if anyone except root can change /guestTools
    Checking if anyone except root can change /guestTools/currentStatus/guestConfDirectory
    Checking if anyone except root can change /guestTools/currentStatus/guestTempDirectory
    Checking if anyone except root can change /guestTools/currentStatus/hgfsEnabled
    Checking if anyone except root can change /guestTools/currentStatus/unityActive
    Checking if anyone except root can change /guestTools/customPath
    Checking if anyone except root can change /guestTools/deployPkgState
    Checking if anyone except root can change /guestTools/installerActive
    Checking if anyone except root can change /guestTools/installError
    Checking if anyone except root can change /guestTools/installState/new
    Checking if anyone except root can change /guestTools/lastInstallStatus
    Checking if anyone except root can change /guestTools/runningStatus
    Checking if anyone except root can change /guestTools/toolsAppsRunning/
    Checking if anyone except root can change /guestTools/vmsupport/gStatus
    Checking if anyone except root can change /guestTools/vmsupport/hgCmd
    Checking if anyone except root can change /guestTopologyLimits
    Checking if anyone except root can change /gv
    Checking if anyone except root can change /gW
    Checking if anyone except root can change /G_w
    Checking if anyone except root can change /GY8
    Checking if anyone except root can change /h
    Checking if anyone except root can change /-h
    Checking if anyone except root can change /H
    Checking if anyone except root can change /H5Rb
    Checking if anyone except root can change /H9
    Checking if anyone except root can change /hardware
    Checking if anyone except root can change /Harpertown
    Checking if anyone except root can change /hasHostOrigin/
    Checking if anyone except root can change /hasRoot/
    Checking if anyone except root can change /Havana
    Checking if anyone except root can change /Havendale
    Checking if anyone except root can change /Hc
    Checking if anyone except root can change /HcC
    Checking if anyone except root can change /HcD
    Checking if anyone except root can change /hddOrder
    Checking if anyone except root can change /height
    Checking if anyone except root can change /height/
    Checking if anyone except root can change /Height
    Checking if anyone except root can change /Hesso
    Checking if anyone except root can change /hH
    Checking if anyone except root can change /Hi
    Checking if anyone except root can change /HI
    Checking if anyone except root can change /HJ0
    Checking if anyone except root can change /hkf0
    Checking if anyone except root can change /host
    Checking if anyone except root can change /hostCDROMNumber
    Checking if anyone except root can change /hostOrigin/x/
    Checking if anyone except root can change /hostOrigin/y/
    Checking if anyone except root can change /hostPublishDirectory
    Checking if anyone except root can change /hostWindow/generation/
    Checking if anyone except root can change /hostWindow/height/
    Checking if anyone except root can change /hostWindow/surface/
    Checking if anyone except root can change /hostWindow/width/
    Checking if anyone except root can change /hotKeyPrefix
    Checking if anyone except root can change /Hovd
    Checking if anyone except root can change /hScY
    Checking if anyone except root can change /html
    Checking if anyone except root can change /Hw
    Checking if anyone except root can change /hwVersion
    Checking if anyone except root can change /i
    Checking if anyone except root can change /I
    Checking if anyone except root can change /-I
    Checking if anyone except root can change /I8
    Checking if anyone except root can change /I9
    Checking if anyone except root can change /IA
    Checking if anyone except root can change /icu
    Checking if anyone except root can change /id
    Checking if anyone except root can change /ideDev
    Checking if anyone except root can change /ideDev/ctlrIx
    Checking if anyone except root can change /ideDev/ix
    Checking if anyone except root can change /iDU
    Checking if anyone except root can change /ifx
    Checking if anyone except root can change //Iix
    Checking if anyone except root can change /image/filePath
    Checking if anyone except root can change /image/readonly
    Checking if anyone except root can change /in
    Checking if anyone except root can change /in/a
    Checking if anyone except root can change /in/action
    Checking if anyone except root can change /in/adapterNum
    Checking if anyone except root can change /in/address
    Checking if anyone except root can change /in/addressType
    Checking if anyone except root can change /in/allowGuestControl
    Checking if anyone except root can change /in/allowHWProvider
    Checking if anyone except root can change /in/altitude
    Checking if anyone except root can change /in/annotation
    Checking if anyone except root can change /in/arguments
    Checking if anyone except root can change /in/authBlob
    Checking if anyone except root can change /in/autoDetect
    Checking if anyone except root can change /in/b
    Checking if anyone except root can change /in/backingPath
    Checking if anyone except root can change /in/backingPathName
    Checking if anyone except root can change /in/backingPathNetProxy
    Checking if anyone except root can change /in/backingPropBlob
    Checking if anyone except root can change /in/backingType
    Checking if anyone except root can change /in/bandwidthCap
    Checking if anyone except root can change /in/batchID
    Checking if anyone except root can change /in/bidirectional
    Checking if anyone except root can change /in/blobValue
    Checking if anyone except root can change /in/bsdName
    Checking if anyone except root can change /in/buf
    Checking if anyone except root can change /in/busSpeed
    Checking if anyone except root can change /in/busType
    Checking if anyone except root can change /in/c
    Checking if anyone except root can change /in/cdrom
    Checking if anyone except root can change /in/choice
    Checking if anyone except root can change /in/classType
    Checking if anyone except root can change /in/clearAuto
    Checking if anyone except root can change /in/clientDevice
    Checking if anyone except root can change /in/clientFlags
    Checking if anyone except root can change /in/cmdline
    Checking if anyone except root can change /incoming
    Checking if anyone except root can change /incoming/millirate
    Checking if anyone except root can change /incoming/numPackets
    Checking if anyone except root can change /in/comment
    Checking if anyone except root can change /in/compensatedMagneticNorth
    Checking if anyone except root can change /in/connectionType
    Checking if anyone except root can change /in/connectOp
    Checking if anyone except root can change /in/controller
    Checking if anyone except root can change /in/count
    Checking if anyone except root can change /in/createParentDirectories
    Checking if anyone except root can change /in/ctkEnabled
    Checking if anyone except root can change /in/d
    Checking if anyone except root can change /in/data
    Checking if anyone except root can change /in/dataBlob
    Checking if anyone except root can change /in/dataType
    Checking if anyone except root can change /in/delay
    Checking if anyone except root can change /in/deleteChildren
    Checking if anyone except root can change /in/description
    Checking if anyone except root can change /in/device
    Checking if anyone except root can change /in/deviceId
    Checking if anyone except root can change /in/deviceLabel
    Checking if anyone except root can change /in/devicePropBlob
    Checking if anyone except root can change /in/deviceType
    Checking if anyone except root can change /in/digest
    Checking if anyone except root can change /in/directory
    Checking if anyone except root can change /in/disabled
    Checking if anyone except root can change /in/displayName
    Checking if anyone except root can change /in/displayRectsBlob
    Checking if anyone except root can change /in/dstwid
    Checking if anyone except root can change /in/dvsConnectionId
    Checking if anyone except root can change /in/dvsPortgroupId
    Checking if anyone except root can change /in/dvsPortId
    Checking if anyone except root can change /in/dvsSwitchId
    Checking if anyone except root can change /in/emulation
    Checking if anyone except root can change /in/enable
    Checking if anyone except root can change /in/enabled
    Checking if anyone except root can change /in/envBlob
    Checking if anyone except root can change /in/eventID
    Checking if anyone except root can change /in/exclusiveAccess
    Checking if anyone except root can change /in/execScripts
    Checking if anyone except root can change /in/expandStrings
    Checking if anyone except root can change /in/extension
    Checking if anyone except root can change /in/externalId
    Checking if anyone except root can change /in/features
    Checking if anyone except root can change /in/fileName
    Checking if anyone except root can change /in/filterEnable
    Checking if anyone except root can change /in/filters
    Checking if anyone except root can change /in/firmwareType
    Checking if anyone except root can change /in/force
    Checking if anyone except root can change /in/forRevert
    Checking if anyone except root can change /in/fromPathName
    Checking if anyone except root can change /in/functions
    Checking if anyone except root can change /in/guestFileRoot
    Checking if anyone except root can change /in/guestFileRootSize
    Checking if anyone except root can change /in/guestWritable
    Checking if anyone except root can change /in/hbaType
    Checking if anyone except root can change /in/height
    Checking if anyone except root can change /in/hidcode
    Checking if anyone except root can change /in/horizontalAccuracy
    Checking if anyone except root can change /in/hostDevice
    Checking if anyone except root can change /in/hostStagingDir
    Checking if anyone except root can change /in/id
    Checking if anyone except root can change /in/identifier
    Checking if anyone except root can change /in/illuminance
    Checking if anyone except root can change /in/index
    Checking if anyone except root can change /in/isCommit
    Checking if anyone except root can change /in/isDnD
    Checking if anyone except root can change /in/isInteresting
    Checking if anyone except root can change /in/isMapCert
    Checking if anyone except root can change /in/isOverwrite
    Checking if anyone except root can change /in/isUpgrade
    Checking if anyone except root can change /in/isVolatile
    Checking if anyone except root can change /initiated/customPath
    Checking if anyone except root can change /initiated/prompt
    Checking if anyone except root can change /injectKeys/in/sequence
    Checking if anyone except root can change /in/key
    Checking if anyone except root can change /in/keys
    Checking if anyone except root can change /in/keyValueBlob
    Checking if anyone except root can change /in/label
    Checking if anyone except root can change /in/latitude
    Checking if anyone except root can change /in/lazy
    Checking if anyone except root can change /in/length
    Checking if anyone except root can change /in/level
    Checking if anyone except root can change /in/limit
    Checking if anyone except root can change /in/linkStatePropagationEnable
    Checking if anyone except root can change /in/localFiles
    Checking if anyone except root can change /in/localSize
    Checking if anyone except root can change /in/longitude
    Checking if anyone except root can change /in/matchPattern
    Checking if anyone except root can change /in/maxDevices
    Checking if anyone except root can change /in/maxDurationSeconds
    Checking if anyone except root can change /in/maxEventFromGuest
    Checking if anyone except root can change /in/maxEventToGuest
    Checking if anyone except root can change /in/maxResults
    Checking if anyone except root can change /in/maxSize
    Checking if anyone except root can change /in/maxWaitTime
    Checking if anyone except root can change /in/memorySize
    Checking if anyone except root can change /in/mid
    Checking if anyone except root can change /in/mode
    Checking if anyone except root can change /in/modifiers
    Checking if anyone except root can change /in/module
    Checking if anyone except root can change /in/monitor
    Checking if anyone except root can change /in/name
    Checking if anyone except root can change /in/netEndPoint
    Checking if anyone except root can change /in/networkBootProtocol
    Checking if anyone except root can change /in/networkId
    Checking if anyone except root can change /in/networkName
    Checking if anyone except root can change /in/networkType
    Checking if anyone except root can change /in/newDoubleValue
    Checking if anyone except root can change /in/newEnumValue
    Checking if anyone except root can change /in/newInt64Value
    Checking if anyone except root can change /in/newMemSizeMB
    Checking if anyone except root can change /in/newNumSectors
    Checking if anyone except root can change /in/newNumVCPUs
    Checking if anyone except root can change /in/newStringValue
    Checking if anyone except root can change /in/nextQuery
    Checking if anyone except root can change /in/node
    Checking if anyone except root can change /in/notificationTime
    Checking if anyone except root can change /in/nsType
    Checking if anyone except root can change /in/numEnvVar
    Checking if anyone except root can change /in/numEnvVars
    Checking if anyone except root can change /in/offset
    Checking if anyone except root can change /in/operation
    Checking if anyone except root can change /in/options
    Checking if anyone except root can change /in/opType
    Checking if anyone except root can change /in/order
    Checking if anyone except root can change /in/overWrite
    Checking if anyone except root can change /in/parent
    Checking if anyone except root can change /in/path
    Checking if anyone except root can change /in/pathname
    Checking if anyone except root can change /in/pathName
    Checking if anyone except root can change /in/paused
    Checking if anyone except root can change /in/pciSlotNumber
    Checking if anyone except root can change /in/pemCert
    Checking if anyone except root can change /in/pid
    Checking if anyone except root can change /in/pidBlob
    Checking if anyone except root can change /in/pipeEndPoint
    Checking if anyone except root can change /in/policy
    Checking if anyone except root can change /in/port
    Checking if anyone except root can change /in/prefix
    Checking if anyone except root can change /in/present
    Checking if anyone except root can change /in/progName
    Checking if anyone except root can change /inProgress/current/
    Checking if anyone except root can change /inProgress/maximum/
    Checking if anyone except root can change /inProgress/percentDone
    Checking if anyone except root can change /inProgress/percentDone/
    Checking if anyone except root can change /inProgress/statusMessage
    Checking if anyone except root can change /in/propBlob
    Checking if anyone except root can change /in/pvnID
    Checking if anyone except root can change /in/quiesceApps
    Checking if anyone except root can change /in/quiesced
    Checking if anyone except root can change /in/quiesceFS
    Checking if anyone except root can change /in/readOnly
    Checking if anyone except root can change /in/recursive
    Checking if anyone except root can change /in/regPath
    Checking if anyone except root can change /in/remoteFiles
    Checking if anyone except root can change /in/remoteSize
    Checking if anyone except root can change /in/reqPath
    Checking if anyone except root can change /in/reservation
    Checking if anyone except root can change /in/resultsSeen
    Checking if anyone except root can change /in/rxbwLimit
    Checking if anyone except root can change /in/rxfiDroprate
    Checking if anyone except root can change /in/rxfiDropsize
    Checking if anyone except root can change /in/saveDeviceState
    Checking if anyone except root can change /in/scriptArg
    Checking if anyone except root can change /in/seq
    Checking if anyone except root can change /in/sequence
    Checking if anyone except root can change /in/sessionID
    Checking if anyone except root can change /in/shares
    Checking if anyone except root can change /in/sharing
    Checking if anyone except root can change /in/size
    Checking if anyone except root can change /in/sizeMB
    Checking if anyone except root can change /in/snapshotUid
    Checking if anyone except root can change /in/snapshotUID
    Checking if anyone except root can change /in/soft
    Checking if anyone except root can change /in/spec
    Checking if anyone except root can change /instanceid/
    Checking if anyone except root can change /in/startConnected
    Checking if anyone except root can change /in/state
    Checking if anyone except root can change /in/sticky
    Checking if anyone except root can change /in/str
    Checking if anyone except root can change /in/strOpt
    Checking if anyone except root can change /in/subjectName
    Checking if anyone except root can change /in/subjectType
    Checking if anyone except root can change /in/suffix
    Checking if anyone except root can change /in/synctime
    Checking if anyone except root can change /in/targetNum
    Checking if anyone except root can change /in/throughputCap
    Checking if anyone except root can change /in/timeout
    Checking if anyone except root can change /in/ToPathName
    Checking if anyone except root can change /in/tryNoRxLoss
    Checking if anyone except root can change /in/txbwLimit
    Checking if anyone except root can change /in/txfiDroprate
    Checking if anyone except root can change /in/txfiDropsize
    Checking if anyone except root can change /in/type
    Checking if anyone except root can change /in/updateLiveData
    Checking if anyone except root can change /in/uptCompatibilityEnabled
    Checking if anyone except root can change /in/useCustomizedProgress
    Checking if anyone except root can change /in/useCustomizedQuestion
    Checking if anyone except root can change /in/userName
    Checking if anyone except root can change /in/uuid
    Checking if anyone except root can change /in/val
    Checking if anyone except root can change /invalid
    Checking if anyone except root can change /in/value
    Checking if anyone except root can change /in/valueName
    Checking if anyone except root can change /in/vcpuCount
    Checking if anyone except root can change /in/vcpuid
    Checking if anyone except root can change /in/vcUUID
    Checking if anyone except root can change /in/version
    Checking if anyone except root can change /in/verticalAccuracy
    Checking if anyone except root can change /in/vflashBlockSize
    Checking if anyone except root can change /in/vflashCacheMax
    Checking if anyone except root can change /in/vflashCacheMin
    Checking if anyone except root can change /in/vflashConsistencyType
    Checking if anyone except root can change /in/vflashEnabled
    Checking if anyone except root can change /in/vflashMode
    Checking if anyone except root can change /in/vflashModule
    Checking if anyone except root can change /in/vflashShares
    Checking if anyone except root can change /in/virtualDev
    Checking if anyone except root can change /in/vmodlWritable
    Checking if anyone except root can change /in/vmxBuildType
    Checking if anyone except root can change /in/vnet
    Checking if anyone except root can change /in/volumeUUID
    Checking if anyone except root can change /in/wakeOnPcktRcv
    Checking if anyone except root can change /in/when
    Checking if anyone except root can change /in/width
    Checking if anyone except root can change /in/workingDir
    Checking if anyone except root can change /in/wowBitness
    Checking if anyone except root can change /in/writeThrough
    Checking if anyone except root can change /in/x
    Checking if anyone except root can change /in/y
    Checking if anyone except root can change /in/yieldOnMsrRead
    Checking if anyone except root can change /in/z
    Checking if anyone except root can change /iq_
    Checking if anyone except root can change /IQ
    Checking if anyone except root can change /Irkutsk
    Checking if anyone except root can change /IS
    Checking if anyone except root can change /isPrimary/
    Checking if anyone except root can change /Iter
    Checking if anyone except root can change /ITRI
    Checking if anyone except root can change /Iv
    Checking if anyone except root can change /IX
    Checking if anyone except root can change /iz
    Checking if anyone except root can change /j
    Checking if anyone except root can change /J
    Checking if anyone except root can change /j6
    Checking if anyone except root can change /javascript
    Checking if anyone except root can change /je
    Checking if anyone except root can change /Jerusalem
    Checking if anyone except root can change /jH
    Checking if anyone except root can change /jkDP
    Checking if anyone except root can change /jm
    Checking if anyone except root can change /JMP
    Checking if anyone except root can change /JO8L
    Checking if anyone except root can change /Job
    Checking if anyone except root can change /jS
    Checking if anyone except root can change /JU
    Checking if anyone except root can change /jZ
    Checking if anyone except root can change /k
    Checking if anyone except root can change /k/
    Checking if anyone except root can change /K
    Checking if anyone except root can change /k2/
    Checking if anyone except root can change /Kamchatka
    Checking if anyone except root can change /kblrSendKey/in/down
    Checking if anyone except root can change /kblrSendKey/in/usageCode
    Checking if anyone except root can change /kblrSendKey/in/usagePage
    Checking if anyone except root can change /Kbtek
    Checking if anyone except root can change /keyboard/eatKeys/
    Checking if anyone except root can change /keyboard/keyBindings/
    Checking if anyone except root can change /keyboard/notifyUIEvent
    Checking if anyone except root can change /keyEvent/modifiers
    Checking if anyone except root can change /keyEvent/scancode
    Checking if anyone except root can change /keylist
    Checking if anyone except root can change /Kg
    Checking if anyone except root can change /KJ
    Checking if anyone except root can change /KM
    Checking if anyone except root can change /kn
    Checking if anyone except root can change /KQz
    Checking if anyone except root can change /kR
    Checking if anyone except root can change /Krasnoyarsk
    Checking if anyone except root can change /Ks
    Checking if anyone except root can change /kT
    Checking if anyone except root can change /kVt
    Checking if anyone except root can change /kvV
    Checking if anyone except root can change /kyG
    Checking if anyone except root can change /l
    Checking if anyone except root can change /L
    Checking if anyone except root can change /L0
    Checking if anyone except root can change /l21
    Checking if anyone except root can change /l3a
    Checking if anyone except root can change /l4
    Checking if anyone except root can change /L4
    Checking if anyone except root can change /Lc
    Checking if anyone except root can change /legacyBootEnabled
    Checking if anyone except root can change /length
    Checking if anyone except root can change /lengths
    Checking if anyone except root can change /licenses
    Checking if anyone except root can change /limit
    Checking if anyone except root can change /limitRefreshRate/
    Checking if anyone except root can change /listeningForConnections/
    Checking if anyone except root can change /location
    Checking if anyone except root can change /lockOut
    Checking if anyone except root can change /logFile
    Checking if anyone except root can change /logFilename/
    Checking if anyone except root can change /London
    Checking if anyone except root can change /Lord_Howe
    Checking if anyone except root can change /lP
    Checking if anyone except root can change /LP
    Checking if anyone except root can change /Ls
    Checking if anyone except root can change /Lu
    Checking if anyone except root can change /lY/
    Checking if anyone except root can change /Lynnfield
    Checking if anyone except root can change /m
    Checking if anyone except root can change /M
    Checking if anyone except root can change /M-
    Checking if anyone except root can change /M3/by
    Checking if anyone except root can change /MA
    Checking if anyone except root can change /Magadan
    Checking if anyone except root can change /matchDefault
    Checking if anyone except root can change /max
    Checking if anyone except root can change /mB
    Checking if anyone except root can change /MBN
    Checking if anyone except root can change /media
    Checking if anyone except root can change /memory
    Checking if anyone except root can change /messages
    Checking if anyone except root can change /MF
    Checking if anyone except root can change /migr1
    Checking if anyone except root can change /migrateState/lastStatus/
    Checking if anyone except root can change /migrateState/status/
    Checking if anyone except root can change /migrL
    Checking if anyone except root can change /Miquelon
    Checking if anyone except root can change /MJ
    Checking if anyone except root can change /Mk59ab61
    Checking if anyone except root can change /ml
    Checking if anyone except root can change /Montevideo
    Checking if anyone except root can change /Moscow
    Checking if anyone except root can change /Mountain
    Checking if anyone except root can change /mstat
    Checking if anyone except root can change /MU
    Checking if anyone except root can change /mvm/policyState/val/
    Checking if anyone except root can change /n
    Checking if anyone except root can change /N
    Checking if anyone except root can change /_N
    Checking if anyone except root can change /N/0k
    Checking if anyone except root can change /N1C
    Checking if anyone except root can change /nA
    Checking if anyone except root can change /NAb
    Checking if anyone except root can change /name
    Checking if anyone except root can change /nB
    Checking if anyone except root can change /NBhV
    Checking if anyone except root can change /nDcB
    Checking if anyone except root can change /Ne
    Checking if anyone except root can change /netmH
    Checking if anyone except root can change /network/endPoint
    Checking if anyone except root can change /network/tryNoRxLoss
    Checking if anyone except root can change /network/url
    Checking if anyone except root can change /network/vspcPath
    Checking if anyone except root can change /new
    Checking if anyone except root can change /Newpoint
    Checking if anyone except root can change /new/status
    Checking if anyone except root can change /new/status/error
    Checking if anyone except root can change /NG
    Checking if anyone except root can change /nic
    Checking if anyone except root can change /nic/address
    Checking if anyone except root can change /nic/addressType
    Checking if anyone except root can change /nic/bandwidthLimitKbps
    Checking if anyone except root can change /nic/bandwidthLimitKbps/incoming
    Checking if anyone except root can change /nic/bandwidthLimitKbps/outgoing
    Checking if anyone except root can change /nic/hostif
    Checking if anyone except root can change /nic/hostif/pvn/pvnID
    Checking if anyone except root can change /nic/ix
    Checking if anyone except root can change /nic/packetLoss
    Checking if anyone except root can change /nic/packetLoss/incoming/millirate
    Checking if anyone except root can change /nic/packetLoss/incoming/numPackets
    Checking if anyone except root can change /nic/packetLoss/outgoing/millirate
    Checking if anyone except root can change /nic/packetLoss/outgoing/numPackets
    Checking if anyone except root can change /N/M
    Checking if anyone except root can change /Nocona
    Checking if anyone except root can change /node
    Checking if anyone except root can change /no-go
    Checking if anyone except root can change /non-vmfs
    Checking if anyone except root can change /notifyUI
    Checking if anyone except root can change /Novosibirsk
    Checking if anyone except root can change /NS
    Checking if anyone except root can change /NTFS
    Checking if anyone except root can change /numLockEnabled
    Checking if anyone except root can change /numRollingTiers/
    Checking if anyone except root can change /Nv
    Checking if anyone except root can change /nvram
    Checking if anyone except root can change /nY
    Checking if anyone except root can change /nZ
    Checking if anyone except root can change /o
    Checking if anyone except root can change /O
    Checking if anyone except root can change /O6
    Checking if anyone except root can change /oa3
    Checking if anyone except root can change /oA9
    Checking if anyone except root can change /OCQ
    Checking if anyone except root can change /Oh
    Checking if anyone except root can change /OJ
    Checking if anyone except root can change /Omsk
    Checking if anyone except root can change /oneToOneKeyBindings/
    Checking if anyone except root can change /open
    Checking if anyone except root can change /or
    Checking if anyone except root can change /Os
    Checking if anyone except root can change /out
    Checking if anyone except root can change /out/data
    Checking if anyone except root can change /outgoing
    Checking if anyone except root can change /outgoing/millirate
    Checking if anyone except root can change /outgoing/numPackets
    Checking if anyone except root can change /OUTS
    Checking if anyone except root can change /overwriteQuestion
    Checking if anyone except root can change /overwriteQuestion/out/answer
    Checking if anyone except root can change /OY
    Checking if anyone except root can change /p
    Checking if anyone except root can change /P
    Checking if anyone except root can change /_P2
    Checking if anyone except root can change /p7
    Checking if anyone except root can change /P8i
    Checking if anyone except root can change /Pacific
    Checking if anyone except root can change /pad
    Checking if anyone except root can change /pages
    Checking if anyone except root can change /parallel
    Checking if anyone except root can change /parallel/ix
    Checking if anyone except root can change /passthru/hostdev
    Checking if anyone except root can change /password
    Checking if anyone except root can change /paste
    Checking if anyone except root can change /pb
    Checking if anyone except root can change /pciBridge
    Checking if anyone except root can change /pciBridge/functions
    Checking if anyone except root can change /pciBridge/ix
    Checking if anyone except root can change /pciBridge/virtualDev
    Checking if anyone except root can change /pciPassthru
    Checking if anyone except root can change /pD
    Checking if anyone except root can change /pe
    Checking if anyone except root can change /ph
    Checking if anyone except root can change /pI
    Checking if anyone except root can change /pid
    Checking if anyone except root can change /pipe/endPoint
    Checking if anyone except root can change /pipe/filePath
    Checking if anyone except root can change /pipe/tryNoRxLoss
    Checking if anyone except root can change /Pitcairn
    Checking if anyone except root can change /pixelScale/
    Checking if anyone except root can change /pK
    Checking if anyone except root can change /plm
    Checking if anyone except root can change /pN
    Checking if anyone except root can change /policyCache/expireText/
    Checking if anyone except root can change /policyCache/lifetime/
    Checking if anyone except root can change /policyCache/warningPeriod/
    Checking if anyone except root can change /policyCache/warningText/
    Checking if anyone except root can change /policyEffect
    Checking if anyone except root can change /policyEffect/policyBlocked
    Checking if anyone except root can change /policyServer/isPolicyServer/
    Checking if anyone except root can change /policyServer/rootCertificates/
    Checking if anyone except root can change /policyServer/serverAddress/
    Checking if anyone except root can change /policyServer/updateFrequency/
    Checking if anyone except root can change /policyServer/useServer/
    Checking if anyone except root can change /policyState/val/metadata/status/
    Checking if anyone except root can change /port
    Checking if anyone except root can change /present
    Checking if anyone except root can change /pressed
    Checking if anyone except root can change /proc
    Checking if anyone except root can change /proc/asound/version
    Checking if anyone except root can change /proc/cpuinfo
    Checking if anyone except root can change /proc/devices
    Checking if anyone except root can change /proc/fs/vmblock/dev
    Checking if anyone except root can change /proc/fs/vmblock/mountPoint
    Checking if anyone except root can change /proc/ide
    Checking if anyone except root can change /proc/ide/
    Checking if anyone except root can change /proc/meminfo
    Checking if anyone except root can change /proc/self/exe
[UPC001] WARNING: /usr/lib/vmware/bin/vmware-vmx-debug is SUID root. /usr/lib/vmware/bin/vmware-vmx-debug contains the string /proc/self/exe. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/self/statm
[UPC001] WARNING: /usr/lib/vmware/bin/vmware-vmx-debug is SUID root. /usr/lib/vmware/bin/vmware-vmx-debug contains the string /proc/self/statm. The user nahoskins can write to /proc/self/statm
[UPC001] WARNING: /usr/lib/vmware/bin/vmware-vmx-debug is SUID root. /usr/lib/vmware/bin/vmware-vmx-debug contains the string /proc/self/statm. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/sys/dev/parport
    Checking if anyone except root can change /proc/sys/dev/parport/parport
    Checking if anyone except root can change /proc/sys/kernel/core_pattern
    Checking if anyone except root can change /proc/sys/kernel/core_uses_pid
    Checking if anyone except root can change /proc/timer_list
    Checking if anyone except root can change /proc/uptime
    Checking if anyone except root can change /progress
    Checking if anyone except root can change /PS
    Checking if anyone except root can change /pub
    Checking if anyone except root can change /publishToGuest
    Checking if anyone except root can change /publishToHost
    Checking if anyone except root can change /Px
    Checking if anyone except root can change /q
    Checking if anyone except root can change /Q
    Checking if anyone except root can change /Q_
    Checking if anyone except root can change /Q/
    Checking if anyone except root can change /Q1
    Checking if anyone except root can change /q4
    Checking if anyone except root can change /Qa
    Checking if anyone except root can change /Qbeq
    Checking if anyone except root can change /qE
    Checking if anyone except root can change /qfm
    Checking if anyone except root can change /QH
    Checking if anyone except root can change /QI
    Checking if anyone except root can change /qn
    Checking if anyone except root can change /Quality
    Checking if anyone except root can change /queue/rotational
    Checking if anyone except root can change /qW
    Checking if anyone except root can change /qw1V
    Checking if anyone except root can change /r
    Checking if anyone except root can change /R
    Checking if anyone except root can change //r1
    Checking if anyone except root can change /R4T
    Checking if anyone except root can change /r5T
    Checking if anyone except root can change /rawCfgState/new
    Checking if anyone except root can change /rawCfgState/val
    Checking if anyone except root can change /READ
    Checking if anyone except root can change /readOnlyCfg
    Checking if anyone except root can change /receiving
    Checking if anyone except root can change /reconfigure
    Checking if anyone except root can change /rect/bottom/
    Checking if anyone except root can change /rect/left/
    Checking if anyone except root can change /rect/right/
    Checking if anyone except root can change /rect/top/
    Checking if anyone except root can change /releaseEvent
    Checking if anyone except root can change /removable/allowGuestConnectionControl
    Checking if anyone except root can change /removable/startConnected
    Checking if anyone except root can change /reservation
    Checking if anyone except root can change /reset
    Checking if anyone except root can change /resolutionSet/
    Checking if anyone except root can change /resume
    Checking if anyone except root can change /RESUME
    Checking if anyone except root can change /revoked/
    Checking if anyone except root can change /REZERO
    Checking if anyone except root can change /RFCOMM
    Checking if anyone except root can change /Rg
    Checking if anyone except root can change /RGD
    Checking if anyone except root can change /rhY
    Checking if anyone except root can change /rid
    Checking if anyone except root can change /rj
    Checking if anyone except root can change /rj/
    Checking if anyone except root can change /RN
    Checking if anyone except root can change /rollingTier
    Checking if anyone except root can change /RT
    Checking if anyone except root can change /runtimeState/xpMode/active
    Checking if anyone except root can change /rV
    Checking if anyone except root can change /Rvd
    Checking if anyone except root can change /RVI
    Checking if anyone except root can change /s
    Checking if anyone except root can change /S
    Checking if anyone except root can change /s4
    Checking if anyone except root can change /s6
    Checking if anyone except root can change /SAHF
    Checking if anyone except root can change /Sakhalin
    Checking if anyone except root can change /Samara
    Checking if anyone except root can change /Saskatchewan
    Checking if anyone except root can change /sataCtlr
    Checking if anyone except root can change /sataDev
    Checking if anyone except root can change /sataDev/ctlrIx
    Checking if anyone except root can change /sataDev/ix
    Checking if anyone except root can change /saveAllocMaps
    Checking if anyone except root can change /saveDeviceState
    Checking if anyone except root can change /sB1
    Checking if anyone except root can change /sbin/authd
    Checking if anyone except root can change /scheduledUpgrade/reason
    Checking if anyone except root can change /scheduledUpgrade/state
    Checking if anyone except root can change /scheduledUpgrade/version
    Checking if anyone except root can change /scheduledUpgrade/when
    Checking if anyone except root can change /Scoresbysund
    Checking if anyone except root can change /screen/
    Checking if anyone except root can change /screenId/
    Checking if anyone except root can change /scrollLockEnabled
    Checking if anyone except root can change /scsiCtlr
    Checking if anyone except root can change /scsiDev
    Checking if anyone except root can change /scsiDev/ctlrIx
    Checking if anyone except root can change /scsiDev/ix
    Checking if anyone except root can change /sec
    Checking if anyone except root can change /security/keyLocatorCacheRequest
    Checking if anyone except root can change /sendGuestKeys
    Checking if anyone except root can change /sendHostKeys
    Checking if anyone except root can change /sendUnicodeCodePoint/in/timestamp
    Checking if anyone except root can change /sendUnicodeCodePoint/in/unicodeCodePoint
    Checking if anyone except root can change /sendUnityMouseEvent/in/button4
    Checking if anyone except root can change /sendUnityMouseEvent/in/button5
    Checking if anyone except root can change /sendUnityMouseEvent/in/buttonLeft
    Checking if anyone except root can change /sendUnityMouseEvent/in/buttonMiddle
    Checking if anyone except root can change /sendUnityMouseEvent/in/buttonRight
    Checking if anyone except root can change /sendUnityMouseEvent/in/dhs
    Checking if anyone except root can change /sendUnityMouseEvent/in/dz
    Checking if anyone except root can change /sendUnityMouseEvent/in/x
    Checking if anyone except root can change /sendUnityMouseEvent/in/y
    Checking if anyone except root can change /sensorAccelerometer/
    Checking if anyone except root can change /sensorAmbientLight/
    Checking if anyone except root can change /sensorCompass/
    Checking if anyone except root can change /sensorGyrometer/
    Checking if anyone except root can change /sensorInclinometer/
    Checking if anyone except root can change /sensorLocation/
    Checking if anyone except root can change /sensorOrientation/
    Checking if anyone except root can change /Seoul
    Checking if anyone except root can change /serial
    Checking if anyone except root can change /serial/ix
    Checking if anyone except root can change /setCursorGrabAllowed/in/allowed
    Checking if anyone except root can change /setDisplayTopology/
    Checking if anyone except root can change /setDisplayTopologyModes/
    Checking if anyone except root can change /setScale/in/mode
    Checking if anyone except root can change /setScale/in/mode/scaleFactor/value
    Checking if anyone except root can change /setScale/in/mode/targetHeight/value
    Checking if anyone except root can change /setScale/in/mode/targetWidth/value
    Checking if anyone except root can change /settings
    Checking if anyone except root can change /setup/needsEncryptionPasswordChange/
    Checking if anyone except root can change /setup/needsFirstUseSetup/
    Checking if anyone except root can change /setup/needsGHIOptIn/
    Checking if anyone except root can change /setup/needsRegistration/
    Checking if anyone except root can change /sg
    Checking if anyone except root can change /shares
    Checking if anyone except root can change /site
    Checking if anyone except root can change /sm
    Checking if anyone except root can change /smDx
    Checking if anyone except root can change /sMg
    Checking if anyone except root can change /snapshot/nextRollingTakeTime
    Checking if anyone except root can change /snapshot/powerOffActionEnabled
    Checking if anyone except root can change //Snapshots/Shot
    Checking if anyone except root can change /sNk
    Checking if anyone except root can change /socket
    Checking if anyone except root can change /softOption
    Checking if anyone except root can change /softOptionTimeoutMicroSeconds
    Checking if anyone except root can change /soR
    Checking if anyone except root can change /Sossaman
    Checking if anyone except root can change /South
    Checking if anyone except root can change /sq
    Checking if anyone except root can change /sS
    Checking if anyone except root can change /Stanley
    Checking if anyone except root can change /Status
    Checking if anyone except root can change /status/H
    Checking if anyone except root can change /stdout/stderr
    Checking if anyone except root can change /St_Johns
    Checking if anyone except root can change //StorageData/Storage
    Checking if anyone except root can change /stream/
    Checking if anyone except root can change /sub
    Checking if anyone except root can change /sub-Window
    Checking if anyone except root can change /support/mvdiACE/
    Checking if anyone except root can change /support/mvmtid/
    Checking if anyone except root can change /support/restrictedVM/
    Checking if anyone except root can change /support/version/
    Checking if anyone except root can change /suspend
    Checking if anyone except root can change /svga
    Checking if anyone except root can change /Sydney
    Checking if anyone except root can change /sys
    Checking if anyone except root can change /sys/block
    Checking if anyone except root can change /sys/bus/scsi/devices
    Checking if anyone except root can change /sys/bus/usb/devices
    Checking if anyone except root can change /sys/class/block/
    Checking if anyone except root can change /sys/dev/block
    Checking if anyone except root can change /sys/devL
    Checking if anyone except root can change /sys/firmware/acpi/tables
    Checking if anyone except root can change /sys/firmware/efi/systab
    Checking if anyone except root can change /sysH
    Checking if anyone except root can change /t
    Checking if anyone except root can change /T
    Checking if anyone except root can change /T0
    Checking if anyone except root can change /t2H
    Checking if anyone except root can change /t3H
    Checking if anyone except root can change /t5X
    Checking if anyone except root can change /t6NX
    Checking if anyone except root can change /T7y
    Checking if anyone except root can change /tAH
    Checking if anyone except root can change /tB1
    Checking if anyone except root can change /TBZ/Sparse
    Checking if anyone except root can change /Teco
    Checking if anyone except root can change /text
    Checking if anyone except root can change /tGH
    Checking if anyone except root can change /thinPrint/enabled
    Checking if anyone except root can change /tjH
    Checking if anyone except root can change /tLD8
    Checking if anyone except root can change /TLS
    Checking if anyone except root can change /tmp
[UPC003] WARNING: /usr/lib/vmware/bin/vmware-vmx-debug is SUID root. /usr/lib/vmware/bin/vmware-vmx-debug contains the string /tmp. World write is set for /tmp (but sticky bit set)
    Checking if anyone except root can change /tmp/
[UPC003] WARNING: /usr/lib/vmware/bin/vmware-vmx-debug is SUID root. /usr/lib/vmware/bin/vmware-vmx-debug contains the string /tmp/. World write is set for /tmp/ (but sticky bit set)
[UPC003] WARNING: /usr/lib/vmware/bin/vmware-vmx-debug is SUID root. /usr/lib/vmware/bin/vmware-vmx-debug contains the string /tmp/. World write is set for /tmp (but sticky bit set)
    Checking if anyone except root can change /tmp/VMwareDnD/
[UPC003] WARNING: /usr/lib/vmware/bin/vmware-vmx-debug is SUID root. /usr/lib/vmware/bin/vmware-vmx-debug contains the string /tmp/VMwareDnD/. World write is set for /tmp/VMwareDnD/ (but sticky bit set)
[UPC003] WARNING: /usr/lib/vmware/bin/vmware-vmx-debug is SUID root. /usr/lib/vmware/bin/vmware-vmx-debug contains the string /tmp/VMwareDnD/. World write is set for /tmp/VMwareDnD (but sticky bit set)
[UPC003] WARNING: /usr/lib/vmware/bin/vmware-vmx-debug is SUID root. /usr/lib/vmware/bin/vmware-vmx-debug contains the string /tmp/VMwareDnD/. World write is set for /tmp (but sticky bit set)
    Checking if anyone except root can change /toolsImagePath
    Checking if anyone except root can change /TP
    Checking if anyone except root can change /Tr
    Checking if anyone except root can change /Track
    Checking if anyone except root can change //TRANSLIT
    Checking if anyone except root can change /tRH
    Checking if anyone except root can change /Tripoli
    Checking if anyone except root can change /TS
    Checking if anyone except root can change /tV1
    Checking if anyone except root can change /TW
    Checking if anyone except root can change /tW1
    Checking if anyone except root can change /tWtB
    Checking if anyone except root can change /txH
    Checking if anyone except root can change /Tycoelectronics
    Checking if anyone except root can change /type
    Checking if anyone except root can change /u
    Checking if anyone except root can change /U
    Checking if anyone except root can change /U/
    Checking if anyone except root can change /u1H
    Checking if anyone except root can change /u6H
    Checking if anyone except root can change /u8I
    Checking if anyone except root can change /uCH
    Checking if anyone except root can change /UCKe
    Checking if anyone except root can change /ud2
    Checking if anyone except root can change /ugn
    Checking if anyone except root can change /Uh
    Checking if anyone except root can change /UHHp
    Checking if anyone except root can change /uhL
    Checking if anyone except root can change /ui
    Checking if anyone except root can change /uI
    Checking if anyone except root can change /UID
    Checking if anyone except root can change /uint64
    Checking if anyone except root can change /uJh
    Checking if anyone except root can change /uK
    Checking if anyone except root can change /UKR
    Checking if anyone except root can change /Ulaanbaatar
    Checking if anyone except root can change /unity
    Checking if anyone except root can change /unity/
    Checking if anyone except root can change /unity/pbrpcServer
    Checking if anyone except root can change /UNLOCK
    Checking if anyone except root can change /unlock/username/
    Checking if anyone except root can change /unsupported
    Checking if anyone except root can change /UO
    Checking if anyone except root can change /updateIntervalSecs
    Checking if anyone except root can change /updateMouseInMKSWindow/in/inWindow
    Checking if anyone except root can change /Upv
    Checking if anyone except root can change /usbCtlr
    Checking if anyone except root can change /usbCtlr/ehci
    Checking if anyone except root can change /usbDevices/
    Checking if anyone except root can change /UsE
    Checking if anyone except root can change /user
    Checking if anyone except root can change /usr/bin/env
    Checking if anyone except root can change /usr/bin/lsb_release
    Checking if anyone except root can change /usr/bin/perl
    Checking if anyone except root can change /usr/libH
    Checking if anyone except root can change /usr/lib/pcoip/vchan_plugins
    Checking if anyone except root can change /usr/lib/vmware
    Checking if anyone except root can change /usr/lib/vmware/vmkernel
    Checking if anyone except root can change /usr/sbin/vmware-authd
    Checking if anyone except root can change /usr/share/zoneinfo/
    Checking if anyone except root can change /uU1
    Checking if anyone except root can change /uv
    Checking if anyone except root can change /UVl
    Checking if anyone except root can change /uy
    Checking if anyone except root can change /uY
    Checking if anyone except root can change /v
    Checking if anyone except root can change /V
    Checking if anyone except root can change /v1
    Checking if anyone except root can change /V8
    Checking if anyone except root can change /vaH
    Checking if anyone except root can change /val
    Checking if anyone except root can change /val/
    Checking if anyone except root can change /val/path
    Checking if anyone except root can change /var/lib/dhclient
    Checking if anyone except root can change /var/lib/dhcp
    Checking if anyone except root can change /var/lib/dhcp3
    Checking if anyone except root can change /var/lib/dhcpd
    Checking if anyone except root can change /var/lock
    Checking if anyone except root can change /var/log/vmware
    Checking if anyone except root can change /var/run/vmblock-fuse
    Checking if anyone except root can change /var/run/vmblock-fuse/blockdir
    Checking if anyone except root can change /var/run/vmblock-fuse/dev
    Checking if anyone except root can change /var/run/vmware
    Checking if anyone except root can change /var/run/vmware/authd_
    Checking if anyone except root can change /var/run/vmware/fuse
    Checking if anyone except root can change /var/run/vmware/tickets/
    Checking if anyone except root can change /var/run/vmware/usbarbitrator-socket
    Checking if anyone except root can change /VBJ
    Checking if anyone except root can change /vcpu
    Checking if anyone except root can change /vE
    Checking if anyone except root can change /version
    Checking if anyone except root can change /VGA
    Checking if anyone except root can change /view/clip/height
    Checking if anyone except root can change /view/clip/width
    Checking if anyone except root can change /view/clip/x
    Checking if anyone except root can change /view/clip/y
    Checking if anyone except root can change /view/val
    Checking if anyone except root can change /vigor/fields/Audio
    Checking if anyone except root can change /vigor/fields/Bios
    Checking if anyone except root can change /vigor/fields/Bootstrap
    Checking if anyone except root can change /vigor/fields/ConfigParams
    Checking if anyone except root can change /vigor/fields/CrashDetector
    Checking if anyone except root can change /vigor/fields/Disk
    Checking if anyone except root can change /vigor/fields/Ethernet
    Checking if anyone except root can change /vigor/fields/FeatureCompat
    Checking if anyone except root can change /vigor/fields/Floppy
    Checking if anyone except root can change /vigor/fields/GuestAppMonitor
    Checking if anyone except root can change /vigor/fields/GuestInfo
    Checking if anyone except root can change /vigor/fields/GuestIsolation
    Checking if anyone except root can change /vigor/fields/GuestOps
    Checking if anyone except root can change /vigor/fields/GuestOS
    Checking if anyone except root can change /vigor/fields/GuestPeriodic
    Checking if anyone except root can change /vigor/fields/GuestQuiesce
    Checking if anyone except root can change /vigor/fields/GuestStats
    Checking if anyone except root can change /vigor/fields/Heartbeat
    Checking if anyone except root can change /vigor/fields/HGFS
    Checking if anyone except root can change /vigor/fields/HotButton
    Checking if anyone except root can change /vigor/fields/HotPlugManager
    Checking if anyone except root can change /vigor/fields/IDE
    Checking if anyone except root can change /vigor/fields/LogVMX
    Checking if anyone except root can change /vigor/fields/Migrate
    Checking if anyone except root can change /vigor/fields/MiscOpts
    Checking if anyone except root can change /vigor/fields/MKS
    Checking if anyone except root can change /vigor/fields/Monitor
    Checking if anyone except root can change /vigor/fields/NamespaceMgr
    Checking if anyone except root can change /vigor/fields/NVDimm
    Checking if anyone except root can change /vigor/fields/OverheadMem
    Checking if anyone except root can change /vigor/fields/Parallel
    Checking if anyone except root can change /vigor/fields/PCIBridge
    Checking if anyone except root can change /vigor/fields/PCIPassthru
    Checking if anyone except root can change /vigor/fields/PolicyState
    Checking if anyone except root can change /vigor/fields/PowerState
    Checking if anyone except root can change /vigor/fields/ProcessorAndMemory
    Checking if anyone except root can change /vigor/fields/SATA
    Checking if anyone except root can change /vigor/fields/SCSI
    Checking if anyone except root can change /vigor/fields/Sensor
    Checking if anyone except root can change /vigor/fields/Serial
    Checking if anyone except root can change /vigor/fields/Snapshot
    Checking if anyone except root can change /vigor/fields/Tools
    Checking if anyone except root can change /vigor/fields/ToolsInstallManager
    Checking if anyone except root can change /vigor/fields/Upgrade
    Checking if anyone except root can change /vigor/fields/UsbDevice
    Checking if anyone except root can change /vigor/fields/UUIDVMX
    Checking if anyone except root can change /vigor/fields/VigorSample
    Checking if anyone except root can change /vigor/fields/VMAutomation
    Checking if anyone except root can change /vigor/fields/VMCI
    Checking if anyone except root can change /vigor/fields/VmhsBridge
    Checking if anyone except root can change /vigor/fields/VMVariable
    Checking if anyone except root can change /vigor/fields/VProbe
    Checking if anyone except root can change /vigor/fields/VSock
    Checking if anyone except root can change /vigor/fields/VUsb
    Checking if anyone except root can change /virtualScreen/height/
    Checking if anyone except root can change /virtualScreen/width/
    Checking if anyone except root can change /vkO
    Checking if anyone except root can change /Vladivostok
    Checking if anyone except root can change /vmci
    Checking if anyone except root can change /vmfs/devices/char/vsock/vsock
    Checking if anyone except root can change /vmfs/volumes/
    Checking if anyone except root can change /vmfs/volumes/vsan
    Checking if anyone except root can change /vmfs/volumes/vvol
    Checking if anyone except root can change /vm/instanceid
    Checking if anyone except root can change /vm/managedVM
    Checking if anyone except root can change /vm/mvmtid
    Checking if anyone except root can change /vmSettings/
    Checking if anyone except root can change /vm/setupComplete
    Checking if anyone except root can change /vmware
    Checking if anyone except root can change /vmware-authd
    Checking if anyone except root can change /vmx/cfgState/val/vnc
    Checking if anyone except root can change /vmx/execState/val
    Checking if anyone except root can change /vmx/remDev
    Checking if anyone except root can change /vnc/
    Checking if anyone except root can change /VO
    Checking if anyone except root can change /Volgograd
    Checking if anyone except root can change /VY3
    Checking if anyone except root can change /w
    Checking if anyone except root can change /W
    Checking if anyone except root can change //W
    Checking if anyone except root can change /Wb
    Checking if anyone except root can change /wCX
    Checking if anyone except root can change /West
    Checking if anyone except root can change /whH
    Checking if anyone except root can change /wHH
    Checking if anyone except root can change /width
    Checking if anyone except root can change /width/
    Checking if anyone except root can change /Windhoek
    Checking if anyone except root can change /windowSize/height/
    Checking if anyone except root can change /windowSize/width/
    Checking if anyone except root can change /wiped/
    Checking if anyone except root can change /wirelessIcon/iconClicked
    Checking if anyone except root can change /wiretype
    Checking if anyone except root can change /wJWt
    Checking if anyone except root can change /Wl
    Checking if anyone except root can change /Woodcrest/Merom
    Checking if anyone except root can change /wq
    Checking if anyone except root can change /write
    Checking if anyone except root can change /Write
    Checking if anyone except root can change /WRITE
    Checking if anyone except root can change /wS
    Checking if anyone except root can change /WS
    Checking if anyone except root can change /WS3
    Checking if anyone except root can change /wT
    Checking if anyone except root can change /x
    Checking if anyone except root can change /x/
    Checking if anyone except root can change /X
    Checking if anyone except root can change //X
    Checking if anyone except root can change /X_
    Checking if anyone except root can change /X04
    Checking if anyone except root can change /x1
    Checking if anyone except root can change /x11/auth/
    Checking if anyone except root can change /x11/display
    Checking if anyone except root can change /XD
    Checking if anyone except root can change /XE
    Checking if anyone except root can change /Xf
    Checking if anyone except root can change /xhciCtlr
    Checking if anyone except root can change /XjH
    Checking if anyone except root can change /x-l
    Checking if anyone except root can change /xM
    Checking if anyone except root can change /XmND
    Checking if anyone except root can change /Xn
    Checking if anyone except root can change /XR
    Checking if anyone except root can change /XRSTORS
    Checking if anyone except root can change /XSwHcX
    Checking if anyone except root can change /Xx-
    Checking if anyone except root can change /xZ7
    Checking if anyone except root can change /y
    Checking if anyone except root can change /y/
    Checking if anyone except root can change /Y
    Checking if anyone except root can change /Y6
    Checking if anyone except root can change /Yakutsk
    Checking if anyone except root can change /yC
    Checking if anyone except root can change /Ye
    Checking if anyone except root can change /YE
    Checking if anyone except root can change /Yekaterinburg
    Checking if anyone except root can change /Yerevan
    Checking if anyone except root can change /yf
    Checking if anyone except root can change /Yg
    Checking if anyone except root can change /YK
    Checking if anyone except root can change /yl
    Checking if anyone except root can change /ylu
    Checking if anyone except root can change /yq
    Checking if anyone except root can change /_yU
    Checking if anyone except root can change /YV5
    Checking if anyone except root can change /yvvYr
    Checking if anyone except root can change /Yw
    Checking if anyone except root can change /yX
    Checking if anyone except root can change /yY
    Checking if anyone except root can change /z
    Checking if anyone except root can change /Z
    Checking if anyone except root can change /Z/
    Checking if anyone except root can change /z6
    Checking if anyone except root can change /ZC
    Checking if anyone except root can change /ZNQ
    Checking if anyone except root can change /ZvC
Checking SUID-root program /usr/lib/vmware/bin/vmware-vmx-stats: -rwsr-xr-x 1 root root 24554168 Nov 23 21:35 /usr/lib/vmware/bin/vmware-vmx-stats
    Checking if anyone except root can change /usr/lib/libpthread.so.0
    Checking if anyone except root can change /usr/lib/libdl.so.2
    Checking if anyone except root can change /usr/lib/librt.so.1
    Checking if anyone except root can change /usr/lib/libX11.so.6
    Checking if anyone except root can change /usr/lib/libXext.so.6
    Checking if anyone except root can change /usr/lib/libXinerama.so.1
    Checking if anyone except root can change /usr/lib/libXcursor.so.1
    Checking if anyone except root can change /usr/lib/libXtst.so.6
    Checking if anyone except root can change /usr/lib/libXi.so.6
    Checking if anyone except root can change /usr/lib/libstdc++.so.6
    Checking if anyone except root can change /usr/lib/libm.so.6
    Checking if anyone except root can change /usr/lib/libgcc_s.so.1
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /usr/lib/libxcb.so.1
    Checking if anyone except root can change /usr/lib/libXrender.so.1
    Checking if anyone except root can change /usr/lib/libXfixes.so.3
    Checking if anyone except root can change /usr/lib/libXau.so.6
    Checking if anyone except root can change /usr/lib/libXdmcp.so.6
    Checking if anyone except root can change /
    Checking if anyone except root can change /_
    Checking if anyone except root can change /-
    Checking if anyone except root can change //
    Checking if anyone except root can change //_
    Checking if anyone except root can change /0
    Checking if anyone except root can change /0123
    Checking if anyone except root can change /0H
    Checking if anyone except root can change /0LX
    Checking if anyone except root can change /0R
    Checking if anyone except root can change /0wp
    Checking if anyone except root can change /0y
    Checking if anyone except root can change /1
    Checking if anyone except root can change /10Hz
    Checking if anyone except root can change //123456779
    Checking if anyone except root can change /1F
    Checking if anyone except root can change /1hD
    Checking if anyone except root can change /1UYBi
    Checking if anyone except root can change /1VGX
    Checking if anyone except root can change /1Z
    Checking if anyone except root can change /2
    Checking if anyone except root can change /29V
    Checking if anyone except root can change /2fw
    Checking if anyone except root can change /2h
    Checking if anyone except root can change /2I
    Checking if anyone except root can change /2nd
    Checking if anyone except root can change /2R
    Checking if anyone except root can change /2u
    Checking if anyone except root can change /2U
    Checking if anyone except root can change /2Yb
    Checking if anyone except root can change /2ybD
    Checking if anyone except root can change /3
    Checking if anyone except root can change /386
    Checking if anyone except root can change /3A
    Checking if anyone except root can change /3H
    Checking if anyone except root can change /3H1
    Checking if anyone except root can change /3IS
    Checking if anyone except root can change /3qGs
    Checking if anyone except root can change /4
    Checking if anyone except root can change /4/
    Checking if anyone except root can change /43O
    Checking if anyone except root can change /4N
    Checking if anyone except root can change /4O
    Checking if anyone except root can change /4VN
    Checking if anyone except root can change /5
    Checking if anyone except root can change /54
    Checking if anyone except root can change /5aHC5
    Checking if anyone except root can change /5c
    Checking if anyone except root can change /5H
    Checking if anyone except root can change /5lgw
    Checking if anyone except root can change /5Q
    Checking if anyone except root can change /5r
    Checking if anyone except root can change /5R
    Checking if anyone except root can change /6
    Checking if anyone except root can change /60
    Checking if anyone except root can change /60o
    Checking if anyone except root can change /7
    Checking if anyone except root can change /79
    Checking if anyone except root can change /7C
    Checking if anyone except root can change /7d
    Checking if anyone except root can change /7dIR
    Checking if anyone except root can change /7e
    Checking if anyone except root can change /7Fm
    Checking if anyone except root can change /-7IP
    Checking if anyone except root can change /7L
    Checking if anyone except root can change /7rv
    Checking if anyone except root can change /8
    Checking if anyone except root can change /83
    Checking if anyone except root can change /8/9
    Checking if anyone except root can change /8/a
    Checking if anyone except root can change /8BR
    Checking if anyone except root can change /8d
    Checking if anyone except root can change /8o
    Checking if anyone except root can change /8q
    Checking if anyone except root can change /8Xf
    Checking if anyone except root can change /9
    Checking if anyone except root can change /9b
    Checking if anyone except root can change /9GF4
    Checking if anyone except root can change /9JC
    Checking if anyone except root can change /9k
    Checking if anyone except root can change /9M
    Checking if anyone except root can change /9S
    Checking if anyone except root can change /9t
    Checking if anyone except root can change /9w
    Checking if anyone except root can change /a
    Checking if anyone except root can change /A
    Checking if anyone except root can change /A4DVE
    Checking if anyone except root can change /a5
    Checking if anyone except root can change /A8
    Checking if anyone except root can change /A9
    Checking if anyone except root can change /A9FL
    Checking if anyone except root can change /abort
    Checking if anyone except root can change /ac_adapter
    Checking if anyone except root can change /access/
    Checking if anyone except root can change /acpi
    Checking if anyone except root can change /action
    Checking if anyone except root can change /adminOverride/key/
    Checking if anyone except root can change /adminOverride/salt/
    Checking if anyone except root can change /Ae
    Checking if anyone except root can change /Ak
    Checking if anyone except root can change /Alaska
    Checking if anyone except root can change /Aleutian
    Checking if anyone except root can change /Algiers
    Checking if anyone except root can change /allocate
    Checking if anyone except root can change /ALLOW
    Checking if anyone except root can change /allowCancel
    Checking if anyone except root can change /allowMKSGrab/
    Checking if anyone except root can change /alpha/
    Checking if anyone except root can change /ambiguous
    Checking if anyone except root can change /Anadyr
    Checking if anyone except root can change /answer
    Checking if anyone except root can change /AOw
    Checking if anyone except root can change /appHealthMonitor/appState
    Checking if anyone except root can change /appHealthMonitor/appStatus
    Checking if anyone except root can change /Aqu
    Checking if anyone except root can change /aRt
    Checking if anyone except root can change /Asuncion
    Checking if anyone except root can change /At
    Checking if anyone except root can change /Athens
    Checking if anyone except root can change /Atlantic
    Checking if anyone except root can change /attemptDnDUngrab/x
    Checking if anyone except root can change /attemptDnDUngrab/y
    Checking if anyone except root can change /au
    Checking if anyone except root can change /Auckland
    Checking if anyone except root can change /audio
    Checking if anyone except root can change /authentication/type
    Checking if anyone except root can change /author
    Checking if anyone except root can change /avg/max
    Checking if anyone except root can change /AWI
    Checking if anyone except root can change /ay
    Checking if anyone except root can change /Azores
    Checking if anyone except root can change /b
    Checking if anyone except root can change /B
    Checking if anyone except root can change //B
    Checking if anyone except root can change /b8
    Checking if anyone except root can change /Baghdad
    Checking if anyone except root can change /Baku
    Checking if anyone except root can change /bandwidthCap
    Checking if anyone except root can change /base-addr
    Checking if anyone except root can change /battery
    Checking if anyone except root can change /bB
    Checking if anyone except root can change /bd
    Checking if anyone except root can change /BD/SD/TOM/TC/HH
    Checking if anyone except root can change /beginRecording/in/encodeEmptyFrames/
    Checking if anyone except root can change /beginRecording/in/filename/
    Checking if anyone except root can change /beginRecording/in/quality/
    Checking if anyone except root can change /beginRecording/out/index/
    Checking if anyone except root can change /bin
    Checking if anyone except root can change /bin/sh
    Checking if anyone except root can change /bit
    Checking if anyone except root can change /bitmapId/
    Checking if anyone except root can change /bootDelay
    Checking if anyone except root can change /bootDeviceClasses
    Checking if anyone except root can change /bootOrder
    Checking if anyone except root can change /bootRetryDelay
    Checking if anyone except root can change /bootRetryEnabled
    Checking if anyone except root can change /build/mts/release/bora-3160714/bora/build/build/buildroot-make-ws/stats/ws/vmcore-private/bootstrap/SUBDIRS
    Checking if anyone except root can change /build/mts/release/bora-3160714/bora/lib/public
    Checking if anyone except root can change /build/mts/release/bora-3160714/bora/public
    Checking if anyone except root can change /build/mts/release/bora-3160714/bora/vmcore/bootstrap
    Checking if anyone except root can change /build/mts/release/bora-3160714/bora/vmcore/decoder
    Checking if anyone except root can change /build/mts/release/bora-3160714/bora/vmcore/private
    Checking if anyone except root can change /build/mts/release/bora-3160714/bora/vmcore/public
    Checking if anyone except root can change /build/mts/release/bora-3160714/bora/vmcore/vmm/bt
    Checking if anyone except root can change /build/mts/release/bora-3160714/bora/vmcore/vmm/hv/public
    Checking if anyone except root can change /build/mts/release/bora-3160714/bora/vmcore/vmm/main
    Checking if anyone except root can change /build/mts/release/bora-3160714/bora/vmcore/vmm/mmu
    Checking if anyone except root can change /build/mts/release/bora-3160714/bora/vmcore/vmm/private
    Checking if anyone except root can change /build/mts/release/bora-3160714/bora/vmcore/vmm/public
    Checking if anyone except root can change /build/mts/release/bora-3160714/bora/vmx/public
    Checking if anyone except root can change /busy/allowCancel
    Checking if anyone except root can change /busy/cancel
    Checking if anyone except root can change /busy/op
    Checking if anyone except root can change /busy/progress
    Checking if anyone except root can change /busy/text
    Checking if anyone except root can change /button/lid
    Checking if anyone except root can change /bX
    Checking if anyone except root can change /c
    Checking if anyone except root can change /C
    Checking if anyone except root can change /C5o
    Checking if anyone except root can change /cache/blockSize
    Checking if anyone except root can change /cache/consistencyType
    Checking if anyone except root can change /cache/currentWarningPeriod/
    Checking if anyone except root can change /cache/enabled
    Checking if anyone except root can change /cache/expireTime/
    Checking if anyone except root can change /cache/mode
    Checking if anyone except root can change /cache/module
    Checking if anyone except root can change /cache/moduleVersion
    Checking if anyone except root can change /cache/sizeMax
    Checking if anyone except root can change /cache/sizeMin
    Checking if anyone except root can change /cache/sizeShares
    Checking if anyone except root can change /cache/transferType
    Checking if anyone except root can change /cache/usingCache/
    Checking if anyone except root can change /CalComp
    Checking if anyone except root can change /caps
    Checking if anyone except root can change /caps/autoUpgrade
    Checking if anyone except root can change /caps/autoUpgradeVersion
    Checking if anyone except root can change /caps/changeHost3DAvailabilityHint
    Checking if anyone except root can change /caps/colorDepthSet
    Checking if anyone except root can change /caps/desktopAutolock
    Checking if anyone except root can change /caps/displayGlobalOffset
    Checking if anyone except root can change /caps/displayTopologyModesSet
    Checking if anyone except root can change /caps/displayTopologySet
    Checking if anyone except root can change /caps/ghiFeatures
    Checking if anyone except root can change /caps/guestTempDirectoryVersion
    Checking if anyone except root can change /caps/hgfsServerDaemon
    Checking if anyone except root can change /caps/hgfsServerUpgrader
    Checking if anyone except root can change /caps/hgfsServerUser
    Checking if anyone except root can change /caps/hgfsUsabilityFeatures
    Checking if anyone except root can change /capsLockEnabled
    Checking if anyone except root can change /caps/minResolution/height
    Checking if anyone except root can change /caps/minResolution/width
    Checking if anyone except root can change /caps/openUrl
    Checking if anyone except root can change /caps/printerSet
    Checking if anyone except root can change /caps/resolutionServerDaemon
    Checking if anyone except root can change /caps/resolutionServerUser
    Checking if anyone except root can change /caps/resolutionSet
    Checking if anyone except root can change /caps/softExecStateChange
    Checking if anyone except root can change /caps/unityFeatures
    Checking if anyone except root can change /caps/upgraderParams
    Checking if anyone except root can change /Casablanca
    Checking if anyone except root can change /CAVNEX
    Checking if anyone except root can change /C-cF
    Checking if anyone except root can change /CdAU
    Checking if anyone except root can change /cdrom
    Checking if anyone except root can change /CD-ROM
    Checking if anyone except root can change /Central
    Checking if anyone except root can change /cf
    Checking if anyone except root can change /cfgState
    Checking if anyone except root can change /cfgState/new
    Checking if anyone except root can change /cfgState/val
    Checking if anyone except root can change /cfgState/val/dev
    Checking if anyone except root can change /cfgState/val/generationNo
    Checking if anyone except root can change /cfgState/val/generationNo/
    Checking if anyone except root can change /cfgState/val/guestIsolation/copyDisable
    Checking if anyone except root can change /cfgState/val/guestIsolation/hgfsDisable
    Checking if anyone except root can change /cfgState/val/guestIsolation/pasteDisable
    Checking if anyone except root can change /cfgState/val/hgfsUsability/linkRootShare
    Checking if anyone except root can change /cfgState/val/hgfsUsability/mapRootShare
    Checking if anyone except root can change /cfgState/val/hgfsUsability/redirectShellFolder
    Checking if anyone except root can change /cfgState/val/maxRemoteDisplayConnections
    Checking if anyone except root can change /cfgState/val/messageBusTunnelEnabled
    Checking if anyone except root can change /cfgState/val/migrateHostlog
    Checking if anyone except root can change /cfgState/val/name
    Checking if anyone except root can change /cfgState/val/opt/disableAcceleration
    Checking if anyone except root can change /cfgState/val/opt/logVmSample
    Checking if anyone except root can change /cfgState/val/opt/memTrimRate
    Checking if anyone except root can change /cfgState/val/powerType/powerOff
    Checking if anyone except root can change /cfgState/val/powerType/reset
    Checking if anyone except root can change /cfgState/val/powerType/suspend
    Checking if anyone except root can change /cfgState/val/priority
    Checking if anyone except root can change /cfgState/val/sensorAccelerometer
    Checking if anyone except root can change /cfgState/val/sensorAmbientLight
    Checking if anyone except root can change /cfgState/val/sensorCompass
    Checking if anyone except root can change /cfgState/val/sensorGyrometer
    Checking if anyone except root can change /cfgState/val/sensorInclinometer
    Checking if anyone except root can change /cfgState/val/sensorLocation
    Checking if anyone except root can change /cfgState/val/sensorOrientation
    Checking if anyone except root can change /cfgState/val/sharedFolder/
    Checking if anyone except root can change /cfgState/val/snapshot
    Checking if anyone except root can change /cfgState/val/snapshot/numRollingTiers/
    Checking if anyone except root can change /cfgState/val/toolPolicies/upgrade
    Checking if anyone except root can change /cfgState/val/toolsDeployPkg/pendingPackage
    Checking if anyone except root can change /cfgState/val/toolsDesktopAutolock
    Checking if anyone except root can change /cfgState/val/unity/showTaskbar
    Checking if anyone except root can change /cfgState/val/uuid/bios
    Checking if anyone except root can change /cfgState/val/uuid/location
    Checking if anyone except root can change /cfgVersion
    Checking if anyone except root can change /cG
    Checking if anyone except root can change /Chatham
    Checking if anyone except root can change /Chip
    Checking if anyone except root can change /Choibalsan
    Checking if anyone except root can change /CiE
    Checking if anyone except root can change /Clarkdale
    Checking if anyone except root can change /class/memory/changeOnRestart
    Checking if anyone except root can change /class/memory/sizeMb
    Checking if anyone except root can change /class/power_supply
    Checking if anyone except root can change /class/vcpu/num
    Checking if anyone except root can change /clipRegion/
    Checking if anyone except root can change /Co
    Checking if anyone except root can change /command
    Checking if anyone except root can change /command/
    Checking if anyone except root can change /conff
    Checking if anyone except root can change /config
    Checking if anyone except root can change /config/
    Checking if anyone except root can change /connections/
    Checking if anyone except root can change /Continental
    Checking if anyone except root can change /control
    Checking if anyone except root can change /cookie
    Checking if anyone except root can change /copypaste/cap/copyPasteGuestVersion
    Checking if anyone except root can change /copyprotection/identifier/
    Checking if anyone except root can change /copyprotection/restrictCopies/
    Checking if anyone except root can change /cpu
    Checking if anyone except root can change /cpuid_0_eax
    Checking if anyone except root can change /cpuid_0_eax_amd
    Checking if anyone except root can change /cpuid_0_ebx
    Checking if anyone except root can change /cpuid_0_ebx_amd
    Checking if anyone except root can change /cpuid_0_ecx
    Checking if anyone except root can change /cpuid_0_ecx_amd
    Checking if anyone except root can change /cpuid_0_edx
    Checking if anyone except root can change /cpuid_0_edx_amd
    Checking if anyone except root can change /cpuid_1_eax
    Checking if anyone except root can change /cpuid_1_eax_amd
    Checking if anyone except root can change /cpuid_1_ebx
    Checking if anyone except root can change /cpuid_1_ebx_amd
    Checking if anyone except root can change /cpuid_1_ecx
    Checking if anyone except root can change /cpuid_1_ecx_amd
    Checking if anyone except root can change /cpuid_1_edx
    Checking if anyone except root can change /cpuid_1_edx_amd
    Checking if anyone except root can change /cpuid_80_eax
    Checking if anyone except root can change /cpuid_80_eax_amd
    Checking if anyone except root can change /cpuid_80_ebx
    Checking if anyone except root can change /cpuid_80_ebx_amd
    Checking if anyone except root can change /cpuid_80_ecx
    Checking if anyone except root can change /cpuid_80_ecx_amd
    Checking if anyone except root can change /cpuid_80_edx
    Checking if anyone except root can change /cpuid_80_edx_amd
    Checking if anyone except root can change /cpuid_81_eax
    Checking if anyone except root can change /cpuid_81_eax_amd
    Checking if anyone except root can change /cpuid_81_ebx
    Checking if anyone except root can change /cpuid_81_ebx_amd
    Checking if anyone except root can change /cpuid_81_ecx
    Checking if anyone except root can change /cpuid_81_ecx_amd
    Checking if anyone except root can change /cpuid_81_edx
    Checking if anyone except root can change /cpuid_81_edx_amd
    Checking if anyone except root can change /cpuid_88_eax
    Checking if anyone except root can change /cpuid_88_eax_amd
    Checking if anyone except root can change /cpuid_88_ebx
    Checking if anyone except root can change /cpuid_88_ebx_amd
    Checking if anyone except root can change /cpuid_88_ecx
    Checking if anyone except root can change /cpuid_88_ecx_amd
    Checking if anyone except root can change /cpuid_88_edx
    Checking if anyone except root can change /cpuid_88_edx_amd
    Checking if anyone except root can change /create
    Checking if anyone except root can change /ctG
    Checking if anyone except root can change /Cuiaba
    Checking if anyone except root can change /cursorLocked
    Checking if anyone except root can change /custom/vmnet
    Checking if anyone except root can change /d
    Checking if anyone except root can change /D
    Checking if anyone except root can change /D0
    Checking if anyone except root can change /D9d
    Checking if anyone except root can change /D9D
    Checking if anyone except root can change /db/connection
    Checking if anyone except root can change /Dcc
    Checking if anyone except root can change /deleteMH
    Checking if anyone except root can change /dest/hostWindow/surface/
    Checking if anyone except root can change /dest/hostWindow/window/
    Checking if anyone except root can change /dev/
    Checking if anyone except root can change /dev/cdrom
    Checking if anyone except root can change /dev/disk/by-id
    Checking if anyone except root can change /dev/disk/by-id/dm-name-
    Checking if anyone except root can change /dev/dsp
    Checking if anyone except root can change /dev/fd0
    Checking if anyone except root can change /dev/fd1
    Checking if anyone except root can change /dev/fd2
    Checking if anyone except root can change /dev/fd3
    Checking if anyone except root can change /dev/hecH
    Checking if anyone except root can change /device/autodetect
    Checking if anyone except root can change /device/bidirectional
    Checking if anyone except root can change /device/clientDevice
    Checking if anyone except root can change /device/exclusive
    Checking if anyone except root can change /device/hostdev
    Checking if anyone except root can change /device/raw
    Checking if anyone except root can change /device/size
    Checking if anyone except root can change /device/type
    Checking if anyone except root can change /dev/lp0
    Checking if anyone except root can change /dev/lp1
    Checking if anyone except root can change /dev/lp2
    Checking if anyone except root can change /dev/lp3
    Checking if anyone except root can change /dev/mapper/
    Checking if anyone except root can change /dev/mem
    Checking if anyone except root can change /dev/mixer
    Checking if anyone except root can change /dev/null
[UPC004] WARNING: /usr/lib/vmware/bin/vmware-vmx-stats is SUID root. /usr/lib/vmware/bin/vmware-vmx-stats contains the string /dev/null. World write is set for /dev/null
    Checking if anyone except root can change /dev/parport0
    Checking if anyone except root can change /dev/parport1
    Checking if anyone except root can change /dev/parport2
    Checking if anyone except root can change /dev/parport3
    Checking if anyone except root can change /dev/sg
    Checking if anyone except root can change /dev/st
    Checking if anyone except root can change /dev/urandom
[UPC004] WARNING: /usr/lib/vmware/bin/vmware-vmx-stats is SUID root. /usr/lib/vmware/bin/vmware-vmx-stats contains the string /dev/urandom. World write is set for /dev/urandom
    Checking if anyone except root can change /dev/vmci
[UPC004] WARNING: /usr/lib/vmware/bin/vmware-vmx-stats is SUID root. /usr/lib/vmware/bin/vmware-vmx-stats contains the string /dev/vmci. World write is set for /dev/vmci
    Checking if anyone except root can change /dev/vmmon
    Checking if anyone except root can change /dev/vmnet
    Checking if anyone except root can change /dev/vmnet0
    Checking if anyone except root can change /dev/vmnet1
    Checking if anyone except root can change /dev/vmnet8
    Checking if anyone except root can change /dev/vsock
[UPC004] WARNING: /usr/lib/vmware/bin/vmware-vmx-stats is SUID root. /usr/lib/vmware/bin/vmware-vmx-stats contains the string /dev/vsock. World write is set for /dev/vsock
    Checking if anyone except root can change /dH
    Checking if anyone except root can change /disable
    Checking if anyone except root can change /disconnect
    Checking if anyone except root can change /disk
    Checking if anyone except root can change //Disk_Parameters
    Checking if anyone except root can change /DK
    Checking if anyone except root can change /dL
    Checking if anyone except root can change /DM
    Checking if anyone except root can change /dnd/cap/dndEnable
    Checking if anyone except root can change /dnd/cap/dndGuestVersion
    Checking if anyone except root can change /dnd/cap/ghCapable
    Checking if anyone except root can change /dnd/cap/guestCapable
    Checking if anyone except root can change /dnd/cap/hostCapable
    Checking if anyone except root can change /dnd/fileTransferring
    Checking if anyone except root can change /dnd/gh/blockRoot
    Checking if anyone except root can change /done/warningsPosted
    Checking if anyone except root can change /dotdot
    Checking if anyone except root can change /Drain
    Checking if anyone except root can change /drop
    Checking if anyone except root can change /DTY
    Checking if anyone except root can change /Dublin
    Checking if anyone except root can change /Dumping
    Checking if anyone except root can change /dyh
    Checking if anyone except root can change /e
    Checking if anyone except root can change /E
    Checking if anyone except root can change /E1
    Checking if anyone except root can change /e8
    Checking if anyone except root can change /eA
    Checking if anyone except root can change /East
    Checking if anyone except root can change /EasterIsland
    Checking if anyone except root can change /Eastern
    Checking if anyone except root can change /eatKeys
    Checking if anyone except root can change /ED
    Checking if anyone except root can change /EG
    Checking if anyone except root can change /eK
    Checking if anyone except root can change /ekr4K9t
    Checking if anyone except root can change /el
    Checking if anyone except root can change /El_Aaiun
    Checking if anyone except root can change /em
    Checking if anyone except root can change /eN
    Checking if anyone except root can change /enable
    Checking if anyone except root can change /enabled
    Checking if anyone except root can change /enableMouse/
    Checking if anyone except root can change /ENCLU
    Checking if anyone except root can change /endRecording/in/index/
    Checking if anyone except root can change /EN/EX
    Checking if anyone except root can change /eo
    Checking if anyone except root can change /ep
    Checking if anyone except root can change /EPT
    Checking if anyone except root can change /error/errCode
    Checking if anyone except root can change /error/errCode/
    Checking if anyone except root can change /error/errMsg
    Checking if anyone except root can change /error/errMsg/
    Checking if anyone except root can change /error/id
    Checking if anyone except root can change /error/text
    Checking if anyone except root can change /esp0
    Checking if anyone except root can change /ESXi
    Checking if anyone except root can change /etc/annvix-release
    Checking if anyone except root can change /etc/arch-release
    Checking if anyone except root can change /etc/arklinux-release
    Checking if anyone except root can change /etc/aurox-release
    Checking if anyone except root can change /etc/blackcat-release
    Checking if anyone except root can change /etc/cobalt-release
    Checking if anyone except root can change /etc/conectiva-release
    Checking if anyone except root can change /etc/debian_release
    Checking if anyone except root can change /etc/debian_version
    Checking if anyone except root can change /etc/e-smith-release
    Checking if anyone except root can change /etc/fedora-release
    Checking if anyone except root can change /etc/gentoo-release
    Checking if anyone except root can change /etc/immunix-release
    Checking if anyone except root can change /etc/knoppix_version
    Checking if anyone except root can change /etc/lfs-release
    Checking if anyone except root can change /etc/linuxppc-release
    Checking if anyone except root can change /etc/localtime
    Checking if anyone except root can change /etc/lsb-release
    Checking if anyone except root can change /etc/mandrakelinux-release
    Checking if anyone except root can change /etc/mandrake-release
    Checking if anyone except root can change /etc/mandriva-release
    Checking if anyone except root can change /etc/mklinux-release
    Checking if anyone except root can change /etc/mtab
[UPC001] WARNING: /usr/lib/vmware/bin/vmware-vmx-stats is SUID root. /usr/lib/vmware/bin/vmware-vmx-stats contains the string /etc/mtab. The user nahoskins can write to /etc/mtab
    Checking if anyone except root can change /etc/nld-release
    Checking if anyone except root can change /etc/novell-release
    Checking if anyone except root can change /etc/oracle-release
    Checking if anyone except root can change /etc/pki/tls
    Checking if anyone except root can change /etc/pld-release
    Checking if anyone except root can change /etc/redhat-release
    Checking if anyone except root can change /etc/redhat_version
    Checking if anyone except root can change /etc/release
    Checking if anyone except root can change /etc/slackware-release
    Checking if anyone except root can change /etc/slackware-version
    Checking if anyone except root can change /etc/sles-release
    Checking if anyone except root can change /etc/ssl/certs
    Checking if anyone except root can change /etc/sun-release
    Checking if anyone except root can change /etc/SuSE-release
    Checking if anyone except root can change /etc/tinysofa-release
    Checking if anyone except root can change /etc/turbolinux-release
    Checking if anyone except root can change /etc/ultrapenguin-release
    Checking if anyone except root can change /etc/UnitedLinux-release
    Checking if anyone except root can change /etc/va-release
    Checking if anyone except root can change /etc/vmware
    Checking if anyone except root can change /etc/vmware/config
    Checking if anyone except root can change /etc/vmware/not_configured
    Checking if anyone except root can change /etc/vmwH
    Checking if anyone except root can change /etc/yellowdog-release
    Checking if anyone except root can change /Eucla
    Checking if anyone except root can change /evql
    Checking if anyone except root can change /execState/new
    Checking if anyone except root can change /execState/new/
    Checking if anyone except root can change /execState/val
    Checking if anyone except root can change /expiration/activationTime/
    Checking if anyone except root can change /expiration/currentTime/
    Checking if anyone except root can change /expiration/expireText/
    Checking if anyone except root can change /expiration/validFrom/
    Checking if anyone except root can change /expiration/validTill/
    Checking if anyone except root can change /expiration/warningText/
    Checking if anyone except root can change /expiration/warningTime/
    Checking if anyone except root can change /eY
    Checking if anyone except root can change /EzI
    Checking if anyone except root can change /f
    Checking if anyone except root can change /-f_
    Checking if anyone except root can change /f_
    Checking if anyone except root can change /F
    Checking if anyone except root can change /f1
    Checking if anyone except root can change /f6
    Checking if anyone except root can change /fault
    Checking if anyone except root can change /FD_
    Checking if anyone except root can change /fds
    Checking if anyone except root can change /fE
    Checking if anyone except root can change /fence/event/
    Checking if anyone except root can change /fence/request/
    Checking if anyone except root can change /file/filePath
    Checking if anyone except root can change /file/flat
    Checking if anyone except root can change /fileName
    Checking if anyone except root can change /firmware
    Checking if anyone except root can change /flags/isRendering/
    Checking if anyone except root can change /flat/vmfs
    Checking if anyone except root can change /floppy
    Checking if anyone except root can change /floppy/ix
    Checking if anyone except root can change /fMX
    Checking if anyone except root can change /_fN
    Checking if anyone except root can change /fo
    Checking if anyone except root can change /forceEncryptionPasswordChangeOnMove/
    Checking if anyone except root can change /forceSetupOnce
    Checking if anyone except root can change /Fp
    Checking if anyone except root can change /fR
    Checking if anyone except root can change //FRh
    Checking if anyone except root can change /from
    Checking if anyone except root can change /FS
    Checking if anyone except root can change /fullscreenHint/
    Checking if anyone except root can change /fZ
    Checking if anyone except root can change /g
    Checking if anyone except root can change /-_g
    Checking if anyone except root can change /G
    Checking if anyone except root can change /G5
    Checking if anyone except root can change /Geometry
    Checking if anyone except root can change /getScreenshot/in/multiMonitor/
    Checking if anyone except root can change /ghi/allowCopyPaste/
    Checking if anyone except root can change /ghi/allowDragDrop/
    Checking if anyone except root can change /ghi/allowFolderSharing/
    Checking if anyone except root can change /ghIntegration
    Checking if anyone except root can change /ghIntegration/hostShellActions
    Checking if anyone except root can change /ghIntegration/launchMenu
    Checking if anyone except root can change /ghIntegration/protocolHandlers
    Checking if anyone except root can change /ghIntegration/trashFolder/empty
    Checking if anyone except root can change /GivB
    Checking if anyone except root can change /gj
    Checking if anyone except root can change /Gk6
    Checking if anyone except root can change /GN
    Checking if anyone except root can change /Godthab
    Checking if anyone except root can change /gosInstalledStatus
    Checking if anyone except root can change /GQZ
    Checking if anyone except root can change /grabRequest/in/motionGrab
    Checking if anyone except root can change /grabRequest/in/windowId
    Checking if anyone except root can change /grabState/val
    Checking if anyone except root can change /Greyhound
    Checking if anyone except root can change /GSg
    Checking if anyone except root can change /gStatus
    Checking if anyone except root can change /GT
    Checking if anyone except root can change /Guatemala
    Checking if anyone except root can change /guestHints/fullscreen
    Checking if anyone except root can change /guestInfo
    Checking if anyone except root can change /guestInfo/config
    Checking if anyone except root can change /guestInfo/config/
    Checking if anyone except root can change /guestInfo/config/nicInfo
    Checking if anyone except root can change /guestInfo/config/nicInfo/array
    Checking if anyone except root can change /guestInfo/config/nicInfo/xdr
    Checking if anyone except root can change /guestInfo/config/osName
    Checking if anyone except root can change /guestInfo/config/toolsVersion
    Checking if anyone except root can change /guestInfo/stats/
    Checking if anyone except root can change /guestInfo/stats/uptime
    Checking if anyone except root can change /guestInfo/toolsManifestInfo/dataBuffer
    Checking if anyone except root can change /guestInfo/toolsManifestInfo/dataSize
    Checking if anyone except root can change /guestInfo/toolsManifestInfo/hostManifestCacheDir
    Checking if anyone except root can change /guestInfo/toolsManifestInfo/onInstallEvent
    Checking if anyone except root can change /guestInfo/toolsManifestInfo/vmCfgPath
    Checking if anyone except root can change /guestInfo/toolsManifestInfo/vmToolsStatus
    Checking if anyone except root can change /guestInfo/toolsUpdateCounter
    Checking if anyone except root can change /guestTools
    Checking if anyone except root can change /guestTools/currentStatus/guestConfDirectory
    Checking if anyone except root can change /guestTools/currentStatus/guestTempDirectory
    Checking if anyone except root can change /guestTools/currentStatus/hgfsEnabled
    Checking if anyone except root can change /guestTools/currentStatus/unityActive
    Checking if anyone except root can change /guestTools/customPath
    Checking if anyone except root can change /guestTools/deployPkgState
    Checking if anyone except root can change /guestTools/installerActive
    Checking if anyone except root can change /guestTools/installError
    Checking if anyone except root can change /guestTools/installState/new
    Checking if anyone except root can change /guestTools/lastInstallStatus
    Checking if anyone except root can change /guestTools/runningStatus
    Checking if anyone except root can change /guestTools/toolsAppsRunning/
    Checking if anyone except root can change /guestTools/vmsupport/gStatus
    Checking if anyone except root can change /guestTools/vmsupport/hgCmd
    Checking if anyone except root can change /guestTopologyLimits
    Checking if anyone except root can change /gv
    Checking if anyone except root can change /gW
    Checking if anyone except root can change /G_w
    Checking if anyone except root can change /GY8
    Checking if anyone except root can change /h
    Checking if anyone except root can change /-h
    Checking if anyone except root can change /H
    Checking if anyone except root can change /H5Rb
    Checking if anyone except root can change /H9
    Checking if anyone except root can change /H9k
    Checking if anyone except root can change /hardware
    Checking if anyone except root can change /Harpertown
    Checking if anyone except root can change /hasHostOrigin/
    Checking if anyone except root can change /hasRoot/
    Checking if anyone except root can change /Havana
    Checking if anyone except root can change /Havendale
    Checking if anyone except root can change /Hc
    Checking if anyone except root can change /HcD
    Checking if anyone except root can change /hddOrder
    Checking if anyone except root can change /height
    Checking if anyone except root can change /height/
    Checking if anyone except root can change /Hesso
    Checking if anyone except root can change /hH
    Checking if anyone except root can change /HJ0
    Checking if anyone except root can change /hkf0
    Checking if anyone except root can change /host
    Checking if anyone except root can change /hostCDROMNumber
    Checking if anyone except root can change /hostOrigin/x/
    Checking if anyone except root can change /hostOrigin/y/
    Checking if anyone except root can change /hostPublishDirectory
    Checking if anyone except root can change /hostWindow/generation/
    Checking if anyone except root can change /hostWindow/height/
    Checking if anyone except root can change /hostWindow/surface/
    Checking if anyone except root can change /hostWindow/width/
    Checking if anyone except root can change /hotKeyPrefix
    Checking if anyone except root can change /Hovd
    Checking if anyone except root can change /hScY
    Checking if anyone except root can change /html
    Checking if anyone except root can change /Hw
    Checking if anyone except root can change /hwVersion
    Checking if anyone except root can change /Hx
    Checking if anyone except root can change /hy
    Checking if anyone except root can change /i
    Checking if anyone except root can change /I
    Checking if anyone except root can change /icu
    Checking if anyone except root can change /id
    Checking if anyone except root can change /ideDev
    Checking if anyone except root can change /ideDev/ctlrIx
    Checking if anyone except root can change /ideDev/ix
    Checking if anyone except root can change /iDU
    Checking if anyone except root can change /ifx
    Checking if anyone except root can change //Iix
    Checking if anyone except root can change /iK
    Checking if anyone except root can change /image/filePath
    Checking if anyone except root can change /image/readonly
    Checking if anyone except root can change /in
    Checking if anyone except root can change /in/a
    Checking if anyone except root can change /in/action
    Checking if anyone except root can change /in/adapterNum
    Checking if anyone except root can change /in/address
    Checking if anyone except root can change /in/addressType
    Checking if anyone except root can change /in/allowGuestControl
    Checking if anyone except root can change /in/allowHWProvider
    Checking if anyone except root can change /in/altitude
    Checking if anyone except root can change /in/annotation
    Checking if anyone except root can change /in/arguments
    Checking if anyone except root can change /in/authBlob
    Checking if anyone except root can change /in/autoDetect
    Checking if anyone except root can change /in/b
    Checking if anyone except root can change /in/backingPath
    Checking if anyone except root can change /in/backingPathName
    Checking if anyone except root can change /in/backingPathNetProxy
    Checking if anyone except root can change /in/backingPropBlob
    Checking if anyone except root can change /in/backingType
    Checking if anyone except root can change /in/bandwidthCap
    Checking if anyone except root can change /in/batchID
    Checking if anyone except root can change /in/bidirectional
    Checking if anyone except root can change /in/blobValue
    Checking if anyone except root can change /in/bsdName
    Checking if anyone except root can change /in/buf
    Checking if anyone except root can change /in/busSpeed
    Checking if anyone except root can change /in/busType
    Checking if anyone except root can change /in/c
    Checking if anyone except root can change /in/cdrom
    Checking if anyone except root can change /in/choice
    Checking if anyone except root can change /in/classType
    Checking if anyone except root can change /in/clearAuto
    Checking if anyone except root can change /in/clientDevice
    Checking if anyone except root can change /in/clientFlags
    Checking if anyone except root can change /in/cmdline
    Checking if anyone except root can change /incoming
    Checking if anyone except root can change /incoming/millirate
    Checking if anyone except root can change /incoming/numPackets
    Checking if anyone except root can change /in/comment
    Checking if anyone except root can change /in/compensatedMagneticNorth
    Checking if anyone except root can change /in/connectionType
    Checking if anyone except root can change /in/connectOp
    Checking if anyone except root can change /in/controller
    Checking if anyone except root can change /in/count
    Checking if anyone except root can change /in/createParentDirectories
    Checking if anyone except root can change /in/ctkEnabled
    Checking if anyone except root can change /in/d
    Checking if anyone except root can change /in/data
    Checking if anyone except root can change /in/dataBlob
    Checking if anyone except root can change /in/dataType
    Checking if anyone except root can change /in/delay
    Checking if anyone except root can change /in/deleteChildren
    Checking if anyone except root can change /in/description
    Checking if anyone except root can change /in/device
    Checking if anyone except root can change /in/deviceId
    Checking if anyone except root can change /in/deviceLabel
    Checking if anyone except root can change /in/devicePropBlob
    Checking if anyone except root can change /in/deviceType
    Checking if anyone except root can change /in/digest
    Checking if anyone except root can change /in/directory
    Checking if anyone except root can change /in/disabled
    Checking if anyone except root can change /in/displayName
    Checking if anyone except root can change /in/displayRectsBlob
    Checking if anyone except root can change /in/dstwid
    Checking if anyone except root can change /in/dvsConnectionId
    Checking if anyone except root can change /in/dvsPortgroupId
    Checking if anyone except root can change /in/dvsPortId
    Checking if anyone except root can change /in/dvsSwitchId
    Checking if anyone except root can change /in/emulation
    Checking if anyone except root can change /in/enable
    Checking if anyone except root can change /in/enabled
    Checking if anyone except root can change /in/envBlob
    Checking if anyone except root can change /in/eventID
    Checking if anyone except root can change /in/exclusiveAccess
    Checking if anyone except root can change /in/execScripts
    Checking if anyone except root can change /in/expandStrings
    Checking if anyone except root can change /in/extension
    Checking if anyone except root can change /in/externalId
    Checking if anyone except root can change /in/features
    Checking if anyone except root can change /in/fileName
    Checking if anyone except root can change /in/filterEnable
    Checking if anyone except root can change /in/filters
    Checking if anyone except root can change /in/firmwareType
    Checking if anyone except root can change /in/force
    Checking if anyone except root can change /in/forRevert
    Checking if anyone except root can change /in/fromPathName
    Checking if anyone except root can change /in/functions
    Checking if anyone except root can change /in/guestFileRoot
    Checking if anyone except root can change /in/guestFileRootSize
    Checking if anyone except root can change /in/guestWritable
    Checking if anyone except root can change /in/hbaType
    Checking if anyone except root can change /in/height
    Checking if anyone except root can change /in/hidcode
    Checking if anyone except root can change /in/horizontalAccuracy
    Checking if anyone except root can change /in/hostDevice
    Checking if anyone except root can change /in/hostStagingDir
    Checking if anyone except root can change /in/id
    Checking if anyone except root can change /in/identifier
    Checking if anyone except root can change /in/illuminance
    Checking if anyone except root can change /in/index
    Checking if anyone except root can change /in/isCommit
    Checking if anyone except root can change /in/isDnD
    Checking if anyone except root can change /in/isInteresting
    Checking if anyone except root can change /in/isMapCert
    Checking if anyone except root can change /in/isOverwrite
    Checking if anyone except root can change /in/isUpgrade
    Checking if anyone except root can change /in/isVolatile
    Checking if anyone except root can change /initiated/customPath
    Checking if anyone except root can change /initiated/prompt
    Checking if anyone except root can change /injectKeys/in/sequence
    Checking if anyone except root can change /in/key
    Checking if anyone except root can change /in/keys
    Checking if anyone except root can change /in/keyValueBlob
    Checking if anyone except root can change /in/label
    Checking if anyone except root can change /in/latitude
    Checking if anyone except root can change /in/lazy
    Checking if anyone except root can change /in/length
    Checking if anyone except root can change /in/level
    Checking if anyone except root can change /in/limit
    Checking if anyone except root can change /in/linkStatePropagationEnable
    Checking if anyone except root can change /in/localFiles
    Checking if anyone except root can change /in/localSize
    Checking if anyone except root can change /in/longitude
    Checking if anyone except root can change /in/matchPattern
    Checking if anyone except root can change /in/maxDevices
    Checking if anyone except root can change /in/maxDurationSeconds
    Checking if anyone except root can change /in/maxEventFromGuest
    Checking if anyone except root can change /in/maxEventToGuest
    Checking if anyone except root can change /in/maxResults
    Checking if anyone except root can change /in/maxSize
    Checking if anyone except root can change /in/maxWaitTime
    Checking if anyone except root can change /in/memorySize
    Checking if anyone except root can change /in/mid
    Checking if anyone except root can change /in/mode
    Checking if anyone except root can change /in/modifiers
    Checking if anyone except root can change /in/module
    Checking if anyone except root can change /in/monitor
    Checking if anyone except root can change /in/name
    Checking if anyone except root can change /in/netEndPoint
    Checking if anyone except root can change /in/networkBootProtocol
    Checking if anyone except root can change /in/networkId
    Checking if anyone except root can change /in/networkName
    Checking if anyone except root can change /in/networkType
    Checking if anyone except root can change /in/newDoubleValue
    Checking if anyone except root can change /in/newEnumValue
    Checking if anyone except root can change /in/newInt64Value
    Checking if anyone except root can change /in/newMemSizeMB
    Checking if anyone except root can change /in/newNumSectors
    Checking if anyone except root can change /in/newNumVCPUs
    Checking if anyone except root can change /in/newStringValue
    Checking if anyone except root can change /in/nextQuery
    Checking if anyone except root can change /in/node
    Checking if anyone except root can change /in/notificationTime
    Checking if anyone except root can change /in/nsType
    Checking if anyone except root can change /in/numEnvVar
    Checking if anyone except root can change /in/numEnvVars
    Checking if anyone except root can change /in/offset
    Checking if anyone except root can change /in/operation
    Checking if anyone except root can change /in/options
    Checking if anyone except root can change /in/opType
    Checking if anyone except root can change /in/order
    Checking if anyone except root can change /in/overWrite
    Checking if anyone except root can change /in/parent
    Checking if anyone except root can change /in/path
    Checking if anyone except root can change /in/pathname
    Checking if anyone except root can change /in/pathName
    Checking if anyone except root can change /in/paused
    Checking if anyone except root can change /in/pciSlotNumber
    Checking if anyone except root can change /in/pemCert
    Checking if anyone except root can change /in/pid
    Checking if anyone except root can change /in/pidBlob
    Checking if anyone except root can change /in/pipeEndPoint
    Checking if anyone except root can change /in/policy
    Checking if anyone except root can change /in/port
    Checking if anyone except root can change /in/prefix
    Checking if anyone except root can change /in/present
    Checking if anyone except root can change /in/progName
    Checking if anyone except root can change /inProgress/current/
    Checking if anyone except root can change /inProgress/maximum/
    Checking if anyone except root can change /inProgress/percentDone
    Checking if anyone except root can change /inProgress/percentDone/
    Checking if anyone except root can change /inProgress/statusMessage
    Checking if anyone except root can change /in/propBlob
    Checking if anyone except root can change /in/pvnID
    Checking if anyone except root can change /in/quiesceApps
    Checking if anyone except root can change /in/quiesced
    Checking if anyone except root can change /in/quiesceFS
    Checking if anyone except root can change /in/readOnly
    Checking if anyone except root can change /in/recursive
    Checking if anyone except root can change /in/regPath
    Checking if anyone except root can change /in/remoteFiles
    Checking if anyone except root can change /in/remoteSize
    Checking if anyone except root can change /in/reqPath
    Checking if anyone except root can change /in/reservation
    Checking if anyone except root can change /in/resultsSeen
    Checking if anyone except root can change /in/rxbwLimit
    Checking if anyone except root can change /in/rxfiDroprate
    Checking if anyone except root can change /in/rxfiDropsize
    Checking if anyone except root can change /in/saveDeviceState
    Checking if anyone except root can change /in/scriptArg
    Checking if anyone except root can change /in/seq
    Checking if anyone except root can change /in/sequence
    Checking if anyone except root can change /in/sessionID
    Checking if anyone except root can change /in/shares
    Checking if anyone except root can change /in/sharing
    Checking if anyone except root can change /in/size
    Checking if anyone except root can change /in/sizeMB
    Checking if anyone except root can change /in/snapshotUid
    Checking if anyone except root can change /in/snapshotUID
    Checking if anyone except root can change /in/soft
    Checking if anyone except root can change /in/spec
    Checking if anyone except root can change /instanceid/
    Checking if anyone except root can change /in/startConnected
    Checking if anyone except root can change /in/state
    Checking if anyone except root can change /in/sticky
    Checking if anyone except root can change /in/str
    Checking if anyone except root can change /in/strOpt
    Checking if anyone except root can change /in/subjectName
    Checking if anyone except root can change /in/subjectType
    Checking if anyone except root can change /in/suffix
    Checking if anyone except root can change /in/synctime
    Checking if anyone except root can change /in/targetNum
    Checking if anyone except root can change /in/throughputCap
    Checking if anyone except root can change /in/timeout
    Checking if anyone except root can change /in/ToPathName
    Checking if anyone except root can change /in/tryNoRxLoss
    Checking if anyone except root can change /in/txbwLimit
    Checking if anyone except root can change /in/txfiDroprate
    Checking if anyone except root can change /in/txfiDropsize
    Checking if anyone except root can change /in/type
    Checking if anyone except root can change /in/updateLiveData
    Checking if anyone except root can change /in/uptCompatibilityEnabled
    Checking if anyone except root can change /in/useCustomizedProgress
    Checking if anyone except root can change /in/useCustomizedQuestion
    Checking if anyone except root can change /in/userName
    Checking if anyone except root can change /in/uuid
    Checking if anyone except root can change /in/val
    Checking if anyone except root can change /invalid
    Checking if anyone except root can change /in/value
    Checking if anyone except root can change /in/valueName
    Checking if anyone except root can change /in/vcpuCount
    Checking if anyone except root can change /in/vcpuid
    Checking if anyone except root can change /in/vcUUID
    Checking if anyone except root can change /in/version
    Checking if anyone except root can change /in/verticalAccuracy
    Checking if anyone except root can change /in/vflashBlockSize
    Checking if anyone except root can change /in/vflashCacheMax
    Checking if anyone except root can change /in/vflashCacheMin
    Checking if anyone except root can change /in/vflashConsistencyType
    Checking if anyone except root can change /in/vflashEnabled
    Checking if anyone except root can change /in/vflashMode
    Checking if anyone except root can change /in/vflashModule
    Checking if anyone except root can change /in/vflashShares
    Checking if anyone except root can change /in/virtualDev
    Checking if anyone except root can change /invlpg
    Checking if anyone except root can change /in/vmodlWritable
    Checking if anyone except root can change /in/vmxBuildType
    Checking if anyone except root can change /in/vnet
    Checking if anyone except root can change /in/volumeUUID
    Checking if anyone except root can change /in/wakeOnPcktRcv
    Checking if anyone except root can change /in/when
    Checking if anyone except root can change /in/width
    Checking if anyone except root can change /in/workingDir
    Checking if anyone except root can change /in/wowBitness
    Checking if anyone except root can change /in/writeThrough
    Checking if anyone except root can change /in/x
    Checking if anyone except root can change /in/y
    Checking if anyone except root can change /in/yieldOnMsrRead
    Checking if anyone except root can change /in/z
    Checking if anyone except root can change /iq_
    Checking if anyone except root can change /IQ
    Checking if anyone except root can change /Irkutsk
    Checking if anyone except root can change /isPrimary/
    Checking if anyone except root can change /Iter
    Checking if anyone except root can change /ITRI
    Checking if anyone except root can change /Iv
    Checking if anyone except root can change /IX
    Checking if anyone except root can change /j
    Checking if anyone except root can change /J
    Checking if anyone except root can change /j6
    Checking if anyone except root can change /javascript
    Checking if anyone except root can change /Jerusalem
    Checking if anyone except root can change /jH
    Checking if anyone except root can change /jkDP
    Checking if anyone except root can change /jm
    Checking if anyone except root can change /JO8L
    Checking if anyone except root can change /Job
    Checking if anyone except root can change /jS
    Checking if anyone except root can change /jZ
    Checking if anyone except root can change /k
    Checking if anyone except root can change /K
    Checking if anyone except root can change /k2
    Checking if anyone except root can change /k2/
    Checking if anyone except root can change /Kamchatka
    Checking if anyone except root can change /kblrSendKey/in/down
    Checking if anyone except root can change /kblrSendKey/in/usageCode
    Checking if anyone except root can change /kblrSendKey/in/usagePage
    Checking if anyone except root can change /Kbtek
    Checking if anyone except root can change /keyboard/eatKeys/
    Checking if anyone except root can change /keyboard/keyBindings/
    Checking if anyone except root can change /keyboard/notifyUIEvent
    Checking if anyone except root can change /keyEvent/modifiers
    Checking if anyone except root can change /keyEvent/scancode
    Checking if anyone except root can change /keylist
    Checking if anyone except root can change /Kg
    Checking if anyone except root can change /kI
    Checking if anyone except root can change /KJ
    Checking if anyone except root can change /KM
    Checking if anyone except root can change /kn
    Checking if anyone except root can change /KQz
    Checking if anyone except root can change /Krasnoyarsk
    Checking if anyone except root can change /Ks
    Checking if anyone except root can change /kVt
    Checking if anyone except root can change /kvV
    Checking if anyone except root can change /kyG
    Checking if anyone except root can change /l
    Checking if anyone except root can change /L
    Checking if anyone except root can change /L0
    Checking if anyone except root can change /l21
    Checking if anyone except root can change /l3a
    Checking if anyone except root can change /L4
    Checking if anyone except root can change /L9
    Checking if anyone except root can change /Lc
    Checking if anyone except root can change /LD
    Checking if anyone except root can change /legacyBootEnabled
    Checking if anyone except root can change /length
    Checking if anyone except root can change /lengths
    Checking if anyone except root can change /Lg
    Checking if anyone except root can change /licenses
    Checking if anyone except root can change /limit
    Checking if anyone except root can change /limitRefreshRate/
    Checking if anyone except root can change /listeningForConnections/
    Checking if anyone except root can change /Lm
    Checking if anyone except root can change /location
    Checking if anyone except root can change /lockOut
    Checking if anyone except root can change /logFile
    Checking if anyone except root can change /logFilename/
    Checking if anyone except root can change /London
    Checking if anyone except root can change /Lord_Howe
    Checking if anyone except root can change /LP
    Checking if anyone except root can change /Ls
    Checking if anyone except root can change /Lu
    Checking if anyone except root can change /lY/
    Checking if anyone except root can change /Lynnfield
    Checking if anyone except root can change /m
    Checking if anyone except root can change /M
    Checking if anyone except root can change /M3/by
    Checking if anyone except root can change /MA
    Checking if anyone except root can change /Magadan
    Checking if anyone except root can change /matchDefault
    Checking if anyone except root can change /max
    Checking if anyone except root can change /MBN
    Checking if anyone except root can change /Mc
    Checking if anyone except root can change /media
    Checking if anyone except root can change /memory
    Checking if anyone except root can change /messages
    Checking if anyone except root can change /Mi
    Checking if anyone except root can change /migr1
    Checking if anyone except root can change /migrateState/lastStatus/
    Checking if anyone except root can change /migrateState/status/
    Checking if anyone except root can change /migrH
    Checking if anyone except root can change /Miquelon
    Checking if anyone except root can change /MJ
    Checking if anyone except root can change /Mk59ab61
    Checking if anyone except root can change /ml
    Checking if anyone except root can change /mO
    Checking if anyone except root can change /Montevideo
    Checking if anyone except root can change /Moscow
    Checking if anyone except root can change /Mountain
    Checking if anyone except root can change /mstat
    Checking if anyone except root can change /MU
    Checking if anyone except root can change /mvm/policyState/val/
    Checking if anyone except root can change /n
    Checking if anyone except root can change /N
    Checking if anyone except root can change /_N
    Checking if anyone except root can change /N/0k
    Checking if anyone except root can change /N1C
    Checking if anyone except root can change /nA
    Checking if anyone except root can change /NAb
    Checking if anyone except root can change /name
    Checking if anyone except root can change /nB
    Checking if anyone except root can change /NBhV
    Checking if anyone except root can change /nDcB
    Checking if anyone except root can change /Ne
    Checking if anyone except root can change /netmH
    Checking if anyone except root can change /network/endPoint
    Checking if anyone except root can change /network/tryNoRxLoss
    Checking if anyone except root can change /network/url
    Checking if anyone except root can change /network/vspcPath
    Checking if anyone except root can change /new
    Checking if anyone except root can change /Newpoint
    Checking if anyone except root can change /new/status
    Checking if anyone except root can change /new/status/error
    Checking if anyone except root can change /NG
    Checking if anyone except root can change /nic
    Checking if anyone except root can change /nic/address
    Checking if anyone except root can change /nic/addressType
    Checking if anyone except root can change /nic/bandwidthLimitKbps
    Checking if anyone except root can change /nic/bandwidthLimitKbps/incoming
    Checking if anyone except root can change /nic/bandwidthLimitKbps/outgoing
    Checking if anyone except root can change /nic/hostif
    Checking if anyone except root can change /nic/hostif/pvn/pvnID
    Checking if anyone except root can change /nic/ix
    Checking if anyone except root can change /nic/packetLoss
    Checking if anyone except root can change /nic/packetLoss/incoming/millirate
    Checking if anyone except root can change /nic/packetLoss/incoming/numPackets
    Checking if anyone except root can change /nic/packetLoss/outgoing/millirate
    Checking if anyone except root can change /nic/packetLoss/outgoing/numPackets
    Checking if anyone except root can change /N/M
    Checking if anyone except root can change /nmi
    Checking if anyone except root can change /Nocona
    Checking if anyone except root can change /node
    Checking if anyone except root can change /no-go
    Checking if anyone except root can change /non-vmfs
    Checking if anyone except root can change /notifyUI
    Checking if anyone except root can change /Novosibirsk
    Checking if anyone except root can change /NS
    Checking if anyone except root can change /NTFS
    Checking if anyone except root can change /numLockEnabled
    Checking if anyone except root can change /numRollingTiers/
    Checking if anyone except root can change /Nv
    Checking if anyone except root can change /nvram
    Checking if anyone except root can change /nY
    Checking if anyone except root can change /nZ
    Checking if anyone except root can change /o
    Checking if anyone except root can change /O
    Checking if anyone except root can change /oa3
    Checking if anyone except root can change /oA9
    Checking if anyone except root can change /OCQ
    Checking if anyone except root can change /Oh
    Checking if anyone except root can change /OJ
    Checking if anyone except root can change /Omsk
    Checking if anyone except root can change /oneToOneKeyBindings/
    Checking if anyone except root can change /open
    Checking if anyone except root can change /or
    Checking if anyone except root can change /Os
    Checking if anyone except root can change /out
    Checking if anyone except root can change /OUT
    Checking if anyone except root can change /out/data
    Checking if anyone except root can change /outgoing
    Checking if anyone except root can change /outgoing/millirate
    Checking if anyone except root can change /outgoing/numPackets
    Checking if anyone except root can change /OUTS
    Checking if anyone except root can change /overwriteQuestion
    Checking if anyone except root can change /overwriteQuestion/out/answer
    Checking if anyone except root can change /OY
    Checking if anyone except root can change /p
    Checking if anyone except root can change /P
    Checking if anyone except root can change /_P2
    Checking if anyone except root can change /p7
    Checking if anyone except root can change /P8i
    Checking if anyone except root can change /Pacific
    Checking if anyone except root can change /pad
    Checking if anyone except root can change /pages
    Checking if anyone except root can change /parallel
    Checking if anyone except root can change /parallel/ix
    Checking if anyone except root can change /passthru/hostdev
    Checking if anyone except root can change /password
    Checking if anyone except root can change /paste
    Checking if anyone except root can change /pb
    Checking if anyone except root can change /pciBridge
    Checking if anyone except root can change /pciBridge/functions
    Checking if anyone except root can change /pciBridge/ix
    Checking if anyone except root can change /pciBridge/virtualDev
    Checking if anyone except root can change /pciPassthru
    Checking if anyone except root can change /pD
    Checking if anyone except root can change /pe
    Checking if anyone except root can change /ph
    Checking if anyone except root can change /pI
    Checking if anyone except root can change /pid
    Checking if anyone except root can change /pipe/endPoint
    Checking if anyone except root can change /pipe/filePath
    Checking if anyone except root can change /pipe/tryNoRxLoss
    Checking if anyone except root can change /Pitcairn
    Checking if anyone except root can change /pixelScale/
    Checking if anyone except root can change /plm
    Checking if anyone except root can change /policyCache/expireText/
    Checking if anyone except root can change /policyCache/lifetime/
    Checking if anyone except root can change /policyCache/warningPeriod/
    Checking if anyone except root can change /policyCache/warningText/
    Checking if anyone except root can change /policyEffect
    Checking if anyone except root can change /policyEffect/policyBlocked
    Checking if anyone except root can change /policyServer/isPolicyServer/
    Checking if anyone except root can change /policyServer/rootCertificates/
    Checking if anyone except root can change /policyServer/serverAddress/
    Checking if anyone except root can change /policyServer/updateFrequency/
    Checking if anyone except root can change /policyServer/useServer/
    Checking if anyone except root can change /policyState/val/metadata/status/
    Checking if anyone except root can change /port
    Checking if anyone except root can change /present
    Checking if anyone except root can change /pressed
    Checking if anyone except root can change /proc
    Checking if anyone except root can change /proc/acpi/processor
    Checking if anyone except root can change /proc/asound/version
    Checking if anyone except root can change /proc/cpuinfo
    Checking if anyone except root can change /proc/devices
    Checking if anyone except root can change /proc/fs/vmblock/dev
    Checking if anyone except root can change /proc/fs/vmblock/mountPoint
    Checking if anyone except root can change /proc/ide
    Checking if anyone except root can change /proc/ide/
    Checking if anyone except root can change /proc/meminfo
    Checking if anyone except root can change /proc/self/exe
[UPC001] WARNING: /usr/lib/vmware/bin/vmware-vmx-stats is SUID root. /usr/lib/vmware/bin/vmware-vmx-stats contains the string /proc/self/exe. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/self/statm
[UPC001] WARNING: /usr/lib/vmware/bin/vmware-vmx-stats is SUID root. /usr/lib/vmware/bin/vmware-vmx-stats contains the string /proc/self/statm. The user nahoskins can write to /proc/self/statm
[UPC001] WARNING: /usr/lib/vmware/bin/vmware-vmx-stats is SUID root. /usr/lib/vmware/bin/vmware-vmx-stats contains the string /proc/self/statm. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/sys/dev/parport
    Checking if anyone except root can change /proc/sys/dev/parport/parport
    Checking if anyone except root can change /proc/sys/kernel/core_pattern
    Checking if anyone except root can change /proc/sys/kernel/core_uses_pid
    Checking if anyone except root can change /proc/timer_list
    Checking if anyone except root can change /proc/uptime
    Checking if anyone except root can change /progress
    Checking if anyone except root can change /PS
    Checking if anyone except root can change /pub
    Checking if anyone except root can change /publishToGuest
    Checking if anyone except root can change /publishToHost
    Checking if anyone except root can change /Px
    Checking if anyone except root can change /q
    Checking if anyone except root can change /Q
    Checking if anyone except root can change /Q_
    Checking if anyone except root can change /Q/
    Checking if anyone except root can change /q4
    Checking if anyone except root can change /Qa
    Checking if anyone except root can change /Qbeq
    Checking if anyone except root can change /qE
    Checking if anyone except root can change /qfm
    Checking if anyone except root can change /QH
    Checking if anyone except root can change /QI
    Checking if anyone except root can change /qn
    Checking if anyone except root can change /qs
    Checking if anyone except root can change /Quality
    Checking if anyone except root can change /queue/rotational
    Checking if anyone except root can change /qw1V
    Checking if anyone except root can change /r
    Checking if anyone except root can change /R
    Checking if anyone except root can change //r1
    Checking if anyone except root can change /R4T
    Checking if anyone except root can change /r5T
    Checking if anyone except root can change /rawCfgState/new
    Checking if anyone except root can change /rawCfgState/val
    Checking if anyone except root can change /rdp
    Checking if anyone except root can change /READ
    Checking if anyone except root can change /readOnlyCfg
    Checking if anyone except root can change /receiving
    Checking if anyone except root can change /reconfigure
    Checking if anyone except root can change /rect/bottom/
    Checking if anyone except root can change /rect/left/
    Checking if anyone except root can change /rect/right/
    Checking if anyone except root can change /rect/top/
    Checking if anyone except root can change /releaseEvent
    Checking if anyone except root can change /removable/allowGuestConnectionControl
    Checking if anyone except root can change /removable/startConnected
    Checking if anyone except root can change /reservation
    Checking if anyone except root can change /reset
    Checking if anyone except root can change /resolutionSet/
    Checking if anyone except root can change /resume
    Checking if anyone except root can change /RESUME
    Checking if anyone except root can change /revoked/
    Checking if anyone except root can change /REZERO
    Checking if anyone except root can change /RGD
    Checking if anyone except root can change /rhY
    Checking if anyone except root can change /Ri
    Checking if anyone except root can change /rid
    Checking if anyone except root can change /rj
    Checking if anyone except root can change /rj/
    Checking if anyone except root can change /RN
    Checking if anyone except root can change /rollingTier
    Checking if anyone except root can change /RT
    Checking if anyone except root can change /runtimeState/xpMode/active
    Checking if anyone except root can change /rV
    Checking if anyone except root can change /Rvd
    Checking if anyone except root can change /RVI
    Checking if anyone except root can change /s
    Checking if anyone except root can change /S
    Checking if anyone except root can change /s4
    Checking if anyone except root can change /s6
    Checking if anyone except root can change /SAHF
    Checking if anyone except root can change /Sakhalin
    Checking if anyone except root can change /Samara
    Checking if anyone except root can change /Saskatchewan
    Checking if anyone except root can change /sataCtlr
    Checking if anyone except root can change /sataDev
    Checking if anyone except root can change /sataDev/ctlrIx
    Checking if anyone except root can change /sataDev/ix
    Checking if anyone except root can change /saveAllocMaps
    Checking if anyone except root can change /saveDeviceState
    Checking if anyone except root can change /sB1
    Checking if anyone except root can change /sbin/authd
    Checking if anyone except root can change /scheduledUpgrade/reason
    Checking if anyone except root can change /scheduledUpgrade/state
    Checking if anyone except root can change /scheduledUpgrade/version
    Checking if anyone except root can change /scheduledUpgrade/when
    Checking if anyone except root can change /Scoresbysund
    Checking if anyone except root can change /screen/
    Checking if anyone except root can change /screenId/
    Checking if anyone except root can change /scrollLockEnabled
    Checking if anyone except root can change /scsiCtlr
    Checking if anyone except root can change /scsiDev
    Checking if anyone except root can change /scsiDev/ctlrIx
    Checking if anyone except root can change /scsiDev/ix
    Checking if anyone except root can change /sec
    Checking if anyone except root can change /security/keyLocatorCacheRequest
    Checking if anyone except root can change /self
    Checking if anyone except root can change /sendGuestKeys
    Checking if anyone except root can change /sendHostKeys
    Checking if anyone except root can change /sendUnicodeCodePoint/in/timestamp
    Checking if anyone except root can change /sendUnicodeCodePoint/in/unicodeCodePoint
    Checking if anyone except root can change /sendUnityMouseEvent/in/button4
    Checking if anyone except root can change /sendUnityMouseEvent/in/button5
    Checking if anyone except root can change /sendUnityMouseEvent/in/buttonLeft
    Checking if anyone except root can change /sendUnityMouseEvent/in/buttonMiddle
    Checking if anyone except root can change /sendUnityMouseEvent/in/buttonRight
    Checking if anyone except root can change /sendUnityMouseEvent/in/dhs
    Checking if anyone except root can change /sendUnityMouseEvent/in/dz
    Checking if anyone except root can change /sendUnityMouseEvent/in/x
    Checking if anyone except root can change /sendUnityMouseEvent/in/y
    Checking if anyone except root can change /sensorAccelerometer/
    Checking if anyone except root can change /sensorAmbientLight/
    Checking if anyone except root can change /sensorCompass/
    Checking if anyone except root can change /sensorGyrometer/
    Checking if anyone except root can change /sensorInclinometer/
    Checking if anyone except root can change /sensorLocation/
    Checking if anyone except root can change /sensorOrientation/
    Checking if anyone except root can change /Seoul
    Checking if anyone except root can change /serial
    Checking if anyone except root can change /serial/ix
    Checking if anyone except root can change /setCursorGrabAllowed/in/allowed
    Checking if anyone except root can change /setDisplayTopology/
    Checking if anyone except root can change /setDisplayTopologyModes/
    Checking if anyone except root can change /setScale/in/mode
    Checking if anyone except root can change /setScale/in/mode/scaleFactor/value
    Checking if anyone except root can change /setScale/in/mode/targetHeight/value
    Checking if anyone except root can change /setScale/in/mode/targetWidth/value
    Checking if anyone except root can change /settings
    Checking if anyone except root can change /setup/needsEncryptionPasswordChange/
    Checking if anyone except root can change /setup/needsFirstUseSetup/
    Checking if anyone except root can change /setup/needsGHIOptIn/
    Checking if anyone except root can change /setup/needsRegistration/
    Checking if anyone except root can change /shares
    Checking if anyone except root can change /site
    Checking if anyone except root can change /sm
    Checking if anyone except root can change /SMAP
    Checking if anyone except root can change /smDx
    Checking if anyone except root can change /sMg
    Checking if anyone except root can change /snapshot/nextRollingTakeTime
    Checking if anyone except root can change /snapshot/powerOffActionEnabled
    Checking if anyone except root can change //Snapshots/Shot
    Checking if anyone except root can change /sNk
    Checking if anyone except root can change /socket
    Checking if anyone except root can change /softOption
    Checking if anyone except root can change /softOptionTimeoutMicroSeconds
    Checking if anyone except root can change /soR
    Checking if anyone except root can change /Sossaman
    Checking if anyone except root can change /South
    Checking if anyone except root can change /Stanley
    Checking if anyone except root can change /Status
    Checking if anyone except root can change /status/H
    Checking if anyone except root can change /stdout/stderr
    Checking if anyone except root can change /St_Johns
    Checking if anyone except root can change //StorageData/Storage
    Checking if anyone except root can change /Store
    Checking if anyone except root can change /stream/
    Checking if anyone except root can change /sub
    Checking if anyone except root can change /sub-Window
    Checking if anyone except root can change /support/mvdiACE/
    Checking if anyone except root can change /support/mvmtid/
    Checking if anyone except root can change /support/restrictedVM/
    Checking if anyone except root can change /support/version/
    Checking if anyone except root can change /suspend
    Checking if anyone except root can change /svga
    Checking if anyone except root can change /Sydney
    Checking if anyone except root can change /sys
    Checking if anyone except root can change /sys/block
    Checking if anyone except root can change /sys/bus/scsi/devices
    Checking if anyone except root can change /sys/bus/usb/devices
    Checking if anyone except root can change /sys/class/block/
    Checking if anyone except root can change /sys/dev/block
    Checking if anyone except root can change /sys/devices/system/cpu
    Checking if anyone except root can change /sys/devL
    Checking if anyone except root can change /sys/firmware/acpi/tables
    Checking if anyone except root can change /sys/firmware/efi/systab
    Checking if anyone except root can change /sysH
    Checking if anyone except root can change /t
    Checking if anyone except root can change /T
    Checking if anyone except root can change /T0
    Checking if anyone except root can change /t5X
    Checking if anyone except root can change /t6NX
    Checking if anyone except root can change /T7y
    Checking if anyone except root can change /tB1
    Checking if anyone except root can change /TBZ/Sparse
    Checking if anyone except root can change /Teco
    Checking if anyone except root can change /text
    Checking if anyone except root can change /tF1
    Checking if anyone except root can change /tGH
    Checking if anyone except root can change /t-H
    Checking if anyone except root can change /t/H
    Checking if anyone except root can change /thinPrint/enabled
    Checking if anyone except root can change /ti
    Checking if anyone except root can change /tK
    Checking if anyone except root can change /tKH
    Checking if anyone except root can change /tLD8
    Checking if anyone except root can change /tlH9
    Checking if anyone except root can change /TLS
    Checking if anyone except root can change /tmp
[UPC003] WARNING: /usr/lib/vmware/bin/vmware-vmx-stats is SUID root. /usr/lib/vmware/bin/vmware-vmx-stats contains the string /tmp. World write is set for /tmp (but sticky bit set)
    Checking if anyone except root can change /tmp/
[UPC003] WARNING: /usr/lib/vmware/bin/vmware-vmx-stats is SUID root. /usr/lib/vmware/bin/vmware-vmx-stats contains the string /tmp/. World write is set for /tmp/ (but sticky bit set)
[UPC003] WARNING: /usr/lib/vmware/bin/vmware-vmx-stats is SUID root. /usr/lib/vmware/bin/vmware-vmx-stats contains the string /tmp/. World write is set for /tmp (but sticky bit set)
    Checking if anyone except root can change /tmp/VMwareDnD/
[UPC003] WARNING: /usr/lib/vmware/bin/vmware-vmx-stats is SUID root. /usr/lib/vmware/bin/vmware-vmx-stats contains the string /tmp/VMwareDnD/. World write is set for /tmp/VMwareDnD/ (but sticky bit set)
[UPC003] WARNING: /usr/lib/vmware/bin/vmware-vmx-stats is SUID root. /usr/lib/vmware/bin/vmware-vmx-stats contains the string /tmp/VMwareDnD/. World write is set for /tmp/VMwareDnD (but sticky bit set)
[UPC003] WARNING: /usr/lib/vmware/bin/vmware-vmx-stats is SUID root. /usr/lib/vmware/bin/vmware-vmx-stats contains the string /tmp/VMwareDnD/. World write is set for /tmp (but sticky bit set)
    Checking if anyone except root can change /tN
    Checking if anyone except root can change /toolsImagePath
    Checking if anyone except root can change /TP
    Checking if anyone except root can change /tpH
    Checking if anyone except root can change /Tr
    Checking if anyone except root can change /Track
    Checking if anyone except root can change //TRANSLIT
    Checking if anyone except root can change /Tripoli
    Checking if anyone except root can change /TS
    Checking if anyone except root can change /TW
    Checking if anyone except root can change /tWtB
    Checking if anyone except root can change /tXH9
    Checking if anyone except root can change /Tycoelectronics
    Checking if anyone except root can change /type
    Checking if anyone except root can change /u
    Checking if anyone except root can change /U
    Checking if anyone except root can change /U/
    Checking if anyone except root can change /UCKe
    Checking if anyone except root can change /ud2
    Checking if anyone except root can change /ugn
    Checking if anyone except root can change /UHHp
    Checking if anyone except root can change /ui
    Checking if anyone except root can change /uI
    Checking if anyone except root can change /UID
    Checking if anyone except root can change /uint64
    Checking if anyone except root can change /uJh
    Checking if anyone except root can change /uK
    Checking if anyone except root can change /UKR
    Checking if anyone except root can change /Ulaanbaatar
    Checking if anyone except root can change /unity
    Checking if anyone except root can change /unity/
    Checking if anyone except root can change /unity/pbrpcServer
    Checking if anyone except root can change /unlock
    Checking if anyone except root can change /UNLOCK
    Checking if anyone except root can change /unlock/username/
    Checking if anyone except root can change /unsupported
    Checking if anyone except root can change /UO
    Checking if anyone except root can change /updateIntervalSecs
    Checking if anyone except root can change /updateMouseInMKSWindow/in/inWindow
    Checking if anyone except root can change /Upv
    Checking if anyone except root can change /usbCtlr
    Checking if anyone except root can change /usbCtlr/ehci
    Checking if anyone except root can change /usbDevices/
    Checking if anyone except root can change /UsE
    Checking if anyone except root can change /user
    Checking if anyone except root can change /uSH
    Checking if anyone except root can change /usr/bin/env
    Checking if anyone except root can change /usr/bin/lsb_release
    Checking if anyone except root can change /usr/libI
    Checking if anyone except root can change /usr/lib/pcoip/vchan_plugins
    Checking if anyone except root can change /usr/lib/vmware
    Checking if anyone except root can change /usr/lib/vmware/vmkernel
    Checking if anyone except root can change /usr/sbin/vmware-authd
    Checking if anyone except root can change /usr/share/zoneinfo/
    Checking if anyone except root can change /uv
    Checking if anyone except root can change /UVl
    Checking if anyone except root can change /v
    Checking if anyone except root can change /V
    Checking if anyone except root can change /v1
    Checking if anyone except root can change /V8
    Checking if anyone except root can change /val
    Checking if anyone except root can change /val/
    Checking if anyone except root can change /val/path
    Checking if anyone except root can change /var/lib/dhclient
    Checking if anyone except root can change /var/lib/dhcp
    Checking if anyone except root can change /var/lib/dhcp3
    Checking if anyone except root can change /var/lib/dhcpd
    Checking if anyone except root can change /var/lock
    Checking if anyone except root can change /var/log/vmware
    Checking if anyone except root can change /var/run/vmblock-fuse
    Checking if anyone except root can change /var/run/vmblock-fuse/blockdir
    Checking if anyone except root can change /var/run/vmblock-fuse/dev
    Checking if anyone except root can change /var/run/vmware
    Checking if anyone except root can change /var/run/vmware/authd_
    Checking if anyone except root can change /var/run/vmware/fuse
    Checking if anyone except root can change /var/run/vmware/tickets/
    Checking if anyone except root can change /var/run/vmware/usbarbitrator-socket
    Checking if anyone except root can change /vbH
    Checking if anyone except root can change /VBJ
    Checking if anyone except root can change /vcpu
    Checking if anyone except root can change /vE
    Checking if anyone except root can change /version
    Checking if anyone except root can change /VGA
    Checking if anyone except root can change /view/clip/height
    Checking if anyone except root can change /view/clip/width
    Checking if anyone except root can change /view/clip/x
    Checking if anyone except root can change /view/clip/y
    Checking if anyone except root can change /view/val
    Checking if anyone except root can change /vigor/fields/Audio
    Checking if anyone except root can change /vigor/fields/Bios
    Checking if anyone except root can change /vigor/fields/Bootstrap
    Checking if anyone except root can change /vigor/fields/ConfigParams
    Checking if anyone except root can change /vigor/fields/CrashDetector
    Checking if anyone except root can change /vigor/fields/Disk
    Checking if anyone except root can change /vigor/fields/Ethernet
    Checking if anyone except root can change /vigor/fields/FeatureCompat
    Checking if anyone except root can change /vigor/fields/Floppy
    Checking if anyone except root can change /vigor/fields/GuestAppMonitor
    Checking if anyone except root can change /vigor/fields/GuestInfo
    Checking if anyone except root can change /vigor/fields/GuestIsolation
    Checking if anyone except root can change /vigor/fields/GuestOps
    Checking if anyone except root can change /vigor/fields/GuestOS
    Checking if anyone except root can change /vigor/fields/GuestPeriodic
    Checking if anyone except root can change /vigor/fields/GuestQuiesce
    Checking if anyone except root can change /vigor/fields/GuestStats
    Checking if anyone except root can change /vigor/fields/Heartbeat
    Checking if anyone except root can change /vigor/fields/HGFS
    Checking if anyone except root can change /vigor/fields/HotButton
    Checking if anyone except root can change /vigor/fields/HotPlugManager
    Checking if anyone except root can change /vigor/fields/IDE
    Checking if anyone except root can change /vigor/fields/LogVMX
    Checking if anyone except root can change /vigor/fields/Migrate
    Checking if anyone except root can change /vigor/fields/MiscOpts
    Checking if anyone except root can change /vigor/fields/MKS
    Checking if anyone except root can change /vigor/fields/Monitor
    Checking if anyone except root can change /vigor/fields/NamespaceMgr
    Checking if anyone except root can change /vigor/fields/NVDimm
    Checking if anyone except root can change /vigor/fields/OverheadMem
    Checking if anyone except root can change /vigor/fields/Parallel
    Checking if anyone except root can change /vigor/fields/PCIBridge
    Checking if anyone except root can change /vigor/fields/PCIPassthru
    Checking if anyone except root can change /vigor/fields/PolicyState
    Checking if anyone except root can change /vigor/fields/PowerState
    Checking if anyone except root can change /vigor/fields/ProcessorAndMemory
    Checking if anyone except root can change /vigor/fields/SATA
    Checking if anyone except root can change /vigor/fields/SCSI
    Checking if anyone except root can change /vigor/fields/Sensor
    Checking if anyone except root can change /vigor/fields/Serial
    Checking if anyone except root can change /vigor/fields/Snapshot
    Checking if anyone except root can change /vigor/fields/Tools
    Checking if anyone except root can change /vigor/fields/ToolsInstallManager
    Checking if anyone except root can change /vigor/fields/Upgrade
    Checking if anyone except root can change /vigor/fields/UsbDevice
    Checking if anyone except root can change /vigor/fields/UUIDVMX
    Checking if anyone except root can change /vigor/fields/VigorSample
    Checking if anyone except root can change /vigor/fields/VMAutomation
    Checking if anyone except root can change /vigor/fields/VMCI
    Checking if anyone except root can change /vigor/fields/VmhsBridge
    Checking if anyone except root can change /vigor/fields/VMVariable
    Checking if anyone except root can change /vigor/fields/VProbe
    Checking if anyone except root can change /vigor/fields/VSock
    Checking if anyone except root can change /vigor/fields/VUsb
    Checking if anyone except root can change /virtualScreen/height/
    Checking if anyone except root can change /virtualScreen/width/
    Checking if anyone except root can change /vkO
    Checking if anyone except root can change /Vladivostok
    Checking if anyone except root can change /vmci
    Checking if anyone except root can change /vmfs/devices/char/vsock/vsock
    Checking if anyone except root can change /vmfs/volumes/
    Checking if anyone except root can change /vmfs/volumes/vsan
    Checking if anyone except root can change /vmfs/volumes/vvol
    Checking if anyone except root can change /vm/instanceid
    Checking if anyone except root can change /vm/managedVM
    Checking if anyone except root can change /vm/mvmtid
    Checking if anyone except root can change /vmSettings/
    Checking if anyone except root can change /vm/setupComplete
    Checking if anyone except root can change /vmware
    Checking if anyone except root can change /vmware-authd
    Checking if anyone except root can change /vmx
    Checking if anyone except root can change /vmx/cfgState/val/vnc
    Checking if anyone except root can change /vmx/execState/val
    Checking if anyone except root can change /vmx/remDev
    Checking if anyone except root can change /vN
    Checking if anyone except root can change /vnc/
    Checking if anyone except root can change /VO
    Checking if anyone except root can change /Volgograd
    Checking if anyone except root can change /VY3
    Checking if anyone except root can change /w
    Checking if anyone except root can change /W
    Checking if anyone except root can change /wCX
    Checking if anyone except root can change /West
    Checking if anyone except root can change /wHH
    Checking if anyone except root can change /width
    Checking if anyone except root can change /width/
    Checking if anyone except root can change /Windhoek
    Checking if anyone except root can change /windowSize/height/
    Checking if anyone except root can change /windowSize/width/
    Checking if anyone except root can change /wiped/
    Checking if anyone except root can change /wirelessIcon/iconClicked
    Checking if anyone except root can change /wiretype
    Checking if anyone except root can change /wJWt
    Checking if anyone except root can change /Wl
    Checking if anyone except root can change /Woodcrest/Merom
    Checking if anyone except root can change /wq
    Checking if anyone except root can change /write
    Checking if anyone except root can change /Write
    Checking if anyone except root can change /WRITE
    Checking if anyone except root can change /wS
    Checking if anyone except root can change /WS
    Checking if anyone except root can change /WS3
    Checking if anyone except root can change /x
    Checking if anyone except root can change /x/
    Checking if anyone except root can change /X
    Checking if anyone except root can change //X
    Checking if anyone except root can change /X04
    Checking if anyone except root can change /x11/auth/
    Checking if anyone except root can change /x11/display
    Checking if anyone except root can change /XD
    Checking if anyone except root can change /XE
    Checking if anyone except root can change /xhciCtlr
    Checking if anyone except root can change /XjH
    Checking if anyone except root can change /x-l
    Checking if anyone except root can change /XmND
    Checking if anyone except root can change /XR
    Checking if anyone except root can change /XRSTORS
    Checking if anyone except root can change /XSwHcX
    Checking if anyone except root can change /Xx-
    Checking if anyone except root can change /xZ7
    Checking if anyone except root can change /y
    Checking if anyone except root can change /y/
    Checking if anyone except root can change /Y
    Checking if anyone except root can change /Y6
    Checking if anyone except root can change /Yakutsk
    Checking if anyone except root can change /Ye
    Checking if anyone except root can change /Yekaterinburg
    Checking if anyone except root can change /Yerevan
    Checking if anyone except root can change /yf
    Checking if anyone except root can change /Yg
    Checking if anyone except root can change /yields
    Checking if anyone except root can change /YK
    Checking if anyone except root can change /yl
    Checking if anyone except root can change /ylu
    Checking if anyone except root can change /_yU
    Checking if anyone except root can change /YV5
    Checking if anyone except root can change /yvvYr
    Checking if anyone except root can change /Yw
    Checking if anyone except root can change /yX
    Checking if anyone except root can change /Yx
    Checking if anyone except root can change /yY
    Checking if anyone except root can change /z
    Checking if anyone except root can change /Z
    Checking if anyone except root can change /Z/
    Checking if anyone except root can change /z6
    Checking if anyone except root can change /z8
    Checking if anyone except root can change /ZC
    Checking if anyone except root can change /zM
    Checking if anyone except root can change /ZNQ
    Checking if anyone except root can change /ZQ
    Checking if anyone except root can change /ZvC
Checking SUID-root program /usr/lib/vmware/bin/vmware-vmx: -rwsr-xr-x 1 root root 21329896 Nov 23 21:35 /usr/lib/vmware/bin/vmware-vmx
    Checking if anyone except root can change /usr/lib/libpthread.so.0
    Checking if anyone except root can change /usr/lib/libdl.so.2
    Checking if anyone except root can change /usr/lib/librt.so.1
    Checking if anyone except root can change /usr/lib/libX11.so.6
    Checking if anyone except root can change /usr/lib/libXext.so.6
    Checking if anyone except root can change /usr/lib/libXinerama.so.1
    Checking if anyone except root can change /usr/lib/libXcursor.so.1
    Checking if anyone except root can change /usr/lib/libXtst.so.6
    Checking if anyone except root can change /usr/lib/libXi.so.6
    Checking if anyone except root can change /usr/lib/libstdc++.so.6
    Checking if anyone except root can change /usr/lib/libm.so.6
    Checking if anyone except root can change /usr/lib/libgcc_s.so.1
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /usr/lib/libxcb.so.1
    Checking if anyone except root can change /usr/lib/libXrender.so.1
    Checking if anyone except root can change /usr/lib/libXfixes.so.3
    Checking if anyone except root can change /usr/lib/libXau.so.6
    Checking if anyone except root can change /usr/lib/libXdmcp.so.6
    Checking if anyone except root can change /
    Checking if anyone except root can change /_
    Checking if anyone except root can change /-
    Checking if anyone except root can change //
    Checking if anyone except root can change //_
    Checking if anyone except root can change /0
    Checking if anyone except root can change /0123
    Checking if anyone except root can change /0H
    Checking if anyone except root can change /0LX
    Checking if anyone except root can change /0wp
    Checking if anyone except root can change /0y
    Checking if anyone except root can change /1
    Checking if anyone except root can change //123456779
    Checking if anyone except root can change /1F
    Checking if anyone except root can change /1hD
    Checking if anyone except root can change /1UYBi
    Checking if anyone except root can change /1VGX
    Checking if anyone except root can change /2
    Checking if anyone except root can change /29V
    Checking if anyone except root can change /2fw
    Checking if anyone except root can change /2h
    Checking if anyone except root can change /2I
    Checking if anyone except root can change /2R
    Checking if anyone except root can change /2u
    Checking if anyone except root can change /2U
    Checking if anyone except root can change /2Yb
    Checking if anyone except root can change /2ybD
    Checking if anyone except root can change /3
    Checking if anyone except root can change /386
    Checking if anyone except root can change /3A
    Checking if anyone except root can change /3H
    Checking if anyone except root can change /3H1
    Checking if anyone except root can change /3IS
    Checking if anyone except root can change /3qGs
    Checking if anyone except root can change /4
    Checking if anyone except root can change /43O
    Checking if anyone except root can change /4N
    Checking if anyone except root can change /4VN
    Checking if anyone except root can change /5
    Checking if anyone except root can change /54
    Checking if anyone except root can change /5aHC5
    Checking if anyone except root can change /5c
    Checking if anyone except root can change /5H
    Checking if anyone except root can change /5lgw
    Checking if anyone except root can change /5Q
    Checking if anyone except root can change /5R
    Checking if anyone except root can change /6
    Checking if anyone except root can change /60
    Checking if anyone except root can change /60o
    Checking if anyone except root can change /7
    Checking if anyone except root can change /79
    Checking if anyone except root can change /7C
    Checking if anyone except root can change /7d
    Checking if anyone except root can change /7dIR
    Checking if anyone except root can change /7e
    Checking if anyone except root can change /7Fm
    Checking if anyone except root can change /-7IP
    Checking if anyone except root can change /7L
    Checking if anyone except root can change /7rv
    Checking if anyone except root can change /8
    Checking if anyone except root can change /83
    Checking if anyone except root can change /8/9
    Checking if anyone except root can change /8a
    Checking if anyone except root can change /8/a
    Checking if anyone except root can change /8BR
    Checking if anyone except root can change /8d
    Checking if anyone except root can change /8o
    Checking if anyone except root can change /8q
    Checking if anyone except root can change /8W
    Checking if anyone except root can change /8Xf
    Checking if anyone except root can change /9
    Checking if anyone except root can change /9b
    Checking if anyone except root can change /9GF4
    Checking if anyone except root can change /9JC
    Checking if anyone except root can change /9k
    Checking if anyone except root can change /9M
    Checking if anyone except root can change /9S
    Checking if anyone except root can change /9t
    Checking if anyone except root can change /9w
    Checking if anyone except root can change /a
    Checking if anyone except root can change /_a
    Checking if anyone except root can change /A
    Checking if anyone except root can change /A4DVE
    Checking if anyone except root can change /a5
    Checking if anyone except root can change /A8
    Checking if anyone except root can change /A9FL
    Checking if anyone except root can change /abort
    Checking if anyone except root can change /ac_adapter
    Checking if anyone except root can change /access/
    Checking if anyone except root can change /acpi
    Checking if anyone except root can change /action
    Checking if anyone except root can change /adminOverride/key/
    Checking if anyone except root can change /adminOverride/salt/
    Checking if anyone except root can change /Ae
    Checking if anyone except root can change /Ak
    Checking if anyone except root can change /Alaska
    Checking if anyone except root can change /Aleutian
    Checking if anyone except root can change /Algiers
    Checking if anyone except root can change /ALLOW
    Checking if anyone except root can change /allowCancel
    Checking if anyone except root can change /allowMKSGrab/
    Checking if anyone except root can change /alpha/
    Checking if anyone except root can change /ambiguous
    Checking if anyone except root can change /Anadyr
    Checking if anyone except root can change /answer
    Checking if anyone except root can change /AOw
    Checking if anyone except root can change /appHealthMonitor/appState
    Checking if anyone except root can change /appHealthMonitor/appStatus
    Checking if anyone except root can change /Aqu
    Checking if anyone except root can change /aRt
    Checking if anyone except root can change /Asuncion
    Checking if anyone except root can change /At
    Checking if anyone except root can change /Athens
    Checking if anyone except root can change /Atlantic
    Checking if anyone except root can change /attemptDnDUngrab/x
    Checking if anyone except root can change /attemptDnDUngrab/y
    Checking if anyone except root can change /Auckland
    Checking if anyone except root can change /audio
    Checking if anyone except root can change /authentication/type
    Checking if anyone except root can change /author
    Checking if anyone except root can change /AWI
    Checking if anyone except root can change /ay
    Checking if anyone except root can change /Azores
    Checking if anyone except root can change /b
    Checking if anyone except root can change /B
    Checking if anyone except root can change //B
    Checking if anyone except root can change /b8
    Checking if anyone except root can change /Baghdad
    Checking if anyone except root can change /Baku
    Checking if anyone except root can change /bandwidthCap
    Checking if anyone except root can change /base-addr
    Checking if anyone except root can change /battery
    Checking if anyone except root can change /bB
    Checking if anyone except root can change /bd
    Checking if anyone except root can change /BD/SD/TOM/TC/HH
    Checking if anyone except root can change /beginRecording/in/encodeEmptyFrames/
    Checking if anyone except root can change /beginRecording/in/filename/
    Checking if anyone except root can change /beginRecording/in/quality/
    Checking if anyone except root can change /beginRecording/out/index/
    Checking if anyone except root can change /bin
    Checking if anyone except root can change /bin/sh
    Checking if anyone except root can change /bit
    Checking if anyone except root can change /bitmapId/
    Checking if anyone except root can change /bootDelay
    Checking if anyone except root can change /bootDeviceClasses
    Checking if anyone except root can change /bootOrder
    Checking if anyone except root can change /bootRetryDelay
    Checking if anyone except root can change /bootRetryEnabled
    Checking if anyone except root can change /bT
    Checking if anyone except root can change /build/mts/release/bora-3160714/bora/build/build/buildroot-make-ws/release/ws/vmcore-private/bootstrap/SUBDIRS
    Checking if anyone except root can change /build/mts/release/bora-3160714/bora/lib/public
    Checking if anyone except root can change /build/mts/release/bora-3160714/bora/public
    Checking if anyone except root can change /build/mts/release/bora-3160714/bora/vmcore/bootstrap
    Checking if anyone except root can change /build/mts/release/bora-3160714/bora/vmcore/decoder
    Checking if anyone except root can change /build/mts/release/bora-3160714/bora/vmcore/private
    Checking if anyone except root can change /build/mts/release/bora-3160714/bora/vmcore/public
    Checking if anyone except root can change /build/mts/release/bora-3160714/bora/vmcore/vmm/bt
    Checking if anyone except root can change /build/mts/release/bora-3160714/bora/vmcore/vmm/hv/public
    Checking if anyone except root can change /build/mts/release/bora-3160714/bora/vmcore/vmm/main
    Checking if anyone except root can change /build/mts/release/bora-3160714/bora/vmcore/vmm/mmu
    Checking if anyone except root can change /build/mts/release/bora-3160714/bora/vmcore/vmm/private
    Checking if anyone except root can change /build/mts/release/bora-3160714/bora/vmcore/vmm/public
    Checking if anyone except root can change /build/mts/release/bora-3160714/bora/vmx/public
    Checking if anyone except root can change /busy/allowCancel
    Checking if anyone except root can change /busy/cancel
    Checking if anyone except root can change /busy/op
    Checking if anyone except root can change /busy/progress
    Checking if anyone except root can change /busy/text
    Checking if anyone except root can change /button/lid
    Checking if anyone except root can change /bX
    Checking if anyone except root can change /c
    Checking if anyone except root can change /C
    Checking if anyone except root can change /c2
    Checking if anyone except root can change /C2
    Checking if anyone except root can change /C5o
    Checking if anyone except root can change /cache/blockSize
    Checking if anyone except root can change /cache/consistencyType
    Checking if anyone except root can change /cache/currentWarningPeriod/
    Checking if anyone except root can change /cache/enabled
    Checking if anyone except root can change /cache/expireTime/
    Checking if anyone except root can change /cache/mode
    Checking if anyone except root can change /cache/module
    Checking if anyone except root can change /cache/moduleVersion
    Checking if anyone except root can change /cache/sizeMax
    Checking if anyone except root can change /cache/sizeMin
    Checking if anyone except root can change /cache/sizeShares
    Checking if anyone except root can change /cache/transferType
    Checking if anyone except root can change /cache/usingCache/
    Checking if anyone except root can change /CalComp
    Checking if anyone except root can change /caps
    Checking if anyone except root can change /caps/autoUpgrade
    Checking if anyone except root can change /caps/autoUpgradeVersion
    Checking if anyone except root can change /caps/changeHost3DAvailabilityHint
    Checking if anyone except root can change /caps/colorDepthSet
    Checking if anyone except root can change /caps/desktopAutolock
    Checking if anyone except root can change /caps/displayGlobalOffset
    Checking if anyone except root can change /caps/displayTopologyModesSet
    Checking if anyone except root can change /caps/displayTopologySet
    Checking if anyone except root can change /caps/ghiFeatures
    Checking if anyone except root can change /caps/guestTempDirectoryVersion
    Checking if anyone except root can change /caps/hgfsServerDaemon
    Checking if anyone except root can change /caps/hgfsServerUpgrader
    Checking if anyone except root can change /caps/hgfsServerUser
    Checking if anyone except root can change /caps/hgfsUsabilityFeatures
    Checking if anyone except root can change /capsLockEnabled
    Checking if anyone except root can change /caps/minResolution/height
    Checking if anyone except root can change /caps/minResolution/width
    Checking if anyone except root can change /caps/openUrl
    Checking if anyone except root can change /caps/printerSet
    Checking if anyone except root can change /caps/resolutionServerDaemon
    Checking if anyone except root can change /caps/resolutionServerUser
    Checking if anyone except root can change /caps/resolutionSet
    Checking if anyone except root can change /caps/softExecStateChange
    Checking if anyone except root can change /caps/unityFeatures
    Checking if anyone except root can change /caps/upgraderParams
    Checking if anyone except root can change /Casablanca
    Checking if anyone except root can change /CAVNEX
    Checking if anyone except root can change /C-cF
    Checking if anyone except root can change /CdAU
    Checking if anyone except root can change /cdrom
    Checking if anyone except root can change /CD-ROM
    Checking if anyone except root can change /Central
    Checking if anyone except root can change /cf
    Checking if anyone except root can change /cfgState
    Checking if anyone except root can change /cfgState/new
    Checking if anyone except root can change /cfgState/val
    Checking if anyone except root can change /cfgState/val/dev
    Checking if anyone except root can change /cfgState/val/generationNo
    Checking if anyone except root can change /cfgState/val/generationNo/
    Checking if anyone except root can change /cfgState/val/guestIsolation/copyDisable
    Checking if anyone except root can change /cfgState/val/guestIsolation/hgfsDisable
    Checking if anyone except root can change /cfgState/val/guestIsolation/pasteDisable
    Checking if anyone except root can change /cfgState/val/hgfsUsability/linkRootShare
    Checking if anyone except root can change /cfgState/val/hgfsUsability/mapRootShare
    Checking if anyone except root can change /cfgState/val/hgfsUsability/redirectShellFolder
    Checking if anyone except root can change /cfgState/val/maxRemoteDisplayConnections
    Checking if anyone except root can change /cfgState/val/messageBusTunnelEnabled
    Checking if anyone except root can change /cfgState/val/migrateHostlog
    Checking if anyone except root can change /cfgState/val/name
    Checking if anyone except root can change /cfgState/val/opt/disableAcceleration
    Checking if anyone except root can change /cfgState/val/opt/logVmSample
    Checking if anyone except root can change /cfgState/val/opt/memTrimRate
    Checking if anyone except root can change /cfgState/val/powerType/powerOff
    Checking if anyone except root can change /cfgState/val/powerType/reset
    Checking if anyone except root can change /cfgState/val/powerType/suspend
    Checking if anyone except root can change /cfgState/val/priority
    Checking if anyone except root can change /cfgState/val/sensorAccelerometer
    Checking if anyone except root can change /cfgState/val/sensorAmbientLight
    Checking if anyone except root can change /cfgState/val/sensorCompass
    Checking if anyone except root can change /cfgState/val/sensorGyrometer
    Checking if anyone except root can change /cfgState/val/sensorInclinometer
    Checking if anyone except root can change /cfgState/val/sensorLocation
    Checking if anyone except root can change /cfgState/val/sensorOrientation
    Checking if anyone except root can change /cfgState/val/sharedFolder/
    Checking if anyone except root can change /cfgState/val/snapshot
    Checking if anyone except root can change /cfgState/val/snapshot/numRollingTiers/
    Checking if anyone except root can change /cfgState/val/toolPolicies/upgrade
    Checking if anyone except root can change /cfgState/val/toolsDeployPkg/pendingPackage
    Checking if anyone except root can change /cfgState/val/toolsDesktopAutolock
    Checking if anyone except root can change /cfgState/val/unity/showTaskbar
    Checking if anyone except root can change /cfgState/val/uuid/bios
    Checking if anyone except root can change /cfgState/val/uuid/location
    Checking if anyone except root can change /cfgVersion
    Checking if anyone except root can change /cG
    Checking if anyone except root can change /Chatham
    Checking if anyone except root can change /Chip
    Checking if anyone except root can change /Choibalsan
    Checking if anyone except root can change /CiE
    Checking if anyone except root can change /Clarkdale
    Checking if anyone except root can change /class/memory/changeOnRestart
    Checking if anyone except root can change /class/memory/sizeMb
    Checking if anyone except root can change /class/power_supply
    Checking if anyone except root can change /class/vcpu/num
    Checking if anyone except root can change /clipRegion/
    Checking if anyone except root can change /CN
    Checking if anyone except root can change /Co
    Checking if anyone except root can change /command
    Checking if anyone except root can change /command/
    Checking if anyone except root can change /conff
    Checking if anyone except root can change /config
    Checking if anyone except root can change /config/
    Checking if anyone except root can change /connections/
    Checking if anyone except root can change /Continental
    Checking if anyone except root can change /control
    Checking if anyone except root can change /cookie
    Checking if anyone except root can change /copypaste/cap/copyPasteGuestVersion
    Checking if anyone except root can change /copyprotection/identifier/
    Checking if anyone except root can change /copyprotection/restrictCopies/
    Checking if anyone except root can change /cpu
    Checking if anyone except root can change /cpuid_0_eax
    Checking if anyone except root can change /cpuid_0_eax_amd
    Checking if anyone except root can change /cpuid_0_ebx
    Checking if anyone except root can change /cpuid_0_ebx_amd
    Checking if anyone except root can change /cpuid_0_ecx
    Checking if anyone except root can change /cpuid_0_ecx_amd
    Checking if anyone except root can change /cpuid_0_edx
    Checking if anyone except root can change /cpuid_0_edx_amd
    Checking if anyone except root can change /cpuid_1_eax
    Checking if anyone except root can change /cpuid_1_eax_amd
    Checking if anyone except root can change /cpuid_1_ebx
    Checking if anyone except root can change /cpuid_1_ebx_amd
    Checking if anyone except root can change /cpuid_1_ecx
    Checking if anyone except root can change /cpuid_1_ecx_amd
    Checking if anyone except root can change /cpuid_1_edx
    Checking if anyone except root can change /cpuid_1_edx_amd
    Checking if anyone except root can change /cpuid_80_eax
    Checking if anyone except root can change /cpuid_80_eax_amd
    Checking if anyone except root can change /cpuid_80_ebx
    Checking if anyone except root can change /cpuid_80_ebx_amd
    Checking if anyone except root can change /cpuid_80_ecx
    Checking if anyone except root can change /cpuid_80_ecx_amd
    Checking if anyone except root can change /cpuid_80_edx
    Checking if anyone except root can change /cpuid_80_edx_amd
    Checking if anyone except root can change /cpuid_81_eax
    Checking if anyone except root can change /cpuid_81_eax_amd
    Checking if anyone except root can change /cpuid_81_ebx
    Checking if anyone except root can change /cpuid_81_ebx_amd
    Checking if anyone except root can change /cpuid_81_ecx
    Checking if anyone except root can change /cpuid_81_ecx_amd
    Checking if anyone except root can change /cpuid_81_edx
    Checking if anyone except root can change /cpuid_81_edx_amd
    Checking if anyone except root can change /cpuid_88_eax
    Checking if anyone except root can change /cpuid_88_eax_amd
    Checking if anyone except root can change /cpuid_88_ebx
    Checking if anyone except root can change /cpuid_88_ebx_amd
    Checking if anyone except root can change /cpuid_88_ecx
    Checking if anyone except root can change /cpuid_88_ecx_amd
    Checking if anyone except root can change /cpuid_88_edx
    Checking if anyone except root can change /cpuid_88_edx_amd
    Checking if anyone except root can change /create
    Checking if anyone except root can change /ctG
    Checking if anyone except root can change /Cuiaba
    Checking if anyone except root can change /cursorLocked
    Checking if anyone except root can change /custom/vmnet
    Checking if anyone except root can change /d
    Checking if anyone except root can change /D
    Checking if anyone except root can change /D0
    Checking if anyone except root can change /D3
    Checking if anyone except root can change /D9d
    Checking if anyone except root can change /D9D
    Checking if anyone except root can change /db/connection
    Checking if anyone except root can change /Dcc
    Checking if anyone except root can change /deleteMH
    Checking if anyone except root can change /dest/hostWindow/surface/
    Checking if anyone except root can change /dest/hostWindow/window/
    Checking if anyone except root can change /dev/
    Checking if anyone except root can change /dev/cdrom
    Checking if anyone except root can change /dev/disk/by-id
    Checking if anyone except root can change /dev/disk/by-id/dm-name-
    Checking if anyone except root can change /dev/dsp
    Checking if anyone except root can change /dev/fd0
    Checking if anyone except root can change /dev/fd1
    Checking if anyone except root can change /dev/fd2
    Checking if anyone except root can change /dev/fd3
    Checking if anyone except root can change /dev/hecH
    Checking if anyone except root can change /device/autodetect
    Checking if anyone except root can change /device/bidirectional
    Checking if anyone except root can change /device/clientDevice
    Checking if anyone except root can change /device/exclusive
    Checking if anyone except root can change /device/hostdev
    Checking if anyone except root can change /device/raw
    Checking if anyone except root can change /device/size
    Checking if anyone except root can change /device/type
    Checking if anyone except root can change /dev/lp0
    Checking if anyone except root can change /dev/lp1
    Checking if anyone except root can change /dev/lp2
    Checking if anyone except root can change /dev/lp3
    Checking if anyone except root can change /dev/mapper/
    Checking if anyone except root can change /dev/mem
    Checking if anyone except root can change /dev/mixer
    Checking if anyone except root can change /dev/null
[UPC004] WARNING: /usr/lib/vmware/bin/vmware-vmx is SUID root. /usr/lib/vmware/bin/vmware-vmx contains the string /dev/null. World write is set for /dev/null
    Checking if anyone except root can change /dev/parport0
    Checking if anyone except root can change /dev/parport1
    Checking if anyone except root can change /dev/parport2
    Checking if anyone except root can change /dev/parport3
    Checking if anyone except root can change /dev/sg
    Checking if anyone except root can change /dev/st
    Checking if anyone except root can change /dev/urandom
[UPC004] WARNING: /usr/lib/vmware/bin/vmware-vmx is SUID root. /usr/lib/vmware/bin/vmware-vmx contains the string /dev/urandom. World write is set for /dev/urandom
    Checking if anyone except root can change /dev/vmci
[UPC004] WARNING: /usr/lib/vmware/bin/vmware-vmx is SUID root. /usr/lib/vmware/bin/vmware-vmx contains the string /dev/vmci. World write is set for /dev/vmci
    Checking if anyone except root can change /dev/vmmon
    Checking if anyone except root can change /dev/vmnet
    Checking if anyone except root can change /dev/vmnet0
    Checking if anyone except root can change /dev/vmnet1
    Checking if anyone except root can change /dev/vmnet8
    Checking if anyone except root can change /dev/vsock
[UPC004] WARNING: /usr/lib/vmware/bin/vmware-vmx is SUID root. /usr/lib/vmware/bin/vmware-vmx contains the string /dev/vsock. World write is set for /dev/vsock
    Checking if anyone except root can change /dH
    Checking if anyone except root can change /disable
    Checking if anyone except root can change /disconnect
    Checking if anyone except root can change /disk
    Checking if anyone except root can change //Disk_Parameters
    Checking if anyone except root can change /dL
    Checking if anyone except root can change /DM
    Checking if anyone except root can change /dnd/cap/dndEnable
    Checking if anyone except root can change /dnd/cap/dndGuestVersion
    Checking if anyone except root can change /dnd/cap/ghCapable
    Checking if anyone except root can change /dnd/cap/guestCapable
    Checking if anyone except root can change /dnd/cap/hostCapable
    Checking if anyone except root can change /dnd/fileTransferring
    Checking if anyone except root can change /dnd/gh/blockRoot
    Checking if anyone except root can change /done/warningsPosted
    Checking if anyone except root can change /dotdot
    Checking if anyone except root can change /Drain
    Checking if anyone except root can change /drop
    Checking if anyone except root can change /DTY
    Checking if anyone except root can change /Dublin
    Checking if anyone except root can change /Dumping
    Checking if anyone except root can change /dyh
    Checking if anyone except root can change /e
    Checking if anyone except root can change /E
    Checking if anyone except root can change /E1
    Checking if anyone except root can change /e8
    Checking if anyone except root can change /eA
    Checking if anyone except root can change /East
    Checking if anyone except root can change /EasterIsland
    Checking if anyone except root can change /Eastern
    Checking if anyone except root can change /eatKeys
    Checking if anyone except root can change /ED
    Checking if anyone except root can change /EG
    Checking if anyone except root can change /eK
    Checking if anyone except root can change /ekr4K9t
    Checking if anyone except root can change /el
    Checking if anyone except root can change /El_Aaiun
    Checking if anyone except root can change /em
    Checking if anyone except root can change /eN
    Checking if anyone except root can change /enable
    Checking if anyone except root can change /enabled
    Checking if anyone except root can change /enableMouse/
    Checking if anyone except root can change /ENCLU
    Checking if anyone except root can change /endRecording/in/index/
    Checking if anyone except root can change /EN/EX
    Checking if anyone except root can change /eo
    Checking if anyone except root can change /ep
    Checking if anyone except root can change /EPT
    Checking if anyone except root can change /error/errCode
    Checking if anyone except root can change /error/errCode/
    Checking if anyone except root can change /error/errMsg
    Checking if anyone except root can change /error/errMsg/
    Checking if anyone except root can change /error/id
    Checking if anyone except root can change /error/text
    Checking if anyone except root can change /esp0
    Checking if anyone except root can change /ESXi
    Checking if anyone except root can change /etc/annvix-release
    Checking if anyone except root can change /etc/arch-release
    Checking if anyone except root can change /etc/arklinux-release
    Checking if anyone except root can change /etc/aurox-release
    Checking if anyone except root can change /etc/blackcat-release
    Checking if anyone except root can change /etc/cobalt-release
    Checking if anyone except root can change /etc/conectiva-release
    Checking if anyone except root can change /etc/debian_release
    Checking if anyone except root can change /etc/debian_version
    Checking if anyone except root can change /etc/e-smith-release
    Checking if anyone except root can change /etc/fedora-release
    Checking if anyone except root can change /etc/gentoo-release
    Checking if anyone except root can change /etc/immunix-release
    Checking if anyone except root can change /etc/knoppix_version
    Checking if anyone except root can change /etc/lfs-release
    Checking if anyone except root can change /etc/linuxppc-release
    Checking if anyone except root can change /etc/localtime
    Checking if anyone except root can change /etc/lsb-release
    Checking if anyone except root can change /etc/mandrakelinux-release
    Checking if anyone except root can change /etc/mandrake-release
    Checking if anyone except root can change /etc/mandriva-release
    Checking if anyone except root can change /etc/mklinux-release
    Checking if anyone except root can change /etc/mtab
[UPC001] WARNING: /usr/lib/vmware/bin/vmware-vmx is SUID root. /usr/lib/vmware/bin/vmware-vmx contains the string /etc/mtab. The user nahoskins can write to /etc/mtab
    Checking if anyone except root can change /etc/nld-release
    Checking if anyone except root can change /etc/novell-release
    Checking if anyone except root can change /etc/oracle-release
    Checking if anyone except root can change /etc/pki/tls
    Checking if anyone except root can change /etc/pld-release
    Checking if anyone except root can change /etc/redhat-release
    Checking if anyone except root can change /etc/redhat_version
    Checking if anyone except root can change /etc/release
    Checking if anyone except root can change /etc/slackware-release
    Checking if anyone except root can change /etc/slackware-version
    Checking if anyone except root can change /etc/sles-release
    Checking if anyone except root can change /etc/ssl/certs
    Checking if anyone except root can change /etc/sun-release
    Checking if anyone except root can change /etc/SuSE-release
    Checking if anyone except root can change /etc/tinysofa-release
    Checking if anyone except root can change /etc/turbolinux-release
    Checking if anyone except root can change /etc/ultrapenguin-release
    Checking if anyone except root can change /etc/UnitedLinux-release
    Checking if anyone except root can change /etc/va-release
    Checking if anyone except root can change /etc/vmware
    Checking if anyone except root can change /etc/vmware/config
    Checking if anyone except root can change /etc/vmware/not_configured
    Checking if anyone except root can change /etc/vmwH
    Checking if anyone except root can change /etc/yellowdog-release
    Checking if anyone except root can change /Eucla
    Checking if anyone except root can change /evql
    Checking if anyone except root can change /execState/new
    Checking if anyone except root can change /execState/new/
    Checking if anyone except root can change /execState/val
    Checking if anyone except root can change /expiration/activationTime/
    Checking if anyone except root can change /expiration/currentTime/
    Checking if anyone except root can change /expiration/expireText/
    Checking if anyone except root can change /expiration/validFrom/
    Checking if anyone except root can change /expiration/validTill/
    Checking if anyone except root can change /expiration/warningText/
    Checking if anyone except root can change /expiration/warningTime/
    Checking if anyone except root can change /eY
    Checking if anyone except root can change /EzI
    Checking if anyone except root can change /f
    Checking if anyone except root can change /-f_
    Checking if anyone except root can change /f_
    Checking if anyone except root can change /F
    Checking if anyone except root can change /f1
    Checking if anyone except root can change /FD_
    Checking if anyone except root can change /fE
    Checking if anyone except root can change /fence/event/
    Checking if anyone except root can change /fence/request/
    Checking if anyone except root can change /FG
    Checking if anyone except root can change /file/filePath
    Checking if anyone except root can change /file/flat
    Checking if anyone except root can change /fileName
    Checking if anyone except root can change /firmware
    Checking if anyone except root can change /flags/isRendering/
    Checking if anyone except root can change /flat/vmfs
    Checking if anyone except root can change /floppy
    Checking if anyone except root can change /floppy/ix
    Checking if anyone except root can change /fMX
    Checking if anyone except root can change /_fN
    Checking if anyone except root can change /fo
    Checking if anyone except root can change /forceEncryptionPasswordChangeOnMove/
    Checking if anyone except root can change /forceSetupOnce
    Checking if anyone except root can change /Fp
    Checking if anyone except root can change /fR
    Checking if anyone except root can change //FRh
    Checking if anyone except root can change /from
    Checking if anyone except root can change /FS
    Checking if anyone except root can change /fullscreenHint/
    Checking if anyone except root can change /fZ
    Checking if anyone except root can change /g
    Checking if anyone except root can change /-_g
    Checking if anyone except root can change /G
    Checking if anyone except root can change /G5
    Checking if anyone except root can change /Geometry
    Checking if anyone except root can change /getScreenshot/in/multiMonitor/
    Checking if anyone except root can change /ghi/allowCopyPaste/
    Checking if anyone except root can change /ghi/allowDragDrop/
    Checking if anyone except root can change /ghi/allowFolderSharing/
    Checking if anyone except root can change /ghIntegration
    Checking if anyone except root can change /ghIntegration/hostShellActions
    Checking if anyone except root can change /ghIntegration/launchMenu
    Checking if anyone except root can change /ghIntegration/protocolHandlers
    Checking if anyone except root can change /ghIntegration/trashFolder/empty
    Checking if anyone except root can change /GivB
    Checking if anyone except root can change /gj
    Checking if anyone except root can change /Gk6
    Checking if anyone except root can change /GN
    Checking if anyone except root can change /Godthab
    Checking if anyone except root can change /gosInstalledStatus
    Checking if anyone except root can change /GQZ
    Checking if anyone except root can change /grabRequest/in/motionGrab
    Checking if anyone except root can change /grabRequest/in/windowId
    Checking if anyone except root can change /grabState/val
    Checking if anyone except root can change /Greyhound
    Checking if anyone except root can change /GSg
    Checking if anyone except root can change /gStatus
    Checking if anyone except root can change /GT
    Checking if anyone except root can change /Guatemala
    Checking if anyone except root can change /guestHints/fullscreen
    Checking if anyone except root can change /guestInfo
    Checking if anyone except root can change /guestInfo/config
    Checking if anyone except root can change /guestInfo/config/
    Checking if anyone except root can change /guestInfo/config/nicInfo
    Checking if anyone except root can change /guestInfo/config/nicInfo/array
    Checking if anyone except root can change /guestInfo/config/nicInfo/xdr
    Checking if anyone except root can change /guestInfo/config/osName
    Checking if anyone except root can change /guestInfo/config/toolsVersion
    Checking if anyone except root can change /guestInfo/stats/
    Checking if anyone except root can change /guestInfo/stats/uptime
    Checking if anyone except root can change /guestInfo/toolsManifestInfo/dataBuffer
    Checking if anyone except root can change /guestInfo/toolsManifestInfo/dataSize
    Checking if anyone except root can change /guestInfo/toolsManifestInfo/hostManifestCacheDir
    Checking if anyone except root can change /guestInfo/toolsManifestInfo/onInstallEvent
    Checking if anyone except root can change /guestInfo/toolsManifestInfo/vmCfgPath
    Checking if anyone except root can change /guestInfo/toolsManifestInfo/vmToolsStatus
    Checking if anyone except root can change /guestInfo/toolsUpdateCounter
    Checking if anyone except root can change /guestTools
    Checking if anyone except root can change /guestTools/currentStatus/guestConfDirectory
    Checking if anyone except root can change /guestTools/currentStatus/guestTempDirectory
    Checking if anyone except root can change /guestTools/currentStatus/hgfsEnabled
    Checking if anyone except root can change /guestTools/currentStatus/unityActive
    Checking if anyone except root can change /guestTools/customPath
    Checking if anyone except root can change /guestTools/deployPkgState
    Checking if anyone except root can change /guestTools/installerActive
    Checking if anyone except root can change /guestTools/installError
    Checking if anyone except root can change /guestTools/installState/new
    Checking if anyone except root can change /guestTools/lastInstallStatus
    Checking if anyone except root can change /guestTools/runningStatus
    Checking if anyone except root can change /guestTools/toolsAppsRunning/
    Checking if anyone except root can change /guestTools/vmsupport/gStatus
    Checking if anyone except root can change /guestTools/vmsupport/hgCmd
    Checking if anyone except root can change /guestTopologyLimits
    Checking if anyone except root can change /gv
    Checking if anyone except root can change /gW
    Checking if anyone except root can change /G_w
    Checking if anyone except root can change /GY8
    Checking if anyone except root can change /h
    Checking if anyone except root can change /-h
    Checking if anyone except root can change /H
    Checking if anyone except root can change /H5Rb
    Checking if anyone except root can change /H9
    Checking if anyone except root can change /H9-
    Checking if anyone except root can change /H9k
    Checking if anyone except root can change /hardware
    Checking if anyone except root can change /Harpertown
    Checking if anyone except root can change /hasHostOrigin/
    Checking if anyone except root can change /hasRoot/
    Checking if anyone except root can change /Havana
    Checking if anyone except root can change /Havendale
    Checking if anyone except root can change /Hc
    Checking if anyone except root can change /HcD
    Checking if anyone except root can change /hddOrder
    Checking if anyone except root can change /height
    Checking if anyone except root can change /height/
    Checking if anyone except root can change /Hesso
    Checking if anyone except root can change /hH
    Checking if anyone except root can change /Hi
    Checking if anyone except root can change /HJ0
    Checking if anyone except root can change /hkf0
    Checking if anyone except root can change /host
    Checking if anyone except root can change /hostCDROMNumber
    Checking if anyone except root can change /hostOrigin/x/
    Checking if anyone except root can change /hostOrigin/y/
    Checking if anyone except root can change /hostPublishDirectory
    Checking if anyone except root can change /hostWindow/generation/
    Checking if anyone except root can change /hostWindow/height/
    Checking if anyone except root can change /hostWindow/surface/
    Checking if anyone except root can change /hostWindow/width/
    Checking if anyone except root can change /hotKeyPrefix
    Checking if anyone except root can change /Hovd
    Checking if anyone except root can change /hScY
    Checking if anyone except root can change /html
    Checking if anyone except root can change /hw
    Checking if anyone except root can change /Hw
    Checking if anyone except root can change /hwVersion
    Checking if anyone except root can change /i
    Checking if anyone except root can change /I
    Checking if anyone except root can change /_I
    Checking if anyone except root can change /I5
    Checking if anyone except root can change /I9
    Checking if anyone except root can change /icu
    Checking if anyone except root can change /id
    Checking if anyone except root can change /ideDev
    Checking if anyone except root can change /ideDev/ctlrIx
    Checking if anyone except root can change /ideDev/ix
    Checking if anyone except root can change /iDU
    Checking if anyone except root can change /ifx
    Checking if anyone except root can change //Iix
    Checking if anyone except root can change /image/filePath
    Checking if anyone except root can change /image/readonly
    Checking if anyone except root can change /in
    Checking if anyone except root can change /in/a
    Checking if anyone except root can change /in/action
    Checking if anyone except root can change /in/adapterNum
    Checking if anyone except root can change /in/address
    Checking if anyone except root can change /in/addressType
    Checking if anyone except root can change /in/allowGuestControl
    Checking if anyone except root can change /in/allowHWProvider
    Checking if anyone except root can change /in/altitude
    Checking if anyone except root can change /in/annotation
    Checking if anyone except root can change /in/arguments
    Checking if anyone except root can change /in/authBlob
    Checking if anyone except root can change /in/autoDetect
    Checking if anyone except root can change /in/b
    Checking if anyone except root can change /in/backingPath
    Checking if anyone except root can change /in/backingPathName
    Checking if anyone except root can change /in/backingPathNetProxy
    Checking if anyone except root can change /in/backingPropBlob
    Checking if anyone except root can change /in/backingType
    Checking if anyone except root can change /in/bandwidthCap
    Checking if anyone except root can change /in/batchID
    Checking if anyone except root can change /in/bidirectional
    Checking if anyone except root can change /in/blobValue
    Checking if anyone except root can change /in/bsdName
    Checking if anyone except root can change /in/buf
    Checking if anyone except root can change /in/busSpeed
    Checking if anyone except root can change /in/busType
    Checking if anyone except root can change /in/c
    Checking if anyone except root can change /in/cdrom
    Checking if anyone except root can change /in/choice
    Checking if anyone except root can change /in/classType
    Checking if anyone except root can change /in/clearAuto
    Checking if anyone except root can change /in/clientDevice
    Checking if anyone except root can change /in/clientFlags
    Checking if anyone except root can change /in/cmdline
    Checking if anyone except root can change /incoming
    Checking if anyone except root can change /incoming/millirate
    Checking if anyone except root can change /incoming/numPackets
    Checking if anyone except root can change /in/comment
    Checking if anyone except root can change /in/compensatedMagneticNorth
    Checking if anyone except root can change /in/connectionType
    Checking if anyone except root can change /in/connectOp
    Checking if anyone except root can change /in/controller
    Checking if anyone except root can change /in/count
    Checking if anyone except root can change /in/createParentDirectories
    Checking if anyone except root can change /in/ctkEnabled
    Checking if anyone except root can change /in/d
    Checking if anyone except root can change /in/data
    Checking if anyone except root can change /in/dataBlob
    Checking if anyone except root can change /in/dataType
    Checking if anyone except root can change /in/delay
    Checking if anyone except root can change /in/deleteChildren
    Checking if anyone except root can change /in/description
    Checking if anyone except root can change /in/device
    Checking if anyone except root can change /in/deviceId
    Checking if anyone except root can change /in/deviceLabel
    Checking if anyone except root can change /in/devicePropBlob
    Checking if anyone except root can change /in/deviceType
    Checking if anyone except root can change /in/digest
    Checking if anyone except root can change /in/directory
    Checking if anyone except root can change /in/disabled
    Checking if anyone except root can change /in/displayName
    Checking if anyone except root can change /in/displayRectsBlob
    Checking if anyone except root can change /in/dstwid
    Checking if anyone except root can change /in/dvsConnectionId
    Checking if anyone except root can change /in/dvsPortgroupId
    Checking if anyone except root can change /in/dvsPortId
    Checking if anyone except root can change /in/dvsSwitchId
    Checking if anyone except root can change /in/emulation
    Checking if anyone except root can change /in/enable
    Checking if anyone except root can change /in/enabled
    Checking if anyone except root can change /in/envBlob
    Checking if anyone except root can change /in/eventID
    Checking if anyone except root can change /in/exclusiveAccess
    Checking if anyone except root can change /in/execScripts
    Checking if anyone except root can change /in/expandStrings
    Checking if anyone except root can change /in/extension
    Checking if anyone except root can change /in/externalId
    Checking if anyone except root can change /in/features
    Checking if anyone except root can change /in/fileName
    Checking if anyone except root can change /in/filterEnable
    Checking if anyone except root can change /in/filters
    Checking if anyone except root can change /in/firmwareType
    Checking if anyone except root can change /in/force
    Checking if anyone except root can change /in/forRevert
    Checking if anyone except root can change /in/fromPathName
    Checking if anyone except root can change /in/functions
    Checking if anyone except root can change /in/guestFileRoot
    Checking if anyone except root can change /in/guestFileRootSize
    Checking if anyone except root can change /in/guestWritable
    Checking if anyone except root can change /in/hbaType
    Checking if anyone except root can change /in/height
    Checking if anyone except root can change /in/hidcode
    Checking if anyone except root can change /in/horizontalAccuracy
    Checking if anyone except root can change /in/hostDevice
    Checking if anyone except root can change /in/hostStagingDir
    Checking if anyone except root can change /in/id
    Checking if anyone except root can change /in/identifier
    Checking if anyone except root can change /in/illuminance
    Checking if anyone except root can change /in/index
    Checking if anyone except root can change /in/isCommit
    Checking if anyone except root can change /in/isDnD
    Checking if anyone except root can change /in/isInteresting
    Checking if anyone except root can change /in/isMapCert
    Checking if anyone except root can change /in/isOverwrite
    Checking if anyone except root can change /in/isUpgrade
    Checking if anyone except root can change /in/isVolatile
    Checking if anyone except root can change /initiated/customPath
    Checking if anyone except root can change /initiated/prompt
    Checking if anyone except root can change /injectKeys/in/sequence
    Checking if anyone except root can change /in/key
    Checking if anyone except root can change /in/keys
    Checking if anyone except root can change /in/keyValueBlob
    Checking if anyone except root can change /in/label
    Checking if anyone except root can change /in/latitude
    Checking if anyone except root can change /in/lazy
    Checking if anyone except root can change /in/length
    Checking if anyone except root can change /in/level
    Checking if anyone except root can change /in/limit
    Checking if anyone except root can change /in/linkStatePropagationEnable
    Checking if anyone except root can change /in/localFiles
    Checking if anyone except root can change /in/localSize
    Checking if anyone except root can change /in/longitude
    Checking if anyone except root can change /in/matchPattern
    Checking if anyone except root can change /in/maxDevices
    Checking if anyone except root can change /in/maxDurationSeconds
    Checking if anyone except root can change /in/maxEventFromGuest
    Checking if anyone except root can change /in/maxEventToGuest
    Checking if anyone except root can change /in/maxResults
    Checking if anyone except root can change /in/maxSize
    Checking if anyone except root can change /in/maxWaitTime
    Checking if anyone except root can change /in/memorySize
    Checking if anyone except root can change /in/mid
    Checking if anyone except root can change /in/mode
    Checking if anyone except root can change /in/modifiers
    Checking if anyone except root can change /in/module
    Checking if anyone except root can change /in/monitor
    Checking if anyone except root can change /in/name
    Checking if anyone except root can change /in/netEndPoint
    Checking if anyone except root can change /in/networkBootProtocol
    Checking if anyone except root can change /in/networkId
    Checking if anyone except root can change /in/networkName
    Checking if anyone except root can change /in/networkType
    Checking if anyone except root can change /in/newDoubleValue
    Checking if anyone except root can change /in/newEnumValue
    Checking if anyone except root can change /in/newInt64Value
    Checking if anyone except root can change /in/newMemSizeMB
    Checking if anyone except root can change /in/newNumSectors
    Checking if anyone except root can change /in/newNumVCPUs
    Checking if anyone except root can change /in/newStringValue
    Checking if anyone except root can change /in/nextQuery
    Checking if anyone except root can change /in/node
    Checking if anyone except root can change /in/notificationTime
    Checking if anyone except root can change /in/nsType
    Checking if anyone except root can change /in/numEnvVar
    Checking if anyone except root can change /in/numEnvVars
    Checking if anyone except root can change /in/offset
    Checking if anyone except root can change /in/operation
    Checking if anyone except root can change /in/options
    Checking if anyone except root can change /in/opType
    Checking if anyone except root can change /in/order
    Checking if anyone except root can change /in/overWrite
    Checking if anyone except root can change /in/parent
    Checking if anyone except root can change /in/path
    Checking if anyone except root can change /in/pathname
    Checking if anyone except root can change /in/pathName
    Checking if anyone except root can change /in/paused
    Checking if anyone except root can change /in/pciSlotNumber
    Checking if anyone except root can change /in/pemCert
    Checking if anyone except root can change /in/pid
    Checking if anyone except root can change /in/pidBlob
    Checking if anyone except root can change /in/pipeEndPoint
    Checking if anyone except root can change /in/policy
    Checking if anyone except root can change /in/port
    Checking if anyone except root can change /in/prefix
    Checking if anyone except root can change /in/present
    Checking if anyone except root can change /in/progName
    Checking if anyone except root can change /inProgress/current/
    Checking if anyone except root can change /inProgress/maximum/
    Checking if anyone except root can change /inProgress/percentDone
    Checking if anyone except root can change /inProgress/percentDone/
    Checking if anyone except root can change /inProgress/statusMessage
    Checking if anyone except root can change /in/propBlob
    Checking if anyone except root can change /in/pvnID
    Checking if anyone except root can change /in/quiesceApps
    Checking if anyone except root can change /in/quiesced
    Checking if anyone except root can change /in/quiesceFS
    Checking if anyone except root can change /in/readOnly
    Checking if anyone except root can change /in/recursive
    Checking if anyone except root can change /in/regPath
    Checking if anyone except root can change /in/remoteFiles
    Checking if anyone except root can change /in/remoteSize
    Checking if anyone except root can change /in/reqPath
    Checking if anyone except root can change /in/reservation
    Checking if anyone except root can change /in/resultsSeen
    Checking if anyone except root can change /in/rxbwLimit
    Checking if anyone except root can change /in/rxfiDroprate
    Checking if anyone except root can change /in/rxfiDropsize
    Checking if anyone except root can change /in/saveDeviceState
    Checking if anyone except root can change /in/scriptArg
    Checking if anyone except root can change /in/seq
    Checking if anyone except root can change /in/sequence
    Checking if anyone except root can change /in/sessionID
    Checking if anyone except root can change /in/shares
    Checking if anyone except root can change /in/sharing
    Checking if anyone except root can change /in/size
    Checking if anyone except root can change /in/sizeMB
    Checking if anyone except root can change /in/snapshotUid
    Checking if anyone except root can change /in/snapshotUID
    Checking if anyone except root can change /in/soft
    Checking if anyone except root can change /in/spec
    Checking if anyone except root can change /instanceid/
    Checking if anyone except root can change /in/startConnected
    Checking if anyone except root can change /in/state
    Checking if anyone except root can change /in/sticky
    Checking if anyone except root can change /in/str
    Checking if anyone except root can change /in/strOpt
    Checking if anyone except root can change /in/subjectName
    Checking if anyone except root can change /in/subjectType
    Checking if anyone except root can change /in/suffix
    Checking if anyone except root can change /in/synctime
    Checking if anyone except root can change /in/targetNum
    Checking if anyone except root can change /in/throughputCap
    Checking if anyone except root can change /in/timeout
    Checking if anyone except root can change /in/ToPathName
    Checking if anyone except root can change /in/tryNoRxLoss
    Checking if anyone except root can change /in/txbwLimit
    Checking if anyone except root can change /in/txfiDroprate
    Checking if anyone except root can change /in/txfiDropsize
    Checking if anyone except root can change /in/type
    Checking if anyone except root can change /in/updateLiveData
    Checking if anyone except root can change /in/uptCompatibilityEnabled
    Checking if anyone except root can change /in/useCustomizedProgress
    Checking if anyone except root can change /in/useCustomizedQuestion
    Checking if anyone except root can change /in/userName
    Checking if anyone except root can change /in/uuid
    Checking if anyone except root can change /in/val
    Checking if anyone except root can change /invalid
    Checking if anyone except root can change /in/value
    Checking if anyone except root can change /in/valueName
    Checking if anyone except root can change /in/vcpuCount
    Checking if anyone except root can change /in/vcpuid
    Checking if anyone except root can change /in/vcUUID
    Checking if anyone except root can change /in/version
    Checking if anyone except root can change /in/verticalAccuracy
    Checking if anyone except root can change /in/vflashBlockSize
    Checking if anyone except root can change /in/vflashCacheMax
    Checking if anyone except root can change /in/vflashCacheMin
    Checking if anyone except root can change /in/vflashConsistencyType
    Checking if anyone except root can change /in/vflashEnabled
    Checking if anyone except root can change /in/vflashMode
    Checking if anyone except root can change /in/vflashModule
    Checking if anyone except root can change /in/vflashShares
    Checking if anyone except root can change /in/virtualDev
    Checking if anyone except root can change /in/vmodlWritable
    Checking if anyone except root can change /in/vmxBuildType
    Checking if anyone except root can change /in/vnet
    Checking if anyone except root can change /in/volumeUUID
    Checking if anyone except root can change /in/wakeOnPcktRcv
    Checking if anyone except root can change /in/when
    Checking if anyone except root can change /in/width
    Checking if anyone except root can change /in/workingDir
    Checking if anyone except root can change /in/wowBitness
    Checking if anyone except root can change /in/writeThrough
    Checking if anyone except root can change /in/x
    Checking if anyone except root can change /in/y
    Checking if anyone except root can change /in/yieldOnMsrRead
    Checking if anyone except root can change /in/z
    Checking if anyone except root can change /iq_
    Checking if anyone except root can change /IQ
    Checking if anyone except root can change /Irkutsk
    Checking if anyone except root can change /isPrimary/
    Checking if anyone except root can change /Iter
    Checking if anyone except root can change /ITRI
    Checking if anyone except root can change /Iv
    Checking if anyone except root can change /IX
    Checking if anyone except root can change /j
    Checking if anyone except root can change /J
    Checking if anyone except root can change /j6
    Checking if anyone except root can change /javascript
    Checking if anyone except root can change /Jerusalem
    Checking if anyone except root can change /jH
    Checking if anyone except root can change /jkDP
    Checking if anyone except root can change /jm
    Checking if anyone except root can change /JO8L
    Checking if anyone except root can change /Job
    Checking if anyone except root can change /jS
    Checking if anyone except root can change /jZ
    Checking if anyone except root can change /k
    Checking if anyone except root can change /K
    Checking if anyone except root can change /k2/
    Checking if anyone except root can change /Kamchatka
    Checking if anyone except root can change /kblrSendKey/in/down
    Checking if anyone except root can change /kblrSendKey/in/usageCode
    Checking if anyone except root can change /kblrSendKey/in/usagePage
    Checking if anyone except root can change /Kbtek
    Checking if anyone except root can change /keyboard/eatKeys/
    Checking if anyone except root can change /keyboard/keyBindings/
    Checking if anyone except root can change /keyboard/notifyUIEvent
    Checking if anyone except root can change /keyEvent/modifiers
    Checking if anyone except root can change /keyEvent/scancode
    Checking if anyone except root can change /keylist
    Checking if anyone except root can change /Kg
    Checking if anyone except root can change /KJ
    Checking if anyone except root can change /KM
    Checking if anyone except root can change /kn
    Checking if anyone except root can change /KQz
    Checking if anyone except root can change /Krasnoyarsk
    Checking if anyone except root can change /Ks
    Checking if anyone except root can change /kVt
    Checking if anyone except root can change /kvV
    Checking if anyone except root can change /kyG
    Checking if anyone except root can change /l
    Checking if anyone except root can change /L
    Checking if anyone except root can change /L0
    Checking if anyone except root can change /l21
    Checking if anyone except root can change /l3a
    Checking if anyone except root can change /L4
    Checking if anyone except root can change /L9
    Checking if anyone except root can change /Lc
    Checking if anyone except root can change /LD
    Checking if anyone except root can change /legacyBootEnabled
    Checking if anyone except root can change /length
    Checking if anyone except root can change /lengths
    Checking if anyone except root can change /licenses
    Checking if anyone except root can change /limit
    Checking if anyone except root can change /limitRefreshRate/
    Checking if anyone except root can change /listeningForConnections/
    Checking if anyone except root can change /location
    Checking if anyone except root can change /lockOut
    Checking if anyone except root can change /logFile
    Checking if anyone except root can change /logFilename/
    Checking if anyone except root can change /London
    Checking if anyone except root can change /Lord_Howe
    Checking if anyone except root can change /LP
    Checking if anyone except root can change /Ls
    Checking if anyone except root can change /Lu
    Checking if anyone except root can change /lw
    Checking if anyone except root can change /lY/
    Checking if anyone except root can change /Lynnfield
    Checking if anyone except root can change /m
    Checking if anyone except root can change /M
    Checking if anyone except root can change /M3/by
    Checking if anyone except root can change /MA
    Checking if anyone except root can change /Magadan
    Checking if anyone except root can change /matchDefault
    Checking if anyone except root can change /max
    Checking if anyone except root can change /MBN
    Checking if anyone except root can change /media
    Checking if anyone except root can change /memory
    Checking if anyone except root can change /messages
    Checking if anyone except root can change /migr1
    Checking if anyone except root can change /migrateState/lastStatus/
    Checking if anyone except root can change /migrateState/status/
    Checking if anyone except root can change /migrH
    Checking if anyone except root can change /Miquelon
    Checking if anyone except root can change /MJ
    Checking if anyone except root can change /Mk59ab61
    Checking if anyone except root can change /ml
    Checking if anyone except root can change /Montevideo
    Checking if anyone except root can change /Moscow
    Checking if anyone except root can change /Mountain
    Checking if anyone except root can change /mstat
    Checking if anyone except root can change /MU
    Checking if anyone except root can change /mvm/policyState/val/
    Checking if anyone except root can change /n
    Checking if anyone except root can change /N
    Checking if anyone except root can change /_N
    Checking if anyone except root can change /N/0k
    Checking if anyone except root can change /N1C
    Checking if anyone except root can change /nA
    Checking if anyone except root can change /NAb
    Checking if anyone except root can change /name
    Checking if anyone except root can change /nB
    Checking if anyone except root can change /NBhV
    Checking if anyone except root can change /nDcB
    Checking if anyone except root can change /Ne
    Checking if anyone except root can change /netmH
    Checking if anyone except root can change /network/endPoint
    Checking if anyone except root can change /network/tryNoRxLoss
    Checking if anyone except root can change /network/url
    Checking if anyone except root can change /network/vspcPath
    Checking if anyone except root can change /new
    Checking if anyone except root can change /Newpoint
    Checking if anyone except root can change /new/status
    Checking if anyone except root can change /new/status/error
    Checking if anyone except root can change /NG
    Checking if anyone except root can change /nic
    Checking if anyone except root can change /nic/address
    Checking if anyone except root can change /nic/addressType
    Checking if anyone except root can change /nic/bandwidthLimitKbps
    Checking if anyone except root can change /nic/bandwidthLimitKbps/incoming
    Checking if anyone except root can change /nic/bandwidthLimitKbps/outgoing
    Checking if anyone except root can change /nic/hostif
    Checking if anyone except root can change /nic/hostif/pvn/pvnID
    Checking if anyone except root can change /nic/ix
    Checking if anyone except root can change /nic/packetLoss
    Checking if anyone except root can change /nic/packetLoss/incoming/millirate
    Checking if anyone except root can change /nic/packetLoss/incoming/numPackets
    Checking if anyone except root can change /nic/packetLoss/outgoing/millirate
    Checking if anyone except root can change /nic/packetLoss/outgoing/numPackets
    Checking if anyone except root can change /NL
    Checking if anyone except root can change /N/M
    Checking if anyone except root can change /Nocona
    Checking if anyone except root can change /node
    Checking if anyone except root can change /no-go
    Checking if anyone except root can change /non-vmfs
    Checking if anyone except root can change /notifyUI
    Checking if anyone except root can change /Novosibirsk
    Checking if anyone except root can change /NS
    Checking if anyone except root can change /NTFS
    Checking if anyone except root can change /numLockEnabled
    Checking if anyone except root can change /numRollingTiers/
    Checking if anyone except root can change /Nv
    Checking if anyone except root can change /nvram
    Checking if anyone except root can change /nY
    Checking if anyone except root can change /nZ
    Checking if anyone except root can change /o
    Checking if anyone except root can change /O
    Checking if anyone except root can change /oa3
    Checking if anyone except root can change /oA9
    Checking if anyone except root can change /OCQ
    Checking if anyone except root can change /Oh
    Checking if anyone except root can change /OJ
    Checking if anyone except root can change /Omsk
    Checking if anyone except root can change /oneToOneKeyBindings/
    Checking if anyone except root can change /open
    Checking if anyone except root can change /or
    Checking if anyone except root can change /Or
    Checking if anyone except root can change /Os
    Checking if anyone except root can change /out
    Checking if anyone except root can change /out/data
    Checking if anyone except root can change /outgoing
    Checking if anyone except root can change /outgoing/millirate
    Checking if anyone except root can change /outgoing/numPackets
    Checking if anyone except root can change /OUTS
    Checking if anyone except root can change /overwriteQuestion
    Checking if anyone except root can change /overwriteQuestion/out/answer
    Checking if anyone except root can change /OY
    Checking if anyone except root can change /p
    Checking if anyone except root can change /P
    Checking if anyone except root can change /_P2
    Checking if anyone except root can change /p7
    Checking if anyone except root can change /P8i
    Checking if anyone except root can change /Pacific
    Checking if anyone except root can change /pad
    Checking if anyone except root can change /pages
    Checking if anyone except root can change /parallel
    Checking if anyone except root can change /parallel/ix
    Checking if anyone except root can change /passthru/hostdev
    Checking if anyone except root can change /password
    Checking if anyone except root can change /paste
    Checking if anyone except root can change /pb
    Checking if anyone except root can change /pciBridge
    Checking if anyone except root can change /pciBridge/functions
    Checking if anyone except root can change /pciBridge/ix
    Checking if anyone except root can change /pciBridge/virtualDev
    Checking if anyone except root can change /pciPassthru
    Checking if anyone except root can change /pD
    Checking if anyone except root can change /pe
    Checking if anyone except root can change /ph
    Checking if anyone except root can change /pI
    Checking if anyone except root can change /pid
    Checking if anyone except root can change /pipe/endPoint
    Checking if anyone except root can change /pipe/filePath
    Checking if anyone except root can change /pipe/tryNoRxLoss
    Checking if anyone except root can change /Pitcairn
    Checking if anyone except root can change /pixelScale/
    Checking if anyone except root can change /plm
    Checking if anyone except root can change /policyCache/expireText/
    Checking if anyone except root can change /policyCache/lifetime/
    Checking if anyone except root can change /policyCache/warningPeriod/
    Checking if anyone except root can change /policyCache/warningText/
    Checking if anyone except root can change /policyEffect
    Checking if anyone except root can change /policyEffect/policyBlocked
    Checking if anyone except root can change /policyServer/isPolicyServer/
    Checking if anyone except root can change /policyServer/rootCertificates/
    Checking if anyone except root can change /policyServer/serverAddress/
    Checking if anyone except root can change /policyServer/updateFrequency/
    Checking if anyone except root can change /policyServer/useServer/
    Checking if anyone except root can change /policyState/val/metadata/status/
    Checking if anyone except root can change /port
    Checking if anyone except root can change /present
    Checking if anyone except root can change /pressed
    Checking if anyone except root can change /proc
    Checking if anyone except root can change /proc/asound/version
    Checking if anyone except root can change /proc/cpuinfo
    Checking if anyone except root can change /proc/devices
    Checking if anyone except root can change /proc/fs/vmblock/dev
    Checking if anyone except root can change /proc/fs/vmblock/mountPoint
    Checking if anyone except root can change /proc/ide
    Checking if anyone except root can change /proc/ide/
    Checking if anyone except root can change /proc/meminfo
    Checking if anyone except root can change /proc/self/exe
[UPC001] WARNING: /usr/lib/vmware/bin/vmware-vmx is SUID root. /usr/lib/vmware/bin/vmware-vmx contains the string /proc/self/exe. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/self/statm
[UPC001] WARNING: /usr/lib/vmware/bin/vmware-vmx is SUID root. /usr/lib/vmware/bin/vmware-vmx contains the string /proc/self/statm. The user nahoskins can write to /proc/self/statm
[UPC001] WARNING: /usr/lib/vmware/bin/vmware-vmx is SUID root. /usr/lib/vmware/bin/vmware-vmx contains the string /proc/self/statm. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/sys/dev/parport
    Checking if anyone except root can change /proc/sys/dev/parport/parport
    Checking if anyone except root can change /proc/sys/kernel/core_pattern
    Checking if anyone except root can change /proc/sys/kernel/core_uses_pid
    Checking if anyone except root can change /proc/timer_list
    Checking if anyone except root can change /proc/uptime
    Checking if anyone except root can change /progress
    Checking if anyone except root can change /PS
    Checking if anyone except root can change /pub
    Checking if anyone except root can change /publishToGuest
    Checking if anyone except root can change /publishToHost
    Checking if anyone except root can change /Px
    Checking if anyone except root can change /q
    Checking if anyone except root can change /Q
    Checking if anyone except root can change /Q_
    Checking if anyone except root can change /Q/
    Checking if anyone except root can change /q4
    Checking if anyone except root can change /Qa
    Checking if anyone except root can change /Qbeq
    Checking if anyone except root can change /qE
    Checking if anyone except root can change /qfm
    Checking if anyone except root can change /QH
    Checking if anyone except root can change /QI
    Checking if anyone except root can change /qn
    Checking if anyone except root can change /Quality
    Checking if anyone except root can change /queue/rotational
    Checking if anyone except root can change /qw1V
    Checking if anyone except root can change /r
    Checking if anyone except root can change /R
    Checking if anyone except root can change //r1
    Checking if anyone except root can change /R4T
    Checking if anyone except root can change /r5T
    Checking if anyone except root can change /rawCfgState/new
    Checking if anyone except root can change /rawCfgState/val
    Checking if anyone except root can change /READ
    Checking if anyone except root can change /readOnlyCfg
    Checking if anyone except root can change /receiving
    Checking if anyone except root can change /reconfigure
    Checking if anyone except root can change /rect/bottom/
    Checking if anyone except root can change /rect/left/
    Checking if anyone except root can change /rect/right/
    Checking if anyone except root can change /rect/top/
    Checking if anyone except root can change /releaseEvent
    Checking if anyone except root can change /removable/allowGuestConnectionControl
    Checking if anyone except root can change /removable/startConnected
    Checking if anyone except root can change /reservation
    Checking if anyone except root can change /reset
    Checking if anyone except root can change /resolutionSet/
    Checking if anyone except root can change /resume
    Checking if anyone except root can change /RESUME
    Checking if anyone except root can change /revoked/
    Checking if anyone except root can change /REZERO
    Checking if anyone except root can change /RGD
    Checking if anyone except root can change /rhY
    Checking if anyone except root can change /rid
    Checking if anyone except root can change /rj
    Checking if anyone except root can change /rj/
    Checking if anyone except root can change /RN
    Checking if anyone except root can change /rollingTier
    Checking if anyone except root can change /RT
    Checking if anyone except root can change /runtimeState/xpMode/active
    Checking if anyone except root can change /rV
    Checking if anyone except root can change /Rvd
    Checking if anyone except root can change /RVI
    Checking if anyone except root can change /s
    Checking if anyone except root can change /S
    Checking if anyone except root can change /s4
    Checking if anyone except root can change /s6
    Checking if anyone except root can change /SAHF
    Checking if anyone except root can change /Sakhalin
    Checking if anyone except root can change /Samara
    Checking if anyone except root can change /Saskatchewan
    Checking if anyone except root can change /sataCtlr
    Checking if anyone except root can change /sataDev
    Checking if anyone except root can change /sataDev/ctlrIx
    Checking if anyone except root can change /sataDev/ix
    Checking if anyone except root can change /saveAllocMaps
    Checking if anyone except root can change /saveDeviceState
    Checking if anyone except root can change /sB1
    Checking if anyone except root can change /sbin/authd
    Checking if anyone except root can change /scheduledUpgrade/reason
    Checking if anyone except root can change /scheduledUpgrade/state
    Checking if anyone except root can change /scheduledUpgrade/version
    Checking if anyone except root can change /scheduledUpgrade/when
    Checking if anyone except root can change /Scoresbysund
    Checking if anyone except root can change /screen/
    Checking if anyone except root can change /screenId/
    Checking if anyone except root can change /scrollLockEnabled
    Checking if anyone except root can change /scsiCtlr
    Checking if anyone except root can change /scsiDev
    Checking if anyone except root can change /scsiDev/ctlrIx
    Checking if anyone except root can change /scsiDev/ix
    Checking if anyone except root can change /sec
    Checking if anyone except root can change /security/keyLocatorCacheRequest
    Checking if anyone except root can change /sendGuestKeys
    Checking if anyone except root can change /sendHostKeys
    Checking if anyone except root can change /sendUnicodeCodePoint/in/timestamp
    Checking if anyone except root can change /sendUnicodeCodePoint/in/unicodeCodePoint
    Checking if anyone except root can change /sendUnityMouseEvent/in/button4
    Checking if anyone except root can change /sendUnityMouseEvent/in/button5
    Checking if anyone except root can change /sendUnityMouseEvent/in/buttonLeft
    Checking if anyone except root can change /sendUnityMouseEvent/in/buttonMiddle
    Checking if anyone except root can change /sendUnityMouseEvent/in/buttonRight
    Checking if anyone except root can change /sendUnityMouseEvent/in/dhs
    Checking if anyone except root can change /sendUnityMouseEvent/in/dz
    Checking if anyone except root can change /sendUnityMouseEvent/in/x
    Checking if anyone except root can change /sendUnityMouseEvent/in/y
    Checking if anyone except root can change /sensorAccelerometer/
    Checking if anyone except root can change /sensorAmbientLight/
    Checking if anyone except root can change /sensorCompass/
    Checking if anyone except root can change /sensorGyrometer/
    Checking if anyone except root can change /sensorInclinometer/
    Checking if anyone except root can change /sensorLocation/
    Checking if anyone except root can change /sensorOrientation/
    Checking if anyone except root can change /Seoul
    Checking if anyone except root can change /serial
    Checking if anyone except root can change /serial/ix
    Checking if anyone except root can change /setCursorGrabAllowed/in/allowed
    Checking if anyone except root can change /setDisplayTopology/
    Checking if anyone except root can change /setDisplayTopologyModes/
    Checking if anyone except root can change /setScale/in/mode
    Checking if anyone except root can change /setScale/in/mode/scaleFactor/value
    Checking if anyone except root can change /setScale/in/mode/targetHeight/value
    Checking if anyone except root can change /setScale/in/mode/targetWidth/value
    Checking if anyone except root can change /settings
    Checking if anyone except root can change /setup/needsEncryptionPasswordChange/
    Checking if anyone except root can change /setup/needsFirstUseSetup/
    Checking if anyone except root can change /setup/needsGHIOptIn/
    Checking if anyone except root can change /setup/needsRegistration/
    Checking if anyone except root can change /shares
    Checking if anyone except root can change /site
    Checking if anyone except root can change /sm
    Checking if anyone except root can change /smDx
    Checking if anyone except root can change /sMg
    Checking if anyone except root can change /snapshot/nextRollingTakeTime
    Checking if anyone except root can change /snapshot/powerOffActionEnabled
    Checking if anyone except root can change //Snapshots/Shot
    Checking if anyone except root can change /sNk
    Checking if anyone except root can change /socket
    Checking if anyone except root can change /softOption
    Checking if anyone except root can change /softOptionTimeoutMicroSeconds
    Checking if anyone except root can change /soR
    Checking if anyone except root can change /Sossaman
    Checking if anyone except root can change /South
    Checking if anyone except root can change /Stanley
    Checking if anyone except root can change /Status
    Checking if anyone except root can change /status/H
    Checking if anyone except root can change /stdout/stderr
    Checking if anyone except root can change /St_Johns
    Checking if anyone except root can change //StorageData/Storage
    Checking if anyone except root can change /stream/
    Checking if anyone except root can change /sub
    Checking if anyone except root can change /sub-Window
    Checking if anyone except root can change /support/mvdiACE/
    Checking if anyone except root can change /support/mvmtid/
    Checking if anyone except root can change /support/restrictedVM/
    Checking if anyone except root can change /support/version/
    Checking if anyone except root can change /suspend
    Checking if anyone except root can change /svga
    Checking if anyone except root can change /Sydney
    Checking if anyone except root can change /sys
    Checking if anyone except root can change /sys/block
    Checking if anyone except root can change /sys/bus/scsi/devices
    Checking if anyone except root can change /sys/bus/usb/devices
    Checking if anyone except root can change /sys/class/block/
    Checking if anyone except root can change /sys/dev/block
    Checking if anyone except root can change /sys/devL
    Checking if anyone except root can change /sys/firmware/acpi/tables
    Checking if anyone except root can change /sys/firmware/efi/systab
    Checking if anyone except root can change /sysH
    Checking if anyone except root can change /t
    Checking if anyone except root can change /T
    Checking if anyone except root can change /T0
    Checking if anyone except root can change /t2
    Checking if anyone except root can change /t5X
    Checking if anyone except root can change /t6NX
    Checking if anyone except root can change /T7y
    Checking if anyone except root can change /tB1
    Checking if anyone except root can change /TBZ/Sparse
    Checking if anyone except root can change /Teco
    Checking if anyone except root can change /text
    Checking if anyone except root can change /tF1
    Checking if anyone except root can change /tGH
    Checking if anyone except root can change /t-H
    Checking if anyone except root can change /t/H
    Checking if anyone except root can change /thinPrint/enabled
    Checking if anyone except root can change /tKH
    Checking if anyone except root can change /tLD8
    Checking if anyone except root can change /tlH9
    Checking if anyone except root can change /TLS
    Checking if anyone except root can change /tmp
[UPC003] WARNING: /usr/lib/vmware/bin/vmware-vmx is SUID root. /usr/lib/vmware/bin/vmware-vmx contains the string /tmp. World write is set for /tmp (but sticky bit set)
    Checking if anyone except root can change /tmp/
[UPC003] WARNING: /usr/lib/vmware/bin/vmware-vmx is SUID root. /usr/lib/vmware/bin/vmware-vmx contains the string /tmp/. World write is set for /tmp/ (but sticky bit set)
[UPC003] WARNING: /usr/lib/vmware/bin/vmware-vmx is SUID root. /usr/lib/vmware/bin/vmware-vmx contains the string /tmp/. World write is set for /tmp (but sticky bit set)
    Checking if anyone except root can change /tmp/VMwareDnD/
[UPC003] WARNING: /usr/lib/vmware/bin/vmware-vmx is SUID root. /usr/lib/vmware/bin/vmware-vmx contains the string /tmp/VMwareDnD/. World write is set for /tmp/VMwareDnD/ (but sticky bit set)
[UPC003] WARNING: /usr/lib/vmware/bin/vmware-vmx is SUID root. /usr/lib/vmware/bin/vmware-vmx contains the string /tmp/VMwareDnD/. World write is set for /tmp/VMwareDnD (but sticky bit set)
[UPC003] WARNING: /usr/lib/vmware/bin/vmware-vmx is SUID root. /usr/lib/vmware/bin/vmware-vmx contains the string /tmp/VMwareDnD/. World write is set for /tmp (but sticky bit set)
    Checking if anyone except root can change /toolsImagePath
    Checking if anyone except root can change /TP
    Checking if anyone except root can change /tpH
    Checking if anyone except root can change /Tr
    Checking if anyone except root can change /Track
    Checking if anyone except root can change //TRANSLIT
    Checking if anyone except root can change /Tripoli
    Checking if anyone except root can change /TS
    Checking if anyone except root can change /TW
    Checking if anyone except root can change /tWtB
    Checking if anyone except root can change /tXH9
    Checking if anyone except root can change /Tycoelectronics
    Checking if anyone except root can change /type
    Checking if anyone except root can change /u
    Checking if anyone except root can change /U
    Checking if anyone except root can change /U/
    Checking if anyone except root can change /UCKe
    Checking if anyone except root can change /ud2
    Checking if anyone except root can change /ugn
    Checking if anyone except root can change /UHHp
    Checking if anyone except root can change /ui
    Checking if anyone except root can change /uI
    Checking if anyone except root can change /UID
    Checking if anyone except root can change /uint64
    Checking if anyone except root can change /uJh
    Checking if anyone except root can change /uK
    Checking if anyone except root can change /UKR
    Checking if anyone except root can change /Ulaanbaatar
    Checking if anyone except root can change /unity
    Checking if anyone except root can change /unity/
    Checking if anyone except root can change /unity/pbrpcServer
    Checking if anyone except root can change /UNLOCK
    Checking if anyone except root can change /unlock/username/
    Checking if anyone except root can change /unsupported
    Checking if anyone except root can change /UO
    Checking if anyone except root can change /updateIntervalSecs
    Checking if anyone except root can change /updateMouseInMKSWindow/in/inWindow
    Checking if anyone except root can change /Upv
    Checking if anyone except root can change /usbCtlr
    Checking if anyone except root can change /usbCtlr/ehci
    Checking if anyone except root can change /usbDevices/
    Checking if anyone except root can change /UsE
    Checking if anyone except root can change /user
    Checking if anyone except root can change /uSH
    Checking if anyone except root can change /usr/bin/env
    Checking if anyone except root can change /usr/bin/lsb_release
    Checking if anyone except root can change /usr/libI
    Checking if anyone except root can change /usr/lib/pcoip/vchan_plugins
    Checking if anyone except root can change /usr/lib/vmware
    Checking if anyone except root can change /usr/lib/vmware/vmkernel
    Checking if anyone except root can change /usr/sbin/vmware-authd
    Checking if anyone except root can change /usr/share/zoneinfo/
    Checking if anyone except root can change /uv
    Checking if anyone except root can change /UVl
    Checking if anyone except root can change /v
    Checking if anyone except root can change /V
    Checking if anyone except root can change /v1
    Checking if anyone except root can change /V8
    Checking if anyone except root can change /val
    Checking if anyone except root can change /val/
    Checking if anyone except root can change /val/path
    Checking if anyone except root can change /var/lib/dhclient
    Checking if anyone except root can change /var/lib/dhcp
    Checking if anyone except root can change /var/lib/dhcp3
    Checking if anyone except root can change /var/lib/dhcpd
    Checking if anyone except root can change /var/lock
    Checking if anyone except root can change /var/log/vmware
    Checking if anyone except root can change /var/run/vmblock-fuse
    Checking if anyone except root can change /var/run/vmblock-fuse/blockdir
    Checking if anyone except root can change /var/run/vmblock-fuse/dev
    Checking if anyone except root can change /var/run/vmware
    Checking if anyone except root can change /var/run/vmware/authd_
    Checking if anyone except root can change /var/run/vmware/fuse
    Checking if anyone except root can change /var/run/vmware/tickets/
    Checking if anyone except root can change /var/run/vmware/usbarbitrator-socket
    Checking if anyone except root can change /vbH
    Checking if anyone except root can change /VBJ
    Checking if anyone except root can change /vcpu
    Checking if anyone except root can change /vE
    Checking if anyone except root can change /version
    Checking if anyone except root can change /VGA
    Checking if anyone except root can change /view/clip/height
    Checking if anyone except root can change /view/clip/width
    Checking if anyone except root can change /view/clip/x
    Checking if anyone except root can change /view/clip/y
    Checking if anyone except root can change /view/val
    Checking if anyone except root can change /vigor/fields/Audio
    Checking if anyone except root can change /vigor/fields/Bios
    Checking if anyone except root can change /vigor/fields/Bootstrap
    Checking if anyone except root can change /vigor/fields/ConfigParams
    Checking if anyone except root can change /vigor/fields/CrashDetector
    Checking if anyone except root can change /vigor/fields/Disk
    Checking if anyone except root can change /vigor/fields/Ethernet
    Checking if anyone except root can change /vigor/fields/FeatureCompat
    Checking if anyone except root can change /vigor/fields/Floppy
    Checking if anyone except root can change /vigor/fields/GuestAppMonitor
    Checking if anyone except root can change /vigor/fields/GuestInfo
    Checking if anyone except root can change /vigor/fields/GuestIsolation
    Checking if anyone except root can change /vigor/fields/GuestOps
    Checking if anyone except root can change /vigor/fields/GuestOS
    Checking if anyone except root can change /vigor/fields/GuestPeriodic
    Checking if anyone except root can change /vigor/fields/GuestQuiesce
    Checking if anyone except root can change /vigor/fields/GuestStats
    Checking if anyone except root can change /vigor/fields/Heartbeat
    Checking if anyone except root can change /vigor/fields/HGFS
    Checking if anyone except root can change /vigor/fields/HotButton
    Checking if anyone except root can change /vigor/fields/HotPlugManager
    Checking if anyone except root can change /vigor/fields/IDE
    Checking if anyone except root can change /vigor/fields/LogVMX
    Checking if anyone except root can change /vigor/fields/Migrate
    Checking if anyone except root can change /vigor/fields/MiscOpts
    Checking if anyone except root can change /vigor/fields/MKS
    Checking if anyone except root can change /vigor/fields/Monitor
    Checking if anyone except root can change /vigor/fields/NamespaceMgr
    Checking if anyone except root can change /vigor/fields/NVDimm
    Checking if anyone except root can change /vigor/fields/OverheadMem
    Checking if anyone except root can change /vigor/fields/Parallel
    Checking if anyone except root can change /vigor/fields/PCIBridge
    Checking if anyone except root can change /vigor/fields/PCIPassthru
    Checking if anyone except root can change /vigor/fields/PolicyState
    Checking if anyone except root can change /vigor/fields/PowerState
    Checking if anyone except root can change /vigor/fields/ProcessorAndMemory
    Checking if anyone except root can change /vigor/fields/SATA
    Checking if anyone except root can change /vigor/fields/SCSI
    Checking if anyone except root can change /vigor/fields/Sensor
    Checking if anyone except root can change /vigor/fields/Serial
    Checking if anyone except root can change /vigor/fields/Snapshot
    Checking if anyone except root can change /vigor/fields/Tools
    Checking if anyone except root can change /vigor/fields/ToolsInstallManager
    Checking if anyone except root can change /vigor/fields/Upgrade
    Checking if anyone except root can change /vigor/fields/UsbDevice
    Checking if anyone except root can change /vigor/fields/UUIDVMX
    Checking if anyone except root can change /vigor/fields/VigorSample
    Checking if anyone except root can change /vigor/fields/VMAutomation
    Checking if anyone except root can change /vigor/fields/VMCI
    Checking if anyone except root can change /vigor/fields/VmhsBridge
    Checking if anyone except root can change /vigor/fields/VMVariable
    Checking if anyone except root can change /vigor/fields/VProbe
    Checking if anyone except root can change /vigor/fields/VSock
    Checking if anyone except root can change /vigor/fields/VUsb
    Checking if anyone except root can change /virtualScreen/height/
    Checking if anyone except root can change /virtualScreen/width/
    Checking if anyone except root can change /vkO
    Checking if anyone except root can change /Vladivostok
    Checking if anyone except root can change /vmci
    Checking if anyone except root can change /vmfs/devices/char/vsock/vsock
    Checking if anyone except root can change /vmfs/volumes/
    Checking if anyone except root can change /vmfs/volumes/vsan
    Checking if anyone except root can change /vmfs/volumes/vvol
    Checking if anyone except root can change /vm/instanceid
    Checking if anyone except root can change /vm/managedVM
    Checking if anyone except root can change /vm/mvmtid
    Checking if anyone except root can change /vmSettings/
    Checking if anyone except root can change /vm/setupComplete
    Checking if anyone except root can change /vmware
    Checking if anyone except root can change /vmware-authd
    Checking if anyone except root can change /vmx/cfgState/val/vnc
    Checking if anyone except root can change /vmx/execState/val
    Checking if anyone except root can change /vmx/remDev
    Checking if anyone except root can change /vnc/
    Checking if anyone except root can change /VO
    Checking if anyone except root can change /Volgograd
    Checking if anyone except root can change /VY3
    Checking if anyone except root can change /w
    Checking if anyone except root can change /W
    Checking if anyone except root can change /wCX
    Checking if anyone except root can change /West
    Checking if anyone except root can change /wHH
    Checking if anyone except root can change /width
    Checking if anyone except root can change /width/
    Checking if anyone except root can change /Windhoek
    Checking if anyone except root can change /windowSize/height/
    Checking if anyone except root can change /windowSize/width/
    Checking if anyone except root can change /wiped/
    Checking if anyone except root can change /wirelessIcon/iconClicked
    Checking if anyone except root can change /wiretype
    Checking if anyone except root can change /wJWt
    Checking if anyone except root can change /Wl
    Checking if anyone except root can change /Woodcrest/Merom
    Checking if anyone except root can change /wq
    Checking if anyone except root can change /write
    Checking if anyone except root can change /Write
    Checking if anyone except root can change /WRITE
    Checking if anyone except root can change /wS
    Checking if anyone except root can change /WS
    Checking if anyone except root can change /WS3
    Checking if anyone except root can change /Wv
    Checking if anyone except root can change /x
    Checking if anyone except root can change /x/
    Checking if anyone except root can change /X
    Checking if anyone except root can change //X
    Checking if anyone except root can change /X04
    Checking if anyone except root can change /x11/auth/
    Checking if anyone except root can change /x11/display
    Checking if anyone except root can change /XD
    Checking if anyone except root can change /XE
    Checking if anyone except root can change /xhciCtlr
    Checking if anyone except root can change /XjH
    Checking if anyone except root can change /x-l
    Checking if anyone except root can change /XmND
    Checking if anyone except root can change /XR
    Checking if anyone except root can change /XRSTORS
    Checking if anyone except root can change /XSwHcX
    Checking if anyone except root can change /Xx-
    Checking if anyone except root can change /xZ7
    Checking if anyone except root can change /y
    Checking if anyone except root can change /y/
    Checking if anyone except root can change /Y
    Checking if anyone except root can change /Y6
    Checking if anyone except root can change /Yakutsk
    Checking if anyone except root can change /Ye
    Checking if anyone except root can change /Yekaterinburg
    Checking if anyone except root can change /Yerevan
    Checking if anyone except root can change /yf
    Checking if anyone except root can change /Yg
    Checking if anyone except root can change /YK
    Checking if anyone except root can change /yl
    Checking if anyone except root can change /ylu
    Checking if anyone except root can change /_yU
    Checking if anyone except root can change /YV5
    Checking if anyone except root can change /yvvYr
    Checking if anyone except root can change /Yw
    Checking if anyone except root can change /yX
    Checking if anyone except root can change /yY
    Checking if anyone except root can change /z
    Checking if anyone except root can change /Z
    Checking if anyone except root can change /Z/
    Checking if anyone except root can change /z6
    Checking if anyone except root can change /ZC
    Checking if anyone except root can change /ZH
    Checking if anyone except root can change /ZNQ
    Checking if anyone except root can change /ZvC
Checking SGID-utmp program /usr/lib/utempter/utempter: -rwxr-sr-x 1 root utmp 10192 Oct 24  2013 /usr/lib/utempter/utempter
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /dev/
    Checking if anyone except root can change /var/log/wtmp
Checking SUID-root program /usr/lib/chromium/chrome-sandbox: -rwsr-xr-x 1 root root 18376 Oct 13 20:29 /usr/lib/chromium/chrome-sandbox
    Checking if anyone except root can change /usr/lib/libpthread.so.0
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /
    Checking if anyone except root can change /proc/
    Checking if anyone except root can change /proc/self/fd
[UPC001] WARNING: /usr/lib/chromium/chrome-sandbox is SUID root. /usr/lib/chromium/chrome-sandbox contains the string /proc/self/fd. The user nahoskins can write to /proc/self/fd
[UPC001] WARNING: /usr/lib/chromium/chrome-sandbox is SUID root. /usr/lib/chromium/chrome-sandbox contains the string /proc/self/fd. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/self/fdinfo
[UPC001] WARNING: /usr/lib/chromium/chrome-sandbox is SUID root. /usr/lib/chromium/chrome-sandbox contains the string /proc/self/fdinfo. The user nahoskins can write to /proc/self/fdinfo
[UPC001] WARNING: /usr/lib/chromium/chrome-sandbox is SUID root. /usr/lib/chromium/chrome-sandbox contains the string /proc/self/fdinfo. The user nahoskins can write to /proc/self
Checking SUID-root program /usr/lib/polkit-1/polkit-agent-helper-1: -rwsr-xr-x 1 root root 14784 Aug 12 01:06 /usr/lib/polkit-1/polkit-agent-helper-1
    Checking if anyone except root can change /usr/lib/libpam.so.0
    Checking if anyone except root can change /usr/lib/libpolkit-gobject-1.so.0
    Checking if anyone except root can change /usr/lib/libgobject-2.0.so.0
    Checking if anyone except root can change /usr/lib/libglib-2.0.so.0
    Checking if anyone except root can change /usr/lib/libpthread.so.0
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /usr/lib/libdl.so.2
    Checking if anyone except root can change /usr/lib/libgmodule-2.0.so.0
    Checking if anyone except root can change /usr/lib/libgio-2.0.so.0
    Checking if anyone except root can change /usr/lib/libsystemd.so.0
    Checking if anyone except root can change /usr/lib/libpcre.so.1
    Checking if anyone except root can change /usr/lib/libffi.so.6
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /usr/lib/libz.so.1
    Checking if anyone except root can change /usr/lib/libresolv.so.2
    Checking if anyone except root can change /usr/lib/librt.so.1
    Checking if anyone except root can change /usr/lib/libm.so.6
    Checking if anyone except root can change /usr/lib/liblzma.so.5
    Checking if anyone except root can change /usr/lib/liblz4.so.1
    Checking if anyone except root can change /usr/lib/libgcrypt.so.20
    Checking if anyone except root can change /usr/lib/libgpg-error.so.0
    Checking if anyone except root can change /usr/lib/libcap.so.2
    Checking if anyone except root can change /usr/lib/libattr.so.1
    Checking if anyone except root can change /bin
    Checking if anyone except root can change /sbin
    Checking if anyone except root can change /usr/bin
    Checking if anyone except root can change /usr/sbin
Checking SUID-root program /usr/lib/ssh/ssh-keysign: -rws--x--x 1 root root 424032 Aug 21 04:38 /usr/lib/ssh/ssh-keysign
Checking SUID-root program /usr/lib/dbus-1.0/dbus-daemon-launch-helper: -rwsr-x--- 1 root dbus 56768 Sep  8 14:52 /usr/lib/dbus-1.0/dbus-daemon-launch-helper
Checking SUID-root program /usr/lib/mail-privsep: -r-sr-xr-x 1 root root 14072 Sep  5 19:27 /usr/lib/mail-privsep
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
Checking SUID-root program /usr/lib/xf86-video-intel-backlight-helper: -rwsr-xr-x 1 root root 6280 Oct 10 04:03 /usr/lib/xf86-video-intel-backlight-helper
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
Checking SUID-root program /usr/lib/xorg-server/Xorg.wrap: -rwsr-xr-x 1 root root 10472 Jul 17 14:39 /usr/lib/xorg-server/Xorg.wrap
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /dev/dri
    Checking if anyone except root can change /usr/lib/xorg-server
    Checking if anyone except root can change /Xorg

############################################
Checking fscaps programs
############################################
/usr/bin/rlogin = cap_net_bind_service+ep
Checking fscaps program /usr/bin/rlogin: -rwxr-xr-x 1 root root 56712 Sep  8 08:18 /usr/bin/rlogin
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /E
    Checking if anyone except root can change /n
    Checking if anyone except root can change /tcp
/usr/bin/rsh = cap_net_bind_service+ep
Checking fscaps program /usr/bin/rsh: -rwxr-xr-x 1 root root 52360 Sep  8 08:18 /usr/bin/rsh
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /dev/null
[UPC004] WARNING: /usr/bin/rsh has fscaps. /usr/bin/rsh contains the string /dev/null. World write is set for /dev/null
    Checking if anyone except root can change /E
    Checking if anyone except root can change /tcp
    Checking if anyone except root can change /usr/bin/rlogin
/usr/bin/ping6 = cap_net_raw+ep
Checking fscaps program /usr/bin/ping6: -rwxr-xr-x 1 root root 40296 May  8  2015 /usr/bin/ping6
    Checking if anyone except root can change /usr/lib/libcap.so.2
    Checking if anyone except root can change /usr/lib/libresolv.so.2
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /usr/lib/libattr.so.1
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /
    Checking if anyone except root can change /avg/ewma/max
    Checking if anyone except root can change /avg/max/mdev
    Checking if anyone except root can change /ewma
    Checking if anyone except root can change /or
    Checking if anyone except root can change /W
/usr/bin/ping = cap_net_raw+ep
Checking fscaps program /usr/bin/ping: -rwxr-xr-x 1 root root 39744 May  8  2015 /usr/bin/ping
    Checking if anyone except root can change /usr/lib/libcap.so.2
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /usr/lib/libattr.so.1
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /avg/ewma/max
    Checking if anyone except root can change /avg/max/mdev
    Checking if anyone except root can change /ewma
    Checking if anyone except root can change /or
/usr/bin/rcp = cap_net_bind_service+ep
Checking fscaps program /usr/bin/rcp: -rwxr-xr-x 1 root root 60648 Sep  8 08:18 /usr/bin/rcp
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /bin/sh
    Checking if anyone except root can change /E
    Checking if anyone except root can change /t
    Checking if anyone except root can change /tcp
    Checking if anyone except root can change /usr/bin/cp
    Checking if anyone except root can change /usr/bin/rsh
/usr/bin/dumpcap = cap_net_admin,cap_net_raw+eip
Checking fscaps program /usr/bin/dumpcap: -rwxr-xr-- 1 root wireshark 85592 Aug 31 13:19 /usr/bin/dumpcap
    Checking if anyone except root can change /usr/lib/libwsutil.so.4
    Checking if anyone except root can change /usr/lib/libglib-2.0.so.0
    Checking if anyone except root can change /usr/lib/libpcap.so.1
    Checking if anyone except root can change /usr/lib/libcap.so.2
    Checking if anyone except root can change /usr/lib/libz.so.1
    Checking if anyone except root can change /usr/lib/libnl-genl-3.so.200
    Checking if anyone except root can change /usr/lib/libnl-3.so.200
    Checking if anyone except root can change /usr/lib/libpthread.so.0
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /usr/lib/libgthread-2.0.so.0
    Checking if anyone except root can change /usr/lib/libgmodule-2.0.so.0
    Checking if anyone except root can change /usr/lib/libgcrypt.so.20
    Checking if anyone except root can change /usr/lib/libgpg-error.so.0
    Checking if anyone except root can change /usr/lib/libnl-route-3.so.200
    Checking if anyone except root can change /usr/lib/libpcre.so.1
    Checking if anyone except root can change /usr/lib/libusb-1.0.so.0
    Checking if anyone except root can change /usr/lib/libdbus-1.so.3
    Checking if anyone except root can change /usr/lib/libattr.so.1
    Checking if anyone except root can change /usr/lib/libm.so.6
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /usr/lib/libdl.so.2
    Checking if anyone except root can change /usr/lib/libudev.so.1
    Checking if anyone except root can change /usr/lib/libsystemd.so.0
    Checking if anyone except root can change /usr/lib/librt.so.1
    Checking if anyone except root can change /usr/lib/libresolv.so.2
    Checking if anyone except root can change /usr/lib/liblzma.so.5
    Checking if anyone except root can change /usr/lib/liblz4.so.1
    Checking if anyone except root can change /dropped
    Checking if anyone except root can change /O
    Checking if anyone except root can change /proc/net/dev
[UPC001] WARNING: /usr/bin/dumpcap has fscaps. /usr/bin/dumpcap contains the string /proc/net/dev. The user nahoskins can write to /proc/net
    Checking if anyone except root can change /proc/sys/net/core/bpf_jit_enable
    Checking if anyone except root can change /socket

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
    Checking if anyone except root can change /
    Checking if anyone except root can change /bin/vmware-vmx
    Checking if anyone except root can change /bootstrap
    Checking if anyone except root can change /checkvm
    Checking if anyone except root can change /dev/
    Checking if anyone except root can change /dev/null
[UPC004] WARNING: /etc/init.d/vmware is run by root at startup. /etc/init.d/vmware contains the string /dev/null. World write is set for /dev/null
    Checking if anyone except root can change /dev/vsock
[UPC004] WARNING: /etc/init.d/vmware is run by root at startup. /etc/init.d/vmware contains the string /dev/vsock. World write is set for /dev/vsock
    Checking if anyone except root can change /etc/vmware
    Checking if anyone except root can change /functions
    Checking if anyone except root can change /lib/modules/
    Checking if anyone except root can change /proc/misc
    Checking if anyone except root can change /proc/sys/kernel/shmmax
    Checking if anyone except root can change /sbin/lsmod
    Checking if anyone except root can change /sbin/modprobe
    Checking if anyone except root can change /var/lock/subsys
    Checking if anyone except root can change /var/lock/subsys/
    Checking if anyone except root can change /var/log/vnetlib
    Checking if anyone except root can change /vmrun
    Checking if anyone except root can change /vmware
    Checking if anyone except root can change /vmware-authdlauncher
    Checking if anyone except root can change /vmware-networks

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
    Checking if anyone except nahoskins can change /usr/lib/libXft.so.2
    Checking if anyone except nahoskins can change /usr/lib/libfontconfig.so.1
    Checking if anyone except nahoskins can change /usr/lib/libXaw.so.7
    Checking if anyone except nahoskins can change /usr/lib/libXmu.so.6
    Checking if anyone except nahoskins can change /usr/lib/libXt.so.6
    Checking if anyone except nahoskins can change /usr/lib/libX11.so.6
    Checking if anyone except nahoskins can change /usr/lib/libXpm.so.4
    Checking if anyone except nahoskins can change /usr/lib/libICE.so.6
    Checking if anyone except nahoskins can change /usr/lib/libutempter.so.0
    Checking if anyone except nahoskins can change /usr/lib/libncursesw.so.6
    Checking if anyone except nahoskins can change /usr/lib/libc.so.6
    Checking if anyone except nahoskins can change /usr/lib/libfreetype.so.6
    Checking if anyone except nahoskins can change /usr/lib/libXrender.so.1
    Checking if anyone except nahoskins can change /usr/lib/libexpat.so.1
    Checking if anyone except nahoskins can change /usr/lib/libpthread.so.0
    Checking if anyone except nahoskins can change /usr/lib/libXext.so.6
    Checking if anyone except nahoskins can change /usr/lib/libSM.so.6
    Checking if anyone except nahoskins can change /usr/lib/libxcb.so.1
    Checking if anyone except nahoskins can change /usr/lib/libdl.so.2
    Checking if anyone except nahoskins can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except nahoskins can change /usr/lib/libz.so.1
    Checking if anyone except nahoskins can change /usr/lib/libbz2.so.1.0
    Checking if anyone except nahoskins can change /usr/lib/libpng16.so.16
    Checking if anyone except nahoskins can change /usr/lib/libharfbuzz.so.0
    Checking if anyone except nahoskins can change /usr/lib/libuuid.so.1
    Checking if anyone except nahoskins can change /usr/lib/libXau.so.6
    Checking if anyone except nahoskins can change /usr/lib/libXdmcp.so.6
    Checking if anyone except nahoskins can change /usr/lib/libm.so.6
    Checking if anyone except nahoskins can change /usr/lib/libglib-2.0.so.0
    Checking if anyone except nahoskins can change /usr/lib/libgraphite2.so.3
    Checking if anyone except nahoskins can change /usr/lib/libpcre.so.1
    Checking if anyone except nahoskins can change /
    Checking if anyone except nahoskins can change /00/00
    Checking if anyone except nahoskins can change /00/5f
    Checking if anyone except nahoskins can change /00/87
    Checking if anyone except nahoskins can change /00/af
    Checking if anyone except nahoskins can change /00/d7
    Checking if anyone except nahoskins can change /00/ff
    Checking if anyone except nahoskins can change /08/08
    Checking if anyone except nahoskins can change /12/12
    Checking if anyone except nahoskins can change /1c/1c
    Checking if anyone except nahoskins can change /26/26
    Checking if anyone except nahoskins can change /30/30
    Checking if anyone except nahoskins can change /3a/3a
    Checking if anyone except nahoskins can change /44/44
    Checking if anyone except nahoskins can change /4e/4e
    Checking if anyone except nahoskins can change /58/58
    Checking if anyone except nahoskins can change /5c/ff
    Checking if anyone except nahoskins can change /5f/00
    Checking if anyone except nahoskins can change /5f/5f
    Checking if anyone except nahoskins can change /5f/87
    Checking if anyone except nahoskins can change /5f/af
    Checking if anyone except nahoskins can change /5f/d7
    Checking if anyone except nahoskins can change /5f/ff
    Checking if anyone except nahoskins can change /62/62
    Checking if anyone except nahoskins can change /6c/6c
    Checking if anyone except nahoskins can change /76/76
    Checking if anyone except nahoskins can change /80/80
    Checking if anyone except nahoskins can change /87/00
    Checking if anyone except nahoskins can change /87/5f
    Checking if anyone except nahoskins can change /87/87
    Checking if anyone except nahoskins can change /87/af
    Checking if anyone except nahoskins can change /87/d7
    Checking if anyone except nahoskins can change /87/ff
    Checking if anyone except nahoskins can change /8a/8a
    Checking if anyone except nahoskins can change /94/94
    Checking if anyone except nahoskins can change /9e/9e
    Checking if anyone except nahoskins can change /a8/a8
    Checking if anyone except nahoskins can change /af/00
    Checking if anyone except nahoskins can change /af/5f
    Checking if anyone except nahoskins can change /af/87
    Checking if anyone except nahoskins can change /af/af
    Checking if anyone except nahoskins can change /af/d7
    Checking if anyone except nahoskins can change /af/ff
    Checking if anyone except nahoskins can change /allow
    Checking if anyone except nahoskins can change /b2/b2
    Checking if anyone except nahoskins can change /bc/bc
    Checking if anyone except nahoskins can change /bg
    Checking if anyone except nahoskins can change /bin/sh
    Checking if anyone except nahoskins can change /c6/c6
    Checking if anyone except nahoskins can change /d0/d0
    Checking if anyone except nahoskins can change /d7/00
    Checking if anyone except nahoskins can change /d7/5f
    Checking if anyone except nahoskins can change /d7/87
    Checking if anyone except nahoskins can change /d7/af
    Checking if anyone except nahoskins can change /d7/d7
    Checking if anyone except nahoskins can change /d7/ff
    Checking if anyone except nahoskins can change /da/da
    Checking if anyone except nahoskins can change /dev/console
    Checking if anyone except nahoskins can change /dev/pts
    Checking if anyone except nahoskins can change /dev/tty
[UPC004] WARNING: /usr/bin/xterm is currently running as nahoskins. /usr/bin/xterm contains the string /dev/tty. World write is set for /dev/tty
    Checking if anyone except nahoskins can change /E1
    Checking if anyone except nahoskins can change /e4/e4
    Checking if anyone except nahoskins can change /E9
    Checking if anyone except nahoskins can change /ee/ee
    Checking if anyone except nahoskins can change /etc/shells
    Checking if anyone except nahoskins can change /ff/00
    Checking if anyone except nahoskins can change /ff/5f
    Checking if anyone except nahoskins can change /ff/87
    Checking if anyone except nahoskins can change /ff/af
    Checking if anyone except nahoskins can change /ff/d7
    Checking if anyone except nahoskins can change /ff/ff
    Checking if anyone except nahoskins can change /gid
    Checking if anyone except nahoskins can change /L9
    Checking if anyone except nahoskins can change /O
    Checking if anyone except nahoskins can change /off
    Checking if anyone except nahoskins can change /on
    Checking if anyone except nahoskins can change /proc/self/exe
    Checking if anyone except nahoskins can change /usr/bin/luit
    Checking if anyone except nahoskins can change /usr/share/pixmaps/
    Checking if anyone except nahoskins can change /proc/11623/fd/0
[UPC004] WARNING: /proc/11623/fd/0 is an open file descriptor for process 11623 running as nahoskins. World write is set for /proc/11623/fd/0
    Checking if anyone except nahoskins can change /proc/11623/fd/1
    Checking if anyone except nahoskins can change /proc/11623/fd/2
    Checking if anyone except nahoskins can change /proc/11623/fd/3
    Checking if anyone except nahoskins can change /proc/11623/fd/4
[UPC004] WARNING: /proc/11623/fd/4 is an open file descriptor for process 11623 running as nahoskins. World write is set for /proc/11623/fd/4
------------------------
PID:           11625
Owner:         nahoskins
Program path:  /usr/bin/zsh
    Checking if anyone except nahoskins can change /usr/bin/zsh
    Checking if anyone except nahoskins can change /usr/lib/libcap.so.2
    Checking if anyone except nahoskins can change /usr/lib/libdl.so.2
    Checking if anyone except nahoskins can change /usr/lib/libncursesw.so.6
    Checking if anyone except nahoskins can change /usr/lib/libm.so.6
    Checking if anyone except nahoskins can change /usr/lib/libc.so.6
    Checking if anyone except nahoskins can change /usr/lib/libattr.so.1
    Checking if anyone except nahoskins can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except nahoskins can change /
    Checking if anyone except nahoskins can change /A
    Checking if anyone except nahoskins can change /Backends
    Checking if anyone except nahoskins can change /Base
    Checking if anyone except nahoskins can change /bin
    Checking if anyone except nahoskins can change /bin/sh
    Checking if anyone except nahoskins can change /C
    Checking if anyone except nahoskins can change /compctl
    Checking if anyone except nahoskins can change /complete
    Checking if anyone except nahoskins can change /complist
    Checking if anyone except nahoskins can change /computil
    Checking if anyone except nahoskins can change /cur
    Checking if anyone except nahoskins can change /D
    Checking if anyone except nahoskins can change /dev/
    Checking if anyone except nahoskins can change /dev/fd/
    Checking if anyone except nahoskins can change /dev/null
[UPC004] WARNING: /usr/bin/zsh is currently running as nahoskins. /usr/bin/zsh contains the string /dev/null. World write is set for /dev/null
    Checking if anyone except nahoskins can change /dev/tty
[UPC004] WARNING: /usr/bin/zsh is currently running as nahoskins. /usr/bin/zsh contains the string /dev/tty. World write is set for /dev/tty
    Checking if anyone except nahoskins can change /etc/profile
    Checking if anyone except nahoskins can change /etc/suid_profile
    Checking if anyone except nahoskins can change /etc/zsh/zlogin
    Checking if anyone except nahoskins can change /etc/zsh/zlogout
    Checking if anyone except nahoskins can change /etc/zsh/zprofile
    Checking if anyone except nahoskins can change /etc/zsh/zshenv
    Checking if anyone except nahoskins can change /etc/zsh/zshrc
    Checking if anyone except nahoskins can change /H
    Checking if anyone except nahoskins can change /H1U
    Checking if anyone except nahoskins can change /HcD
    Checking if anyone except nahoskins can change /L
    Checking if anyone except nahoskins can change /Linux
    Checking if anyone except nahoskins can change /main
    Checking if anyone except nahoskins can change /new
    Checking if anyone except nahoskins can change /newuser
    Checking if anyone except nahoskins can change /parameter
    Checking if anyone except nahoskins can change /pcre
    Checking if anyone except nahoskins can change /proc/self/fd
    Checking if anyone except nahoskins can change /r
    Checking if anyone except nahoskins can change /regex
    Checking if anyone except nahoskins can change /rlimits
    Checking if anyone except nahoskins can change /sched
    Checking if anyone except nahoskins can change /t
    Checking if anyone except nahoskins can change /t5H
    Checking if anyone except nahoskins can change /t7
    Checking if anyone except nahoskins can change /termcap
    Checking if anyone except nahoskins can change /terminfo
    Checking if anyone except nahoskins can change /tGL
    Checking if anyone except nahoskins can change /tKH
    Checking if anyone except nahoskins can change /tKUSH
    Checking if anyone except nahoskins can change /tM
    Checking if anyone except nahoskins can change /tmp
[UPC003] WARNING: /usr/bin/zsh is currently running as nahoskins. /usr/bin/zsh contains the string /tmp. World write is set for /tmp (but sticky bit set)
    Checking if anyone except nahoskins can change /tmp/zsh
[UPC003] WARNING: /usr/bin/zsh is currently running as nahoskins. /usr/bin/zsh contains the string /tmp/zsh. World write is set for /tmp (but sticky bit set)
    Checking if anyone except nahoskins can change /tqH
    Checking if anyone except nahoskins can change /tyH
    Checking if anyone except nahoskins can change /u
    Checking if anyone except nahoskins can change /uKH
    Checking if anyone except nahoskins can change /Unix
    Checking if anyone except nahoskins can change /usr/bin
    Checking if anyone except nahoskins can change /usr/local/bin
    Checking if anyone except nahoskins can change /usr/local/share/zsh/site-functions
    Checking if anyone except nahoskins can change /usr/share/zsh/functions
    Checking if anyone except nahoskins can change /usr/share/zsh/site-functions
    Checking if anyone except nahoskins can change /usr/ucb
    Checking if anyone except nahoskins can change /uzH
    Checking if anyone except nahoskins can change /value
    Checking if anyone except nahoskins can change /var/log/wtmp
    Checking if anyone except nahoskins can change /var/run/utmp
    Checking if anyone except nahoskins can change /wbH
    Checking if anyone except nahoskins can change /X
    Checking if anyone except nahoskins can change /xJH
    Checking if anyone except nahoskins can change /zle
    Checking if anyone except nahoskins can change /zleparameter
    Checking if anyone except nahoskins can change /Zsh
    Checking if anyone except nahoskins can change /zutil
    Checking if anyone except nahoskins can change /proc/11625/fd/0
    Checking if anyone except nahoskins can change /proc/11625/fd/1
    Checking if anyone except nahoskins can change /proc/11625/fd/10
    Checking if anyone except nahoskins can change /proc/11625/fd/2
------------------------
PID:           11668
Owner:         nahoskins
Program path:  /usr/bin/python3.5
    Checking if anyone except nahoskins can change /usr/bin/python3.5
    Checking if anyone except nahoskins can change /usr/lib/libpython3.5m.so.1.0
    Checking if anyone except nahoskins can change /usr/lib/libpthread.so.0
    Checking if anyone except nahoskins can change /usr/lib/libc.so.6
    Checking if anyone except nahoskins can change /usr/lib/libdl.so.2
    Checking if anyone except nahoskins can change /usr/lib/libutil.so.1
    Checking if anyone except nahoskins can change /usr/lib/libm.so.6
    Checking if anyone except nahoskins can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except nahoskins can change /proc/11668/fd/0
    Checking if anyone except nahoskins can change /proc/11668/fd/1
    Checking if anyone except nahoskins can change /proc/11668/fd/10
    Checking if anyone except nahoskins can change /proc/11668/fd/11
    Checking if anyone except nahoskins can change /proc/11668/fd/12
    Checking if anyone except nahoskins can change /proc/11668/fd/14
    Checking if anyone except nahoskins can change /proc/11668/fd/2
    Checking if anyone except nahoskins can change /proc/11668/fd/4
    Checking if anyone except nahoskins can change /proc/11668/fd/5
    Checking if anyone except nahoskins can change /proc/11668/fd/6
    Checking if anyone except nahoskins can change /proc/11668/fd/7
    Checking if anyone except nahoskins can change /proc/11668/fd/8
    Checking if anyone except nahoskins can change /proc/11668/fd/9
------------------------
PID:           11768
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           11992
Owner:         nahoskins
Program path:  /usr/bin/zsh
    Checking if anyone except nahoskins can change /usr/bin/zsh
    Checking if anyone except nahoskins can change /usr/lib/libcap.so.2
    Checking if anyone except nahoskins can change /usr/lib/libdl.so.2
    Checking if anyone except nahoskins can change /usr/lib/libncursesw.so.6
    Checking if anyone except nahoskins can change /usr/lib/libm.so.6
    Checking if anyone except nahoskins can change /usr/lib/libc.so.6
    Checking if anyone except nahoskins can change /usr/lib/libattr.so.1
    Checking if anyone except nahoskins can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except nahoskins can change /
    Checking if anyone except nahoskins can change /A
    Checking if anyone except nahoskins can change /Backends
    Checking if anyone except nahoskins can change /Base
    Checking if anyone except nahoskins can change /bin
    Checking if anyone except nahoskins can change /bin/sh
    Checking if anyone except nahoskins can change /C
    Checking if anyone except nahoskins can change /compctl
    Checking if anyone except nahoskins can change /complete
    Checking if anyone except nahoskins can change /complist
    Checking if anyone except nahoskins can change /computil
    Checking if anyone except nahoskins can change /cur
    Checking if anyone except nahoskins can change /D
    Checking if anyone except nahoskins can change /dev/
    Checking if anyone except nahoskins can change /dev/fd/
    Checking if anyone except nahoskins can change /dev/null
[UPC004] WARNING: /usr/bin/zsh is currently running as nahoskins. /usr/bin/zsh contains the string /dev/null. World write is set for /dev/null
    Checking if anyone except nahoskins can change /dev/tty
[UPC004] WARNING: /usr/bin/zsh is currently running as nahoskins. /usr/bin/zsh contains the string /dev/tty. World write is set for /dev/tty
    Checking if anyone except nahoskins can change /etc/profile
    Checking if anyone except nahoskins can change /etc/suid_profile
    Checking if anyone except nahoskins can change /etc/zsh/zlogin
    Checking if anyone except nahoskins can change /etc/zsh/zlogout
    Checking if anyone except nahoskins can change /etc/zsh/zprofile
    Checking if anyone except nahoskins can change /etc/zsh/zshenv
    Checking if anyone except nahoskins can change /etc/zsh/zshrc
    Checking if anyone except nahoskins can change /H
    Checking if anyone except nahoskins can change /H1U
    Checking if anyone except nahoskins can change /HcD
    Checking if anyone except nahoskins can change /L
    Checking if anyone except nahoskins can change /Linux
    Checking if anyone except nahoskins can change /main
    Checking if anyone except nahoskins can change /new
    Checking if anyone except nahoskins can change /newuser
    Checking if anyone except nahoskins can change /parameter
    Checking if anyone except nahoskins can change /pcre
    Checking if anyone except nahoskins can change /proc/self/fd
    Checking if anyone except nahoskins can change /r
    Checking if anyone except nahoskins can change /regex
    Checking if anyone except nahoskins can change /rlimits
    Checking if anyone except nahoskins can change /sched
    Checking if anyone except nahoskins can change /t
    Checking if anyone except nahoskins can change /t5H
    Checking if anyone except nahoskins can change /t7
    Checking if anyone except nahoskins can change /termcap
    Checking if anyone except nahoskins can change /terminfo
    Checking if anyone except nahoskins can change /tGL
    Checking if anyone except nahoskins can change /tKH
    Checking if anyone except nahoskins can change /tKUSH
    Checking if anyone except nahoskins can change /tM
    Checking if anyone except nahoskins can change /tmp
[UPC003] WARNING: /usr/bin/zsh is currently running as nahoskins. /usr/bin/zsh contains the string /tmp. World write is set for /tmp (but sticky bit set)
    Checking if anyone except nahoskins can change /tmp/zsh
[UPC003] WARNING: /usr/bin/zsh is currently running as nahoskins. /usr/bin/zsh contains the string /tmp/zsh. World write is set for /tmp (but sticky bit set)
    Checking if anyone except nahoskins can change /tqH
    Checking if anyone except nahoskins can change /tyH
    Checking if anyone except nahoskins can change /u
    Checking if anyone except nahoskins can change /uKH
    Checking if anyone except nahoskins can change /Unix
    Checking if anyone except nahoskins can change /usr/bin
    Checking if anyone except nahoskins can change /usr/local/bin
    Checking if anyone except nahoskins can change /usr/local/share/zsh/site-functions
    Checking if anyone except nahoskins can change /usr/share/zsh/functions
    Checking if anyone except nahoskins can change /usr/share/zsh/site-functions
    Checking if anyone except nahoskins can change /usr/ucb
    Checking if anyone except nahoskins can change /uzH
    Checking if anyone except nahoskins can change /value
    Checking if anyone except nahoskins can change /var/log/wtmp
    Checking if anyone except nahoskins can change /var/run/utmp
    Checking if anyone except nahoskins can change /wbH
    Checking if anyone except nahoskins can change /X
    Checking if anyone except nahoskins can change /xJH
    Checking if anyone except nahoskins can change /zle
    Checking if anyone except nahoskins can change /zleparameter
    Checking if anyone except nahoskins can change /Zsh
    Checking if anyone except nahoskins can change /zutil
    Checking if anyone except nahoskins can change /proc/11992/fd/0
    Checking if anyone except nahoskins can change /proc/11992/fd/1
    Checking if anyone except nahoskins can change /proc/11992/fd/10
    Checking if anyone except nahoskins can change /proc/11992/fd/2
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
    Checking if anyone except nahoskins can change /usr/lib/libpthread.so.0
    Checking if anyone except nahoskins can change /usr/lib/libdl.so.2
    Checking if anyone except nahoskins can change /usr/lib/librt.so.1
    Checking if anyone except nahoskins can change /usr/lib/libX11.so.6
    Checking if anyone except nahoskins can change /usr/lib/libXext.so.6
    Checking if anyone except nahoskins can change /usr/lib/libXinerama.so.1
    Checking if anyone except nahoskins can change /usr/lib/libXcursor.so.1
    Checking if anyone except nahoskins can change /usr/lib/libXtst.so.6
    Checking if anyone except nahoskins can change /usr/lib/libXi.so.6
    Checking if anyone except nahoskins can change /usr/lib/libstdc++.so.6
    Checking if anyone except nahoskins can change /usr/lib/libm.so.6
    Checking if anyone except nahoskins can change /usr/lib/libgcc_s.so.1
    Checking if anyone except nahoskins can change /usr/lib/libc.so.6
    Checking if anyone except nahoskins can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except nahoskins can change /usr/lib/libxcb.so.1
    Checking if anyone except nahoskins can change /usr/lib/libXrender.so.1
    Checking if anyone except nahoskins can change /usr/lib/libXfixes.so.3
    Checking if anyone except nahoskins can change /usr/lib/libXau.so.6
    Checking if anyone except nahoskins can change /usr/lib/libXdmcp.so.6
    Checking if anyone except nahoskins can change /
    Checking if anyone except nahoskins can change /_
    Checking if anyone except nahoskins can change /-
    Checking if anyone except nahoskins can change //
    Checking if anyone except nahoskins can change //_
    Checking if anyone except nahoskins can change /0
    Checking if anyone except nahoskins can change /0123
    Checking if anyone except nahoskins can change /0H
    Checking if anyone except nahoskins can change /0LX
    Checking if anyone except nahoskins can change /0wp
    Checking if anyone except nahoskins can change /0y
    Checking if anyone except nahoskins can change /1
    Checking if anyone except nahoskins can change //123456779
    Checking if anyone except nahoskins can change /1F
    Checking if anyone except nahoskins can change /1hD
    Checking if anyone except nahoskins can change /1UYBi
    Checking if anyone except nahoskins can change /1VGX
    Checking if anyone except nahoskins can change /2
    Checking if anyone except nahoskins can change /29V
    Checking if anyone except nahoskins can change /2fw
    Checking if anyone except nahoskins can change /2h
    Checking if anyone except nahoskins can change /2I
    Checking if anyone except nahoskins can change /2R
    Checking if anyone except nahoskins can change /2u
    Checking if anyone except nahoskins can change /2U
    Checking if anyone except nahoskins can change /2Yb
    Checking if anyone except nahoskins can change /2ybD
    Checking if anyone except nahoskins can change /3
    Checking if anyone except nahoskins can change /386
    Checking if anyone except nahoskins can change /3A
    Checking if anyone except nahoskins can change /3H
    Checking if anyone except nahoskins can change /3H1
    Checking if anyone except nahoskins can change /3IS
    Checking if anyone except nahoskins can change /3qGs
    Checking if anyone except nahoskins can change /4
    Checking if anyone except nahoskins can change /43O
    Checking if anyone except nahoskins can change /4N
    Checking if anyone except nahoskins can change /4VN
    Checking if anyone except nahoskins can change /5
    Checking if anyone except nahoskins can change /54
    Checking if anyone except nahoskins can change /5aHC5
    Checking if anyone except nahoskins can change /5c
    Checking if anyone except nahoskins can change /5H
    Checking if anyone except nahoskins can change /5lgw
    Checking if anyone except nahoskins can change /5Q
    Checking if anyone except nahoskins can change /5R
    Checking if anyone except nahoskins can change /6
    Checking if anyone except nahoskins can change /60
    Checking if anyone except nahoskins can change /60o
    Checking if anyone except nahoskins can change /7
    Checking if anyone except nahoskins can change /79
    Checking if anyone except nahoskins can change /7C
    Checking if anyone except nahoskins can change /7d
    Checking if anyone except nahoskins can change /7dIR
    Checking if anyone except nahoskins can change /7e
    Checking if anyone except nahoskins can change /7Fm
    Checking if anyone except nahoskins can change /-7IP
    Checking if anyone except nahoskins can change /7L
    Checking if anyone except nahoskins can change /7rv
    Checking if anyone except nahoskins can change /8
    Checking if anyone except nahoskins can change /83
    Checking if anyone except nahoskins can change /8/9
    Checking if anyone except nahoskins can change /8a
    Checking if anyone except nahoskins can change /8/a
    Checking if anyone except nahoskins can change /8BR
    Checking if anyone except nahoskins can change /8d
    Checking if anyone except nahoskins can change /8o
    Checking if anyone except nahoskins can change /8q
    Checking if anyone except nahoskins can change /8W
    Checking if anyone except nahoskins can change /8Xf
    Checking if anyone except nahoskins can change /9
    Checking if anyone except nahoskins can change /9b
    Checking if anyone except nahoskins can change /9GF4
    Checking if anyone except nahoskins can change /9JC
    Checking if anyone except nahoskins can change /9k
    Checking if anyone except nahoskins can change /9M
    Checking if anyone except nahoskins can change /9S
    Checking if anyone except nahoskins can change /9t
    Checking if anyone except nahoskins can change /9w
    Checking if anyone except nahoskins can change /a
    Checking if anyone except nahoskins can change /_a
    Checking if anyone except nahoskins can change /A
    Checking if anyone except nahoskins can change /A4DVE
    Checking if anyone except nahoskins can change /a5
    Checking if anyone except nahoskins can change /A8
    Checking if anyone except nahoskins can change /A9FL
    Checking if anyone except nahoskins can change /abort
    Checking if anyone except nahoskins can change /ac_adapter
    Checking if anyone except nahoskins can change /access/
    Checking if anyone except nahoskins can change /acpi
    Checking if anyone except nahoskins can change /action
    Checking if anyone except nahoskins can change /adminOverride/key/
    Checking if anyone except nahoskins can change /adminOverride/salt/
    Checking if anyone except nahoskins can change /Ae
    Checking if anyone except nahoskins can change /Ak
    Checking if anyone except nahoskins can change /Alaska
    Checking if anyone except nahoskins can change /Aleutian
    Checking if anyone except nahoskins can change /Algiers
    Checking if anyone except nahoskins can change /ALLOW
    Checking if anyone except nahoskins can change /allowCancel
    Checking if anyone except nahoskins can change /allowMKSGrab/
    Checking if anyone except nahoskins can change /alpha/
    Checking if anyone except nahoskins can change /ambiguous
    Checking if anyone except nahoskins can change /Anadyr
    Checking if anyone except nahoskins can change /answer
    Checking if anyone except nahoskins can change /AOw
    Checking if anyone except nahoskins can change /appHealthMonitor/appState
    Checking if anyone except nahoskins can change /appHealthMonitor/appStatus
    Checking if anyone except nahoskins can change /Aqu
    Checking if anyone except nahoskins can change /aRt
    Checking if anyone except nahoskins can change /Asuncion
    Checking if anyone except nahoskins can change /At
    Checking if anyone except nahoskins can change /Athens
    Checking if anyone except nahoskins can change /Atlantic
    Checking if anyone except nahoskins can change /attemptDnDUngrab/x
    Checking if anyone except nahoskins can change /attemptDnDUngrab/y
    Checking if anyone except nahoskins can change /Auckland
    Checking if anyone except nahoskins can change /audio
    Checking if anyone except nahoskins can change /authentication/type
    Checking if anyone except nahoskins can change /author
    Checking if anyone except nahoskins can change /AWI
    Checking if anyone except nahoskins can change /ay
    Checking if anyone except nahoskins can change /Azores
    Checking if anyone except nahoskins can change /b
    Checking if anyone except nahoskins can change /B
    Checking if anyone except nahoskins can change //B
    Checking if anyone except nahoskins can change /b8
    Checking if anyone except nahoskins can change /Baghdad
    Checking if anyone except nahoskins can change /Baku
    Checking if anyone except nahoskins can change /bandwidthCap
    Checking if anyone except nahoskins can change /base-addr
    Checking if anyone except nahoskins can change /battery
    Checking if anyone except nahoskins can change /bB
    Checking if anyone except nahoskins can change /bd
    Checking if anyone except nahoskins can change /BD/SD/TOM/TC/HH
    Checking if anyone except nahoskins can change /beginRecording/in/encodeEmptyFrames/
    Checking if anyone except nahoskins can change /beginRecording/in/filename/
    Checking if anyone except nahoskins can change /beginRecording/in/quality/
    Checking if anyone except nahoskins can change /beginRecording/out/index/
    Checking if anyone except nahoskins can change /bin
    Checking if anyone except nahoskins can change /bin/sh
    Checking if anyone except nahoskins can change /bit
    Checking if anyone except nahoskins can change /bitmapId/
    Checking if anyone except nahoskins can change /bootDelay
    Checking if anyone except nahoskins can change /bootDeviceClasses
    Checking if anyone except nahoskins can change /bootOrder
    Checking if anyone except nahoskins can change /bootRetryDelay
    Checking if anyone except nahoskins can change /bootRetryEnabled
    Checking if anyone except nahoskins can change /bT
    Checking if anyone except nahoskins can change /build/mts/release/bora-3160714/bora/build/build/buildroot-make-ws/release/ws/vmcore-private/bootstrap/SUBDIRS
    Checking if anyone except nahoskins can change /build/mts/release/bora-3160714/bora/lib/public
    Checking if anyone except nahoskins can change /build/mts/release/bora-3160714/bora/public
    Checking if anyone except nahoskins can change /build/mts/release/bora-3160714/bora/vmcore/bootstrap
    Checking if anyone except nahoskins can change /build/mts/release/bora-3160714/bora/vmcore/decoder
    Checking if anyone except nahoskins can change /build/mts/release/bora-3160714/bora/vmcore/private
    Checking if anyone except nahoskins can change /build/mts/release/bora-3160714/bora/vmcore/public
    Checking if anyone except nahoskins can change /build/mts/release/bora-3160714/bora/vmcore/vmm/bt
    Checking if anyone except nahoskins can change /build/mts/release/bora-3160714/bora/vmcore/vmm/hv/public
    Checking if anyone except nahoskins can change /build/mts/release/bora-3160714/bora/vmcore/vmm/main
    Checking if anyone except nahoskins can change /build/mts/release/bora-3160714/bora/vmcore/vmm/mmu
    Checking if anyone except nahoskins can change /build/mts/release/bora-3160714/bora/vmcore/vmm/private
    Checking if anyone except nahoskins can change /build/mts/release/bora-3160714/bora/vmcore/vmm/public
    Checking if anyone except nahoskins can change /build/mts/release/bora-3160714/bora/vmx/public
    Checking if anyone except nahoskins can change /busy/allowCancel
    Checking if anyone except nahoskins can change /busy/cancel
    Checking if anyone except nahoskins can change /busy/op
    Checking if anyone except nahoskins can change /busy/progress
    Checking if anyone except nahoskins can change /busy/text
    Checking if anyone except nahoskins can change /button/lid
    Checking if anyone except nahoskins can change /bX
    Checking if anyone except nahoskins can change /c
    Checking if anyone except nahoskins can change /C
    Checking if anyone except nahoskins can change /c2
    Checking if anyone except nahoskins can change /C2
    Checking if anyone except nahoskins can change /C5o
    Checking if anyone except nahoskins can change /cache/blockSize
    Checking if anyone except nahoskins can change /cache/consistencyType
    Checking if anyone except nahoskins can change /cache/currentWarningPeriod/
    Checking if anyone except nahoskins can change /cache/enabled
    Checking if anyone except nahoskins can change /cache/expireTime/
    Checking if anyone except nahoskins can change /cache/mode
    Checking if anyone except nahoskins can change /cache/module
    Checking if anyone except nahoskins can change /cache/moduleVersion
    Checking if anyone except nahoskins can change /cache/sizeMax
    Checking if anyone except nahoskins can change /cache/sizeMin
    Checking if anyone except nahoskins can change /cache/sizeShares
    Checking if anyone except nahoskins can change /cache/transferType
    Checking if anyone except nahoskins can change /cache/usingCache/
    Checking if anyone except nahoskins can change /CalComp
    Checking if anyone except nahoskins can change /caps
    Checking if anyone except nahoskins can change /caps/autoUpgrade
    Checking if anyone except nahoskins can change /caps/autoUpgradeVersion
    Checking if anyone except nahoskins can change /caps/changeHost3DAvailabilityHint
    Checking if anyone except nahoskins can change /caps/colorDepthSet
    Checking if anyone except nahoskins can change /caps/desktopAutolock
    Checking if anyone except nahoskins can change /caps/displayGlobalOffset
    Checking if anyone except nahoskins can change /caps/displayTopologyModesSet
    Checking if anyone except nahoskins can change /caps/displayTopologySet
    Checking if anyone except nahoskins can change /caps/ghiFeatures
    Checking if anyone except nahoskins can change /caps/guestTempDirectoryVersion
    Checking if anyone except nahoskins can change /caps/hgfsServerDaemon
    Checking if anyone except nahoskins can change /caps/hgfsServerUpgrader
    Checking if anyone except nahoskins can change /caps/hgfsServerUser
    Checking if anyone except nahoskins can change /caps/hgfsUsabilityFeatures
    Checking if anyone except nahoskins can change /capsLockEnabled
    Checking if anyone except nahoskins can change /caps/minResolution/height
    Checking if anyone except nahoskins can change /caps/minResolution/width
    Checking if anyone except nahoskins can change /caps/openUrl
    Checking if anyone except nahoskins can change /caps/printerSet
    Checking if anyone except nahoskins can change /caps/resolutionServerDaemon
    Checking if anyone except nahoskins can change /caps/resolutionServerUser
    Checking if anyone except nahoskins can change /caps/resolutionSet
    Checking if anyone except nahoskins can change /caps/softExecStateChange
    Checking if anyone except nahoskins can change /caps/unityFeatures
    Checking if anyone except nahoskins can change /caps/upgraderParams
    Checking if anyone except nahoskins can change /Casablanca
    Checking if anyone except nahoskins can change /CAVNEX
    Checking if anyone except nahoskins can change /C-cF
    Checking if anyone except nahoskins can change /CdAU
    Checking if anyone except nahoskins can change /cdrom
    Checking if anyone except nahoskins can change /CD-ROM
    Checking if anyone except nahoskins can change /Central
    Checking if anyone except nahoskins can change /cf
    Checking if anyone except nahoskins can change /cfgState
    Checking if anyone except nahoskins can change /cfgState/new
    Checking if anyone except nahoskins can change /cfgState/val
    Checking if anyone except nahoskins can change /cfgState/val/dev
    Checking if anyone except nahoskins can change /cfgState/val/generationNo
    Checking if anyone except nahoskins can change /cfgState/val/generationNo/
    Checking if anyone except nahoskins can change /cfgState/val/guestIsolation/copyDisable
    Checking if anyone except nahoskins can change /cfgState/val/guestIsolation/hgfsDisable
    Checking if anyone except nahoskins can change /cfgState/val/guestIsolation/pasteDisable
    Checking if anyone except nahoskins can change /cfgState/val/hgfsUsability/linkRootShare
    Checking if anyone except nahoskins can change /cfgState/val/hgfsUsability/mapRootShare
    Checking if anyone except nahoskins can change /cfgState/val/hgfsUsability/redirectShellFolder
    Checking if anyone except nahoskins can change /cfgState/val/maxRemoteDisplayConnections
    Checking if anyone except nahoskins can change /cfgState/val/messageBusTunnelEnabled
    Checking if anyone except nahoskins can change /cfgState/val/migrateHostlog
    Checking if anyone except nahoskins can change /cfgState/val/name
    Checking if anyone except nahoskins can change /cfgState/val/opt/disableAcceleration
    Checking if anyone except nahoskins can change /cfgState/val/opt/logVmSample
    Checking if anyone except nahoskins can change /cfgState/val/opt/memTrimRate
    Checking if anyone except nahoskins can change /cfgState/val/powerType/powerOff
    Checking if anyone except nahoskins can change /cfgState/val/powerType/reset
    Checking if anyone except nahoskins can change /cfgState/val/powerType/suspend
    Checking if anyone except nahoskins can change /cfgState/val/priority
    Checking if anyone except nahoskins can change /cfgState/val/sensorAccelerometer
    Checking if anyone except nahoskins can change /cfgState/val/sensorAmbientLight
    Checking if anyone except nahoskins can change /cfgState/val/sensorCompass
    Checking if anyone except nahoskins can change /cfgState/val/sensorGyrometer
    Checking if anyone except nahoskins can change /cfgState/val/sensorInclinometer
    Checking if anyone except nahoskins can change /cfgState/val/sensorLocation
    Checking if anyone except nahoskins can change /cfgState/val/sensorOrientation
    Checking if anyone except nahoskins can change /cfgState/val/sharedFolder/
    Checking if anyone except nahoskins can change /cfgState/val/snapshot
    Checking if anyone except nahoskins can change /cfgState/val/snapshot/numRollingTiers/
    Checking if anyone except nahoskins can change /cfgState/val/toolPolicies/upgrade
    Checking if anyone except nahoskins can change /cfgState/val/toolsDeployPkg/pendingPackage
    Checking if anyone except nahoskins can change /cfgState/val/toolsDesktopAutolock
    Checking if anyone except nahoskins can change /cfgState/val/unity/showTaskbar
    Checking if anyone except nahoskins can change /cfgState/val/uuid/bios
    Checking if anyone except nahoskins can change /cfgState/val/uuid/location
    Checking if anyone except nahoskins can change /cfgVersion
    Checking if anyone except nahoskins can change /cG
    Checking if anyone except nahoskins can change /Chatham
    Checking if anyone except nahoskins can change /Chip
    Checking if anyone except nahoskins can change /Choibalsan
    Checking if anyone except nahoskins can change /CiE
    Checking if anyone except nahoskins can change /Clarkdale
    Checking if anyone except nahoskins can change /class/memory/changeOnRestart
    Checking if anyone except nahoskins can change /class/memory/sizeMb
    Checking if anyone except nahoskins can change /class/power_supply
    Checking if anyone except nahoskins can change /class/vcpu/num
    Checking if anyone except nahoskins can change /clipRegion/
    Checking if anyone except nahoskins can change /CN
    Checking if anyone except nahoskins can change /Co
    Checking if anyone except nahoskins can change /command
    Checking if anyone except nahoskins can change /command/
    Checking if anyone except nahoskins can change /conff
    Checking if anyone except nahoskins can change /config
    Checking if anyone except nahoskins can change /config/
    Checking if anyone except nahoskins can change /connections/
    Checking if anyone except nahoskins can change /Continental
    Checking if anyone except nahoskins can change /control
    Checking if anyone except nahoskins can change /cookie
    Checking if anyone except nahoskins can change /copypaste/cap/copyPasteGuestVersion
    Checking if anyone except nahoskins can change /copyprotection/identifier/
    Checking if anyone except nahoskins can change /copyprotection/restrictCopies/
    Checking if anyone except nahoskins can change /cpu
    Checking if anyone except nahoskins can change /cpuid_0_eax
    Checking if anyone except nahoskins can change /cpuid_0_eax_amd
    Checking if anyone except nahoskins can change /cpuid_0_ebx
    Checking if anyone except nahoskins can change /cpuid_0_ebx_amd
    Checking if anyone except nahoskins can change /cpuid_0_ecx
    Checking if anyone except nahoskins can change /cpuid_0_ecx_amd
    Checking if anyone except nahoskins can change /cpuid_0_edx
    Checking if anyone except nahoskins can change /cpuid_0_edx_amd
    Checking if anyone except nahoskins can change /cpuid_1_eax
    Checking if anyone except nahoskins can change /cpuid_1_eax_amd
    Checking if anyone except nahoskins can change /cpuid_1_ebx
    Checking if anyone except nahoskins can change /cpuid_1_ebx_amd
    Checking if anyone except nahoskins can change /cpuid_1_ecx
    Checking if anyone except nahoskins can change /cpuid_1_ecx_amd
    Checking if anyone except nahoskins can change /cpuid_1_edx
    Checking if anyone except nahoskins can change /cpuid_1_edx_amd
    Checking if anyone except nahoskins can change /cpuid_80_eax
    Checking if anyone except nahoskins can change /cpuid_80_eax_amd
    Checking if anyone except nahoskins can change /cpuid_80_ebx
    Checking if anyone except nahoskins can change /cpuid_80_ebx_amd
    Checking if anyone except nahoskins can change /cpuid_80_ecx
    Checking if anyone except nahoskins can change /cpuid_80_ecx_amd
    Checking if anyone except nahoskins can change /cpuid_80_edx
    Checking if anyone except nahoskins can change /cpuid_80_edx_amd
    Checking if anyone except nahoskins can change /cpuid_81_eax
    Checking if anyone except nahoskins can change /cpuid_81_eax_amd
    Checking if anyone except nahoskins can change /cpuid_81_ebx
    Checking if anyone except nahoskins can change /cpuid_81_ebx_amd
    Checking if anyone except nahoskins can change /cpuid_81_ecx
    Checking if anyone except nahoskins can change /cpuid_81_ecx_amd
    Checking if anyone except nahoskins can change /cpuid_81_edx
    Checking if anyone except nahoskins can change /cpuid_81_edx_amd
    Checking if anyone except nahoskins can change /cpuid_88_eax
    Checking if anyone except nahoskins can change /cpuid_88_eax_amd
    Checking if anyone except nahoskins can change /cpuid_88_ebx
    Checking if anyone except nahoskins can change /cpuid_88_ebx_amd
    Checking if anyone except nahoskins can change /cpuid_88_ecx
    Checking if anyone except nahoskins can change /cpuid_88_ecx_amd
    Checking if anyone except nahoskins can change /cpuid_88_edx
    Checking if anyone except nahoskins can change /cpuid_88_edx_amd
    Checking if anyone except nahoskins can change /create
    Checking if anyone except nahoskins can change /ctG
    Checking if anyone except nahoskins can change /Cuiaba
    Checking if anyone except nahoskins can change /cursorLocked
    Checking if anyone except nahoskins can change /custom/vmnet
    Checking if anyone except nahoskins can change /d
    Checking if anyone except nahoskins can change /D
    Checking if anyone except nahoskins can change /D0
    Checking if anyone except nahoskins can change /D3
    Checking if anyone except nahoskins can change /D9d
    Checking if anyone except nahoskins can change /D9D
    Checking if anyone except nahoskins can change /db/connection
    Checking if anyone except nahoskins can change /Dcc
    Checking if anyone except nahoskins can change /deleteMH
    Checking if anyone except nahoskins can change /dest/hostWindow/surface/
    Checking if anyone except nahoskins can change /dest/hostWindow/window/
    Checking if anyone except nahoskins can change /dev/
    Checking if anyone except nahoskins can change /dev/cdrom
    Checking if anyone except nahoskins can change /dev/disk/by-id
    Checking if anyone except nahoskins can change /dev/disk/by-id/dm-name-
    Checking if anyone except nahoskins can change /dev/dsp
    Checking if anyone except nahoskins can change /dev/fd0
    Checking if anyone except nahoskins can change /dev/fd1
    Checking if anyone except nahoskins can change /dev/fd2
    Checking if anyone except nahoskins can change /dev/fd3
    Checking if anyone except nahoskins can change /dev/hecH
    Checking if anyone except nahoskins can change /device/autodetect
    Checking if anyone except nahoskins can change /device/bidirectional
    Checking if anyone except nahoskins can change /device/clientDevice
    Checking if anyone except nahoskins can change /device/exclusive
    Checking if anyone except nahoskins can change /device/hostdev
    Checking if anyone except nahoskins can change /device/raw
    Checking if anyone except nahoskins can change /device/size
    Checking if anyone except nahoskins can change /device/type
    Checking if anyone except nahoskins can change /dev/lp0
    Checking if anyone except nahoskins can change /dev/lp1
    Checking if anyone except nahoskins can change /dev/lp2
    Checking if anyone except nahoskins can change /dev/lp3
    Checking if anyone except nahoskins can change /dev/mapper/
    Checking if anyone except nahoskins can change /dev/mem
    Checking if anyone except nahoskins can change /dev/mixer
    Checking if anyone except nahoskins can change /dev/null
[UPC004] WARNING: /usr/lib/vmware/bin/vmware-vmx is currently running as nahoskins. /usr/lib/vmware/bin/vmware-vmx contains the string /dev/null. World write is set for /dev/null
    Checking if anyone except nahoskins can change /dev/parport0
    Checking if anyone except nahoskins can change /dev/parport1
    Checking if anyone except nahoskins can change /dev/parport2
    Checking if anyone except nahoskins can change /dev/parport3
    Checking if anyone except nahoskins can change /dev/sg
    Checking if anyone except nahoskins can change /dev/st
    Checking if anyone except nahoskins can change /dev/urandom
[UPC004] WARNING: /usr/lib/vmware/bin/vmware-vmx is currently running as nahoskins. /usr/lib/vmware/bin/vmware-vmx contains the string /dev/urandom. World write is set for /dev/urandom
    Checking if anyone except nahoskins can change /dev/vmci
[UPC004] WARNING: /usr/lib/vmware/bin/vmware-vmx is currently running as nahoskins. /usr/lib/vmware/bin/vmware-vmx contains the string /dev/vmci. World write is set for /dev/vmci
    Checking if anyone except nahoskins can change /dev/vmmon
    Checking if anyone except nahoskins can change /dev/vmnet
    Checking if anyone except nahoskins can change /dev/vmnet0
    Checking if anyone except nahoskins can change /dev/vmnet1
    Checking if anyone except nahoskins can change /dev/vmnet8
    Checking if anyone except nahoskins can change /dev/vsock
[UPC004] WARNING: /usr/lib/vmware/bin/vmware-vmx is currently running as nahoskins. /usr/lib/vmware/bin/vmware-vmx contains the string /dev/vsock. World write is set for /dev/vsock
    Checking if anyone except nahoskins can change /dH
    Checking if anyone except nahoskins can change /disable
    Checking if anyone except nahoskins can change /disconnect
    Checking if anyone except nahoskins can change /disk
    Checking if anyone except nahoskins can change //Disk_Parameters
    Checking if anyone except nahoskins can change /dL
    Checking if anyone except nahoskins can change /DM
    Checking if anyone except nahoskins can change /dnd/cap/dndEnable
    Checking if anyone except nahoskins can change /dnd/cap/dndGuestVersion
    Checking if anyone except nahoskins can change /dnd/cap/ghCapable
    Checking if anyone except nahoskins can change /dnd/cap/guestCapable
    Checking if anyone except nahoskins can change /dnd/cap/hostCapable
    Checking if anyone except nahoskins can change /dnd/fileTransferring
    Checking if anyone except nahoskins can change /dnd/gh/blockRoot
    Checking if anyone except nahoskins can change /done/warningsPosted
    Checking if anyone except nahoskins can change /dotdot
    Checking if anyone except nahoskins can change /Drain
    Checking if anyone except nahoskins can change /drop
    Checking if anyone except nahoskins can change /DTY
    Checking if anyone except nahoskins can change /Dublin
    Checking if anyone except nahoskins can change /Dumping
    Checking if anyone except nahoskins can change /dyh
    Checking if anyone except nahoskins can change /e
    Checking if anyone except nahoskins can change /E
    Checking if anyone except nahoskins can change /E1
    Checking if anyone except nahoskins can change /e8
    Checking if anyone except nahoskins can change /eA
    Checking if anyone except nahoskins can change /East
    Checking if anyone except nahoskins can change /EasterIsland
    Checking if anyone except nahoskins can change /Eastern
    Checking if anyone except nahoskins can change /eatKeys
    Checking if anyone except nahoskins can change /ED
    Checking if anyone except nahoskins can change /EG
    Checking if anyone except nahoskins can change /eK
    Checking if anyone except nahoskins can change /ekr4K9t
    Checking if anyone except nahoskins can change /el
    Checking if anyone except nahoskins can change /El_Aaiun
    Checking if anyone except nahoskins can change /em
    Checking if anyone except nahoskins can change /eN
    Checking if anyone except nahoskins can change /enable
    Checking if anyone except nahoskins can change /enabled
    Checking if anyone except nahoskins can change /enableMouse/
    Checking if anyone except nahoskins can change /ENCLU
    Checking if anyone except nahoskins can change /endRecording/in/index/
    Checking if anyone except nahoskins can change /EN/EX
    Checking if anyone except nahoskins can change /eo
    Checking if anyone except nahoskins can change /ep
    Checking if anyone except nahoskins can change /EPT
    Checking if anyone except nahoskins can change /error/errCode
    Checking if anyone except nahoskins can change /error/errCode/
    Checking if anyone except nahoskins can change /error/errMsg
    Checking if anyone except nahoskins can change /error/errMsg/
    Checking if anyone except nahoskins can change /error/id
    Checking if anyone except nahoskins can change /error/text
    Checking if anyone except nahoskins can change /esp0
    Checking if anyone except nahoskins can change /ESXi
    Checking if anyone except nahoskins can change /etc/annvix-release
    Checking if anyone except nahoskins can change /etc/arch-release
    Checking if anyone except nahoskins can change /etc/arklinux-release
    Checking if anyone except nahoskins can change /etc/aurox-release
    Checking if anyone except nahoskins can change /etc/blackcat-release
    Checking if anyone except nahoskins can change /etc/cobalt-release
    Checking if anyone except nahoskins can change /etc/conectiva-release
    Checking if anyone except nahoskins can change /etc/debian_release
    Checking if anyone except nahoskins can change /etc/debian_version
    Checking if anyone except nahoskins can change /etc/e-smith-release
    Checking if anyone except nahoskins can change /etc/fedora-release
    Checking if anyone except nahoskins can change /etc/gentoo-release
    Checking if anyone except nahoskins can change /etc/immunix-release
    Checking if anyone except nahoskins can change /etc/knoppix_version
    Checking if anyone except nahoskins can change /etc/lfs-release
    Checking if anyone except nahoskins can change /etc/linuxppc-release
    Checking if anyone except nahoskins can change /etc/localtime
    Checking if anyone except nahoskins can change /etc/lsb-release
    Checking if anyone except nahoskins can change /etc/mandrakelinux-release
    Checking if anyone except nahoskins can change /etc/mandrake-release
    Checking if anyone except nahoskins can change /etc/mandriva-release
    Checking if anyone except nahoskins can change /etc/mklinux-release
    Checking if anyone except nahoskins can change /etc/mtab
    Checking if anyone except nahoskins can change /etc/nld-release
    Checking if anyone except nahoskins can change /etc/novell-release
    Checking if anyone except nahoskins can change /etc/oracle-release
    Checking if anyone except nahoskins can change /etc/pki/tls
    Checking if anyone except nahoskins can change /etc/pld-release
    Checking if anyone except nahoskins can change /etc/redhat-release
    Checking if anyone except nahoskins can change /etc/redhat_version
    Checking if anyone except nahoskins can change /etc/release
    Checking if anyone except nahoskins can change /etc/slackware-release
    Checking if anyone except nahoskins can change /etc/slackware-version
    Checking if anyone except nahoskins can change /etc/sles-release
    Checking if anyone except nahoskins can change /etc/ssl/certs
    Checking if anyone except nahoskins can change /etc/sun-release
    Checking if anyone except nahoskins can change /etc/SuSE-release
    Checking if anyone except nahoskins can change /etc/tinysofa-release
    Checking if anyone except nahoskins can change /etc/turbolinux-release
    Checking if anyone except nahoskins can change /etc/ultrapenguin-release
    Checking if anyone except nahoskins can change /etc/UnitedLinux-release
    Checking if anyone except nahoskins can change /etc/va-release
    Checking if anyone except nahoskins can change /etc/vmware
    Checking if anyone except nahoskins can change /etc/vmware/config
    Checking if anyone except nahoskins can change /etc/vmware/not_configured
    Checking if anyone except nahoskins can change /etc/vmwH
    Checking if anyone except nahoskins can change /etc/yellowdog-release
    Checking if anyone except nahoskins can change /Eucla
    Checking if anyone except nahoskins can change /evql
    Checking if anyone except nahoskins can change /execState/new
    Checking if anyone except nahoskins can change /execState/new/
    Checking if anyone except nahoskins can change /execState/val
    Checking if anyone except nahoskins can change /expiration/activationTime/
    Checking if anyone except nahoskins can change /expiration/currentTime/
    Checking if anyone except nahoskins can change /expiration/expireText/
    Checking if anyone except nahoskins can change /expiration/validFrom/
    Checking if anyone except nahoskins can change /expiration/validTill/
    Checking if anyone except nahoskins can change /expiration/warningText/
    Checking if anyone except nahoskins can change /expiration/warningTime/
    Checking if anyone except nahoskins can change /eY
    Checking if anyone except nahoskins can change /EzI
    Checking if anyone except nahoskins can change /f
    Checking if anyone except nahoskins can change /-f_
    Checking if anyone except nahoskins can change /f_
    Checking if anyone except nahoskins can change /F
    Checking if anyone except nahoskins can change /f1
    Checking if anyone except nahoskins can change /FD_
    Checking if anyone except nahoskins can change /fE
    Checking if anyone except nahoskins can change /fence/event/
    Checking if anyone except nahoskins can change /fence/request/
    Checking if anyone except nahoskins can change /FG
    Checking if anyone except nahoskins can change /file/filePath
    Checking if anyone except nahoskins can change /file/flat
    Checking if anyone except nahoskins can change /fileName
    Checking if anyone except nahoskins can change /firmware
    Checking if anyone except nahoskins can change /flags/isRendering/
    Checking if anyone except nahoskins can change /flat/vmfs
    Checking if anyone except nahoskins can change /floppy
    Checking if anyone except nahoskins can change /floppy/ix
    Checking if anyone except nahoskins can change /fMX
    Checking if anyone except nahoskins can change /_fN
    Checking if anyone except nahoskins can change /fo
    Checking if anyone except nahoskins can change /forceEncryptionPasswordChangeOnMove/
    Checking if anyone except nahoskins can change /forceSetupOnce
    Checking if anyone except nahoskins can change /Fp
    Checking if anyone except nahoskins can change /fR
    Checking if anyone except nahoskins can change //FRh
    Checking if anyone except nahoskins can change /from
    Checking if anyone except nahoskins can change /FS
    Checking if anyone except nahoskins can change /fullscreenHint/
    Checking if anyone except nahoskins can change /fZ
    Checking if anyone except nahoskins can change /g
    Checking if anyone except nahoskins can change /-_g
    Checking if anyone except nahoskins can change /G
    Checking if anyone except nahoskins can change /G5
    Checking if anyone except nahoskins can change /Geometry
    Checking if anyone except nahoskins can change /getScreenshot/in/multiMonitor/
    Checking if anyone except nahoskins can change /ghi/allowCopyPaste/
    Checking if anyone except nahoskins can change /ghi/allowDragDrop/
    Checking if anyone except nahoskins can change /ghi/allowFolderSharing/
    Checking if anyone except nahoskins can change /ghIntegration
    Checking if anyone except nahoskins can change /ghIntegration/hostShellActions
    Checking if anyone except nahoskins can change /ghIntegration/launchMenu
    Checking if anyone except nahoskins can change /ghIntegration/protocolHandlers
    Checking if anyone except nahoskins can change /ghIntegration/trashFolder/empty
    Checking if anyone except nahoskins can change /GivB
    Checking if anyone except nahoskins can change /gj
    Checking if anyone except nahoskins can change /Gk6
    Checking if anyone except nahoskins can change /GN
    Checking if anyone except nahoskins can change /Godthab
    Checking if anyone except nahoskins can change /gosInstalledStatus
    Checking if anyone except nahoskins can change /GQZ
    Checking if anyone except nahoskins can change /grabRequest/in/motionGrab
    Checking if anyone except nahoskins can change /grabRequest/in/windowId
    Checking if anyone except nahoskins can change /grabState/val
    Checking if anyone except nahoskins can change /Greyhound
    Checking if anyone except nahoskins can change /GSg
    Checking if anyone except nahoskins can change /gStatus
    Checking if anyone except nahoskins can change /GT
    Checking if anyone except nahoskins can change /Guatemala
    Checking if anyone except nahoskins can change /guestHints/fullscreen
    Checking if anyone except nahoskins can change /guestInfo
    Checking if anyone except nahoskins can change /guestInfo/config
    Checking if anyone except nahoskins can change /guestInfo/config/
    Checking if anyone except nahoskins can change /guestInfo/config/nicInfo
    Checking if anyone except nahoskins can change /guestInfo/config/nicInfo/array
    Checking if anyone except nahoskins can change /guestInfo/config/nicInfo/xdr
    Checking if anyone except nahoskins can change /guestInfo/config/osName
    Checking if anyone except nahoskins can change /guestInfo/config/toolsVersion
    Checking if anyone except nahoskins can change /guestInfo/stats/
    Checking if anyone except nahoskins can change /guestInfo/stats/uptime
    Checking if anyone except nahoskins can change /guestInfo/toolsManifestInfo/dataBuffer
    Checking if anyone except nahoskins can change /guestInfo/toolsManifestInfo/dataSize
    Checking if anyone except nahoskins can change /guestInfo/toolsManifestInfo/hostManifestCacheDir
    Checking if anyone except nahoskins can change /guestInfo/toolsManifestInfo/onInstallEvent
    Checking if anyone except nahoskins can change /guestInfo/toolsManifestInfo/vmCfgPath
    Checking if anyone except nahoskins can change /guestInfo/toolsManifestInfo/vmToolsStatus
    Checking if anyone except nahoskins can change /guestInfo/toolsUpdateCounter
    Checking if anyone except nahoskins can change /guestTools
    Checking if anyone except nahoskins can change /guestTools/currentStatus/guestConfDirectory
    Checking if anyone except nahoskins can change /guestTools/currentStatus/guestTempDirectory
    Checking if anyone except nahoskins can change /guestTools/currentStatus/hgfsEnabled
    Checking if anyone except nahoskins can change /guestTools/currentStatus/unityActive
    Checking if anyone except nahoskins can change /guestTools/customPath
    Checking if anyone except nahoskins can change /guestTools/deployPkgState
    Checking if anyone except nahoskins can change /guestTools/installerActive
    Checking if anyone except nahoskins can change /guestTools/installError
    Checking if anyone except nahoskins can change /guestTools/installState/new
    Checking if anyone except nahoskins can change /guestTools/lastInstallStatus
    Checking if anyone except nahoskins can change /guestTools/runningStatus
    Checking if anyone except nahoskins can change /guestTools/toolsAppsRunning/
    Checking if anyone except nahoskins can change /guestTools/vmsupport/gStatus
    Checking if anyone except nahoskins can change /guestTools/vmsupport/hgCmd
    Checking if anyone except nahoskins can change /guestTopologyLimits
    Checking if anyone except nahoskins can change /gv
    Checking if anyone except nahoskins can change /gW
    Checking if anyone except nahoskins can change /G_w
    Checking if anyone except nahoskins can change /GY8
    Checking if anyone except nahoskins can change /h
    Checking if anyone except nahoskins can change /-h
    Checking if anyone except nahoskins can change /H
    Checking if anyone except nahoskins can change /H5Rb
    Checking if anyone except nahoskins can change /H9
    Checking if anyone except nahoskins can change /H9-
    Checking if anyone except nahoskins can change /H9k
    Checking if anyone except nahoskins can change /hardware
    Checking if anyone except nahoskins can change /Harpertown
    Checking if anyone except nahoskins can change /hasHostOrigin/
    Checking if anyone except nahoskins can change /hasRoot/
    Checking if anyone except nahoskins can change /Havana
    Checking if anyone except nahoskins can change /Havendale
    Checking if anyone except nahoskins can change /Hc
    Checking if anyone except nahoskins can change /HcD
    Checking if anyone except nahoskins can change /hddOrder
    Checking if anyone except nahoskins can change /height
    Checking if anyone except nahoskins can change /height/
    Checking if anyone except nahoskins can change /Hesso
    Checking if anyone except nahoskins can change /hH
    Checking if anyone except nahoskins can change /Hi
    Checking if anyone except nahoskins can change /HJ0
    Checking if anyone except nahoskins can change /hkf0
    Checking if anyone except nahoskins can change /host
    Checking if anyone except nahoskins can change /hostCDROMNumber
    Checking if anyone except nahoskins can change /hostOrigin/x/
    Checking if anyone except nahoskins can change /hostOrigin/y/
    Checking if anyone except nahoskins can change /hostPublishDirectory
    Checking if anyone except nahoskins can change /hostWindow/generation/
    Checking if anyone except nahoskins can change /hostWindow/height/
    Checking if anyone except nahoskins can change /hostWindow/surface/
    Checking if anyone except nahoskins can change /hostWindow/width/
    Checking if anyone except nahoskins can change /hotKeyPrefix
    Checking if anyone except nahoskins can change /Hovd
    Checking if anyone except nahoskins can change /hScY
    Checking if anyone except nahoskins can change /html
    Checking if anyone except nahoskins can change /hw
    Checking if anyone except nahoskins can change /Hw
    Checking if anyone except nahoskins can change /hwVersion
    Checking if anyone except nahoskins can change /i
    Checking if anyone except nahoskins can change /I
    Checking if anyone except nahoskins can change /_I
    Checking if anyone except nahoskins can change /I5
    Checking if anyone except nahoskins can change /I9
    Checking if anyone except nahoskins can change /icu
    Checking if anyone except nahoskins can change /id
    Checking if anyone except nahoskins can change /ideDev
    Checking if anyone except nahoskins can change /ideDev/ctlrIx
    Checking if anyone except nahoskins can change /ideDev/ix
    Checking if anyone except nahoskins can change /iDU
    Checking if anyone except nahoskins can change /ifx
    Checking if anyone except nahoskins can change //Iix
    Checking if anyone except nahoskins can change /image/filePath
    Checking if anyone except nahoskins can change /image/readonly
    Checking if anyone except nahoskins can change /in
    Checking if anyone except nahoskins can change /in/a
    Checking if anyone except nahoskins can change /in/action
    Checking if anyone except nahoskins can change /in/adapterNum
    Checking if anyone except nahoskins can change /in/address
    Checking if anyone except nahoskins can change /in/addressType
    Checking if anyone except nahoskins can change /in/allowGuestControl
    Checking if anyone except nahoskins can change /in/allowHWProvider
    Checking if anyone except nahoskins can change /in/altitude
    Checking if anyone except nahoskins can change /in/annotation
    Checking if anyone except nahoskins can change /in/arguments
    Checking if anyone except nahoskins can change /in/authBlob
    Checking if anyone except nahoskins can change /in/autoDetect
    Checking if anyone except nahoskins can change /in/b
    Checking if anyone except nahoskins can change /in/backingPath
    Checking if anyone except nahoskins can change /in/backingPathName
    Checking if anyone except nahoskins can change /in/backingPathNetProxy
    Checking if anyone except nahoskins can change /in/backingPropBlob
    Checking if anyone except nahoskins can change /in/backingType
    Checking if anyone except nahoskins can change /in/bandwidthCap
    Checking if anyone except nahoskins can change /in/batchID
    Checking if anyone except nahoskins can change /in/bidirectional
    Checking if anyone except nahoskins can change /in/blobValue
    Checking if anyone except nahoskins can change /in/bsdName
    Checking if anyone except nahoskins can change /in/buf
    Checking if anyone except nahoskins can change /in/busSpeed
    Checking if anyone except nahoskins can change /in/busType
    Checking if anyone except nahoskins can change /in/c
    Checking if anyone except nahoskins can change /in/cdrom
    Checking if anyone except nahoskins can change /in/choice
    Checking if anyone except nahoskins can change /in/classType
    Checking if anyone except nahoskins can change /in/clearAuto
    Checking if anyone except nahoskins can change /in/clientDevice
    Checking if anyone except nahoskins can change /in/clientFlags
    Checking if anyone except nahoskins can change /in/cmdline
    Checking if anyone except nahoskins can change /incoming
    Checking if anyone except nahoskins can change /incoming/millirate
    Checking if anyone except nahoskins can change /incoming/numPackets
    Checking if anyone except nahoskins can change /in/comment
    Checking if anyone except nahoskins can change /in/compensatedMagneticNorth
    Checking if anyone except nahoskins can change /in/connectionType
    Checking if anyone except nahoskins can change /in/connectOp
    Checking if anyone except nahoskins can change /in/controller
    Checking if anyone except nahoskins can change /in/count
    Checking if anyone except nahoskins can change /in/createParentDirectories
    Checking if anyone except nahoskins can change /in/ctkEnabled
    Checking if anyone except nahoskins can change /in/d
    Checking if anyone except nahoskins can change /in/data
    Checking if anyone except nahoskins can change /in/dataBlob
    Checking if anyone except nahoskins can change /in/dataType
    Checking if anyone except nahoskins can change /in/delay
    Checking if anyone except nahoskins can change /in/deleteChildren
    Checking if anyone except nahoskins can change /in/description
    Checking if anyone except nahoskins can change /in/device
    Checking if anyone except nahoskins can change /in/deviceId
    Checking if anyone except nahoskins can change /in/deviceLabel
    Checking if anyone except nahoskins can change /in/devicePropBlob
    Checking if anyone except nahoskins can change /in/deviceType
    Checking if anyone except nahoskins can change /in/digest
    Checking if anyone except nahoskins can change /in/directory
    Checking if anyone except nahoskins can change /in/disabled
    Checking if anyone except nahoskins can change /in/displayName
    Checking if anyone except nahoskins can change /in/displayRectsBlob
    Checking if anyone except nahoskins can change /in/dstwid
    Checking if anyone except nahoskins can change /in/dvsConnectionId
    Checking if anyone except nahoskins can change /in/dvsPortgroupId
    Checking if anyone except nahoskins can change /in/dvsPortId
    Checking if anyone except nahoskins can change /in/dvsSwitchId
    Checking if anyone except nahoskins can change /in/emulation
    Checking if anyone except nahoskins can change /in/enable
    Checking if anyone except nahoskins can change /in/enabled
    Checking if anyone except nahoskins can change /in/envBlob
    Checking if anyone except nahoskins can change /in/eventID
    Checking if anyone except nahoskins can change /in/exclusiveAccess
    Checking if anyone except nahoskins can change /in/execScripts
    Checking if anyone except nahoskins can change /in/expandStrings
    Checking if anyone except nahoskins can change /in/extension
    Checking if anyone except nahoskins can change /in/externalId
    Checking if anyone except nahoskins can change /in/features
    Checking if anyone except nahoskins can change /in/fileName
    Checking if anyone except nahoskins can change /in/filterEnable
    Checking if anyone except nahoskins can change /in/filters
    Checking if anyone except nahoskins can change /in/firmwareType
    Checking if anyone except nahoskins can change /in/force
    Checking if anyone except nahoskins can change /in/forRevert
    Checking if anyone except nahoskins can change /in/fromPathName
    Checking if anyone except nahoskins can change /in/functions
    Checking if anyone except nahoskins can change /in/guestFileRoot
    Checking if anyone except nahoskins can change /in/guestFileRootSize
    Checking if anyone except nahoskins can change /in/guestWritable
    Checking if anyone except nahoskins can change /in/hbaType
    Checking if anyone except nahoskins can change /in/height
    Checking if anyone except nahoskins can change /in/hidcode
    Checking if anyone except nahoskins can change /in/horizontalAccuracy
    Checking if anyone except nahoskins can change /in/hostDevice
    Checking if anyone except nahoskins can change /in/hostStagingDir
    Checking if anyone except nahoskins can change /in/id
    Checking if anyone except nahoskins can change /in/identifier
    Checking if anyone except nahoskins can change /in/illuminance
    Checking if anyone except nahoskins can change /in/index
    Checking if anyone except nahoskins can change /in/isCommit
    Checking if anyone except nahoskins can change /in/isDnD
    Checking if anyone except nahoskins can change /in/isInteresting
    Checking if anyone except nahoskins can change /in/isMapCert
    Checking if anyone except nahoskins can change /in/isOverwrite
    Checking if anyone except nahoskins can change /in/isUpgrade
    Checking if anyone except nahoskins can change /in/isVolatile
    Checking if anyone except nahoskins can change /initiated/customPath
    Checking if anyone except nahoskins can change /initiated/prompt
    Checking if anyone except nahoskins can change /injectKeys/in/sequence
    Checking if anyone except nahoskins can change /in/key
    Checking if anyone except nahoskins can change /in/keys
    Checking if anyone except nahoskins can change /in/keyValueBlob
    Checking if anyone except nahoskins can change /in/label
    Checking if anyone except nahoskins can change /in/latitude
    Checking if anyone except nahoskins can change /in/lazy
    Checking if anyone except nahoskins can change /in/length
    Checking if anyone except nahoskins can change /in/level
    Checking if anyone except nahoskins can change /in/limit
    Checking if anyone except nahoskins can change /in/linkStatePropagationEnable
    Checking if anyone except nahoskins can change /in/localFiles
    Checking if anyone except nahoskins can change /in/localSize
    Checking if anyone except nahoskins can change /in/longitude
    Checking if anyone except nahoskins can change /in/matchPattern
    Checking if anyone except nahoskins can change /in/maxDevices
    Checking if anyone except nahoskins can change /in/maxDurationSeconds
    Checking if anyone except nahoskins can change /in/maxEventFromGuest
    Checking if anyone except nahoskins can change /in/maxEventToGuest
    Checking if anyone except nahoskins can change /in/maxResults
    Checking if anyone except nahoskins can change /in/maxSize
    Checking if anyone except nahoskins can change /in/maxWaitTime
    Checking if anyone except nahoskins can change /in/memorySize
    Checking if anyone except nahoskins can change /in/mid
    Checking if anyone except nahoskins can change /in/mode
    Checking if anyone except nahoskins can change /in/modifiers
    Checking if anyone except nahoskins can change /in/module
    Checking if anyone except nahoskins can change /in/monitor
    Checking if anyone except nahoskins can change /in/name
    Checking if anyone except nahoskins can change /in/netEndPoint
    Checking if anyone except nahoskins can change /in/networkBootProtocol
    Checking if anyone except nahoskins can change /in/networkId
    Checking if anyone except nahoskins can change /in/networkName
    Checking if anyone except nahoskins can change /in/networkType
    Checking if anyone except nahoskins can change /in/newDoubleValue
    Checking if anyone except nahoskins can change /in/newEnumValue
    Checking if anyone except nahoskins can change /in/newInt64Value
    Checking if anyone except nahoskins can change /in/newMemSizeMB
    Checking if anyone except nahoskins can change /in/newNumSectors
    Checking if anyone except nahoskins can change /in/newNumVCPUs
    Checking if anyone except nahoskins can change /in/newStringValue
    Checking if anyone except nahoskins can change /in/nextQuery
    Checking if anyone except nahoskins can change /in/node
    Checking if anyone except nahoskins can change /in/notificationTime
    Checking if anyone except nahoskins can change /in/nsType
    Checking if anyone except nahoskins can change /in/numEnvVar
    Checking if anyone except nahoskins can change /in/numEnvVars
    Checking if anyone except nahoskins can change /in/offset
    Checking if anyone except nahoskins can change /in/operation
    Checking if anyone except nahoskins can change /in/options
    Checking if anyone except nahoskins can change /in/opType
    Checking if anyone except nahoskins can change /in/order
    Checking if anyone except nahoskins can change /in/overWrite
    Checking if anyone except nahoskins can change /in/parent
    Checking if anyone except nahoskins can change /in/path
    Checking if anyone except nahoskins can change /in/pathname
    Checking if anyone except nahoskins can change /in/pathName
    Checking if anyone except nahoskins can change /in/paused
    Checking if anyone except nahoskins can change /in/pciSlotNumber
    Checking if anyone except nahoskins can change /in/pemCert
    Checking if anyone except nahoskins can change /in/pid
    Checking if anyone except nahoskins can change /in/pidBlob
    Checking if anyone except nahoskins can change /in/pipeEndPoint
    Checking if anyone except nahoskins can change /in/policy
    Checking if anyone except nahoskins can change /in/port
    Checking if anyone except nahoskins can change /in/prefix
    Checking if anyone except nahoskins can change /in/present
    Checking if anyone except nahoskins can change /in/progName
    Checking if anyone except nahoskins can change /inProgress/current/
    Checking if anyone except nahoskins can change /inProgress/maximum/
    Checking if anyone except nahoskins can change /inProgress/percentDone
    Checking if anyone except nahoskins can change /inProgress/percentDone/
    Checking if anyone except nahoskins can change /inProgress/statusMessage
    Checking if anyone except nahoskins can change /in/propBlob
    Checking if anyone except nahoskins can change /in/pvnID
    Checking if anyone except nahoskins can change /in/quiesceApps
    Checking if anyone except nahoskins can change /in/quiesced
    Checking if anyone except nahoskins can change /in/quiesceFS
    Checking if anyone except nahoskins can change /in/readOnly
    Checking if anyone except nahoskins can change /in/recursive
    Checking if anyone except nahoskins can change /in/regPath
    Checking if anyone except nahoskins can change /in/remoteFiles
    Checking if anyone except nahoskins can change /in/remoteSize
    Checking if anyone except nahoskins can change /in/reqPath
    Checking if anyone except nahoskins can change /in/reservation
    Checking if anyone except nahoskins can change /in/resultsSeen
    Checking if anyone except nahoskins can change /in/rxbwLimit
    Checking if anyone except nahoskins can change /in/rxfiDroprate
    Checking if anyone except nahoskins can change /in/rxfiDropsize
    Checking if anyone except nahoskins can change /in/saveDeviceState
    Checking if anyone except nahoskins can change /in/scriptArg
    Checking if anyone except nahoskins can change /in/seq
    Checking if anyone except nahoskins can change /in/sequence
    Checking if anyone except nahoskins can change /in/sessionID
    Checking if anyone except nahoskins can change /in/shares
    Checking if anyone except nahoskins can change /in/sharing
    Checking if anyone except nahoskins can change /in/size
    Checking if anyone except nahoskins can change /in/sizeMB
    Checking if anyone except nahoskins can change /in/snapshotUid
    Checking if anyone except nahoskins can change /in/snapshotUID
    Checking if anyone except nahoskins can change /in/soft
    Checking if anyone except nahoskins can change /in/spec
    Checking if anyone except nahoskins can change /instanceid/
    Checking if anyone except nahoskins can change /in/startConnected
    Checking if anyone except nahoskins can change /in/state
    Checking if anyone except nahoskins can change /in/sticky
    Checking if anyone except nahoskins can change /in/str
    Checking if anyone except nahoskins can change /in/strOpt
    Checking if anyone except nahoskins can change /in/subjectName
    Checking if anyone except nahoskins can change /in/subjectType
    Checking if anyone except nahoskins can change /in/suffix
    Checking if anyone except nahoskins can change /in/synctime
    Checking if anyone except nahoskins can change /in/targetNum
    Checking if anyone except nahoskins can change /in/throughputCap
    Checking if anyone except nahoskins can change /in/timeout
    Checking if anyone except nahoskins can change /in/ToPathName
    Checking if anyone except nahoskins can change /in/tryNoRxLoss
    Checking if anyone except nahoskins can change /in/txbwLimit
    Checking if anyone except nahoskins can change /in/txfiDroprate
    Checking if anyone except nahoskins can change /in/txfiDropsize
    Checking if anyone except nahoskins can change /in/type
    Checking if anyone except nahoskins can change /in/updateLiveData
    Checking if anyone except nahoskins can change /in/uptCompatibilityEnabled
    Checking if anyone except nahoskins can change /in/useCustomizedProgress
    Checking if anyone except nahoskins can change /in/useCustomizedQuestion
    Checking if anyone except nahoskins can change /in/userName
    Checking if anyone except nahoskins can change /in/uuid
    Checking if anyone except nahoskins can change /in/val
    Checking if anyone except nahoskins can change /invalid
    Checking if anyone except nahoskins can change /in/value
    Checking if anyone except nahoskins can change /in/valueName
    Checking if anyone except nahoskins can change /in/vcpuCount
    Checking if anyone except nahoskins can change /in/vcpuid
    Checking if anyone except nahoskins can change /in/vcUUID
    Checking if anyone except nahoskins can change /in/version
    Checking if anyone except nahoskins can change /in/verticalAccuracy
    Checking if anyone except nahoskins can change /in/vflashBlockSize
    Checking if anyone except nahoskins can change /in/vflashCacheMax
    Checking if anyone except nahoskins can change /in/vflashCacheMin
    Checking if anyone except nahoskins can change /in/vflashConsistencyType
    Checking if anyone except nahoskins can change /in/vflashEnabled
    Checking if anyone except nahoskins can change /in/vflashMode
    Checking if anyone except nahoskins can change /in/vflashModule
    Checking if anyone except nahoskins can change /in/vflashShares
    Checking if anyone except nahoskins can change /in/virtualDev
    Checking if anyone except nahoskins can change /in/vmodlWritable
    Checking if anyone except nahoskins can change /in/vmxBuildType
    Checking if anyone except nahoskins can change /in/vnet
    Checking if anyone except nahoskins can change /in/volumeUUID
    Checking if anyone except nahoskins can change /in/wakeOnPcktRcv
    Checking if anyone except nahoskins can change /in/when
    Checking if anyone except nahoskins can change /in/width
    Checking if anyone except nahoskins can change /in/workingDir
    Checking if anyone except nahoskins can change /in/wowBitness
    Checking if anyone except nahoskins can change /in/writeThrough
    Checking if anyone except nahoskins can change /in/x
    Checking if anyone except nahoskins can change /in/y
    Checking if anyone except nahoskins can change /in/yieldOnMsrRead
    Checking if anyone except nahoskins can change /in/z
    Checking if anyone except nahoskins can change /iq_
    Checking if anyone except nahoskins can change /IQ
    Checking if anyone except nahoskins can change /Irkutsk
    Checking if anyone except nahoskins can change /isPrimary/
    Checking if anyone except nahoskins can change /Iter
    Checking if anyone except nahoskins can change /ITRI
    Checking if anyone except nahoskins can change /Iv
    Checking if anyone except nahoskins can change /IX
    Checking if anyone except nahoskins can change /j
    Checking if anyone except nahoskins can change /J
    Checking if anyone except nahoskins can change /j6
    Checking if anyone except nahoskins can change /javascript
    Checking if anyone except nahoskins can change /Jerusalem
    Checking if anyone except nahoskins can change /jH
    Checking if anyone except nahoskins can change /jkDP
    Checking if anyone except nahoskins can change /jm
    Checking if anyone except nahoskins can change /JO8L
    Checking if anyone except nahoskins can change /Job
    Checking if anyone except nahoskins can change /jS
    Checking if anyone except nahoskins can change /jZ
    Checking if anyone except nahoskins can change /k
    Checking if anyone except nahoskins can change /K
    Checking if anyone except nahoskins can change /k2/
    Checking if anyone except nahoskins can change /Kamchatka
    Checking if anyone except nahoskins can change /kblrSendKey/in/down
    Checking if anyone except nahoskins can change /kblrSendKey/in/usageCode
    Checking if anyone except nahoskins can change /kblrSendKey/in/usagePage
    Checking if anyone except nahoskins can change /Kbtek
    Checking if anyone except nahoskins can change /keyboard/eatKeys/
    Checking if anyone except nahoskins can change /keyboard/keyBindings/
    Checking if anyone except nahoskins can change /keyboard/notifyUIEvent
    Checking if anyone except nahoskins can change /keyEvent/modifiers
    Checking if anyone except nahoskins can change /keyEvent/scancode
    Checking if anyone except nahoskins can change /keylist
    Checking if anyone except nahoskins can change /Kg
    Checking if anyone except nahoskins can change /KJ
    Checking if anyone except nahoskins can change /KM
    Checking if anyone except nahoskins can change /kn
    Checking if anyone except nahoskins can change /KQz
    Checking if anyone except nahoskins can change /Krasnoyarsk
    Checking if anyone except nahoskins can change /Ks
    Checking if anyone except nahoskins can change /kVt
    Checking if anyone except nahoskins can change /kvV
    Checking if anyone except nahoskins can change /kyG
    Checking if anyone except nahoskins can change /l
    Checking if anyone except nahoskins can change /L
    Checking if anyone except nahoskins can change /L0
    Checking if anyone except nahoskins can change /l21
    Checking if anyone except nahoskins can change /l3a
    Checking if anyone except nahoskins can change /L4
    Checking if anyone except nahoskins can change /L9
    Checking if anyone except nahoskins can change /Lc
    Checking if anyone except nahoskins can change /LD
    Checking if anyone except nahoskins can change /legacyBootEnabled
    Checking if anyone except nahoskins can change /length
    Checking if anyone except nahoskins can change /lengths
    Checking if anyone except nahoskins can change /licenses
    Checking if anyone except nahoskins can change /limit
    Checking if anyone except nahoskins can change /limitRefreshRate/
    Checking if anyone except nahoskins can change /listeningForConnections/
    Checking if anyone except nahoskins can change /location
    Checking if anyone except nahoskins can change /lockOut
    Checking if anyone except nahoskins can change /logFile
    Checking if anyone except nahoskins can change /logFilename/
    Checking if anyone except nahoskins can change /London
    Checking if anyone except nahoskins can change /Lord_Howe
    Checking if anyone except nahoskins can change /LP
    Checking if anyone except nahoskins can change /Ls
    Checking if anyone except nahoskins can change /Lu
    Checking if anyone except nahoskins can change /lw
    Checking if anyone except nahoskins can change /lY/
    Checking if anyone except nahoskins can change /Lynnfield
    Checking if anyone except nahoskins can change /m
    Checking if anyone except nahoskins can change /M
    Checking if anyone except nahoskins can change /M3/by
    Checking if anyone except nahoskins can change /MA
    Checking if anyone except nahoskins can change /Magadan
    Checking if anyone except nahoskins can change /matchDefault
    Checking if anyone except nahoskins can change /max
    Checking if anyone except nahoskins can change /MBN
    Checking if anyone except nahoskins can change /media
    Checking if anyone except nahoskins can change /memory
    Checking if anyone except nahoskins can change /messages
    Checking if anyone except nahoskins can change /migr1
    Checking if anyone except nahoskins can change /migrateState/lastStatus/
    Checking if anyone except nahoskins can change /migrateState/status/
    Checking if anyone except nahoskins can change /migrH
    Checking if anyone except nahoskins can change /Miquelon
    Checking if anyone except nahoskins can change /MJ
    Checking if anyone except nahoskins can change /Mk59ab61
    Checking if anyone except nahoskins can change /ml
    Checking if anyone except nahoskins can change /Montevideo
    Checking if anyone except nahoskins can change /Moscow
    Checking if anyone except nahoskins can change /Mountain
    Checking if anyone except nahoskins can change /mstat
    Checking if anyone except nahoskins can change /MU
    Checking if anyone except nahoskins can change /mvm/policyState/val/
    Checking if anyone except nahoskins can change /n
    Checking if anyone except nahoskins can change /N
    Checking if anyone except nahoskins can change /_N
    Checking if anyone except nahoskins can change /N/0k
    Checking if anyone except nahoskins can change /N1C
    Checking if anyone except nahoskins can change /nA
    Checking if anyone except nahoskins can change /NAb
    Checking if anyone except nahoskins can change /name
    Checking if anyone except nahoskins can change /nB
    Checking if anyone except nahoskins can change /NBhV
    Checking if anyone except nahoskins can change /nDcB
    Checking if anyone except nahoskins can change /Ne
    Checking if anyone except nahoskins can change /netmH
    Checking if anyone except nahoskins can change /network/endPoint
    Checking if anyone except nahoskins can change /network/tryNoRxLoss
    Checking if anyone except nahoskins can change /network/url
    Checking if anyone except nahoskins can change /network/vspcPath
    Checking if anyone except nahoskins can change /new
    Checking if anyone except nahoskins can change /Newpoint
    Checking if anyone except nahoskins can change /new/status
    Checking if anyone except nahoskins can change /new/status/error
    Checking if anyone except nahoskins can change /NG
    Checking if anyone except nahoskins can change /nic
    Checking if anyone except nahoskins can change /nic/address
    Checking if anyone except nahoskins can change /nic/addressType
    Checking if anyone except nahoskins can change /nic/bandwidthLimitKbps
    Checking if anyone except nahoskins can change /nic/bandwidthLimitKbps/incoming
    Checking if anyone except nahoskins can change /nic/bandwidthLimitKbps/outgoing
    Checking if anyone except nahoskins can change /nic/hostif
    Checking if anyone except nahoskins can change /nic/hostif/pvn/pvnID
    Checking if anyone except nahoskins can change /nic/ix
    Checking if anyone except nahoskins can change /nic/packetLoss
    Checking if anyone except nahoskins can change /nic/packetLoss/incoming/millirate
    Checking if anyone except nahoskins can change /nic/packetLoss/incoming/numPackets
    Checking if anyone except nahoskins can change /nic/packetLoss/outgoing/millirate
    Checking if anyone except nahoskins can change /nic/packetLoss/outgoing/numPackets
    Checking if anyone except nahoskins can change /NL
    Checking if anyone except nahoskins can change /N/M
    Checking if anyone except nahoskins can change /Nocona
    Checking if anyone except nahoskins can change /node
    Checking if anyone except nahoskins can change /no-go
    Checking if anyone except nahoskins can change /non-vmfs
    Checking if anyone except nahoskins can change /notifyUI
    Checking if anyone except nahoskins can change /Novosibirsk
    Checking if anyone except nahoskins can change /NS
    Checking if anyone except nahoskins can change /NTFS
    Checking if anyone except nahoskins can change /numLockEnabled
    Checking if anyone except nahoskins can change /numRollingTiers/
    Checking if anyone except nahoskins can change /Nv
    Checking if anyone except nahoskins can change /nvram
    Checking if anyone except nahoskins can change /nY
    Checking if anyone except nahoskins can change /nZ
    Checking if anyone except nahoskins can change /o
    Checking if anyone except nahoskins can change /O
    Checking if anyone except nahoskins can change /oa3
    Checking if anyone except nahoskins can change /oA9
    Checking if anyone except nahoskins can change /OCQ
    Checking if anyone except nahoskins can change /Oh
    Checking if anyone except nahoskins can change /OJ
    Checking if anyone except nahoskins can change /Omsk
    Checking if anyone except nahoskins can change /oneToOneKeyBindings/
    Checking if anyone except nahoskins can change /open
    Checking if anyone except nahoskins can change /or
    Checking if anyone except nahoskins can change /Or
    Checking if anyone except nahoskins can change /Os
    Checking if anyone except nahoskins can change /out
    Checking if anyone except nahoskins can change /out/data
    Checking if anyone except nahoskins can change /outgoing
    Checking if anyone except nahoskins can change /outgoing/millirate
    Checking if anyone except nahoskins can change /outgoing/numPackets
    Checking if anyone except nahoskins can change /OUTS
    Checking if anyone except nahoskins can change /overwriteQuestion
    Checking if anyone except nahoskins can change /overwriteQuestion/out/answer
    Checking if anyone except nahoskins can change /OY
    Checking if anyone except nahoskins can change /p
    Checking if anyone except nahoskins can change /P
    Checking if anyone except nahoskins can change /_P2
    Checking if anyone except nahoskins can change /p7
    Checking if anyone except nahoskins can change /P8i
    Checking if anyone except nahoskins can change /Pacific
    Checking if anyone except nahoskins can change /pad
    Checking if anyone except nahoskins can change /pages
    Checking if anyone except nahoskins can change /parallel
    Checking if anyone except nahoskins can change /parallel/ix
    Checking if anyone except nahoskins can change /passthru/hostdev
    Checking if anyone except nahoskins can change /password
    Checking if anyone except nahoskins can change /paste
    Checking if anyone except nahoskins can change /pb
    Checking if anyone except nahoskins can change /pciBridge
    Checking if anyone except nahoskins can change /pciBridge/functions
    Checking if anyone except nahoskins can change /pciBridge/ix
    Checking if anyone except nahoskins can change /pciBridge/virtualDev
    Checking if anyone except nahoskins can change /pciPassthru
    Checking if anyone except nahoskins can change /pD
    Checking if anyone except nahoskins can change /pe
    Checking if anyone except nahoskins can change /ph
    Checking if anyone except nahoskins can change /pI
    Checking if anyone except nahoskins can change /pid
    Checking if anyone except nahoskins can change /pipe/endPoint
    Checking if anyone except nahoskins can change /pipe/filePath
    Checking if anyone except nahoskins can change /pipe/tryNoRxLoss
    Checking if anyone except nahoskins can change /Pitcairn
    Checking if anyone except nahoskins can change /pixelScale/
    Checking if anyone except nahoskins can change /plm
    Checking if anyone except nahoskins can change /policyCache/expireText/
    Checking if anyone except nahoskins can change /policyCache/lifetime/
    Checking if anyone except nahoskins can change /policyCache/warningPeriod/
    Checking if anyone except nahoskins can change /policyCache/warningText/
    Checking if anyone except nahoskins can change /policyEffect
    Checking if anyone except nahoskins can change /policyEffect/policyBlocked
    Checking if anyone except nahoskins can change /policyServer/isPolicyServer/
    Checking if anyone except nahoskins can change /policyServer/rootCertificates/
    Checking if anyone except nahoskins can change /policyServer/serverAddress/
    Checking if anyone except nahoskins can change /policyServer/updateFrequency/
    Checking if anyone except nahoskins can change /policyServer/useServer/
    Checking if anyone except nahoskins can change /policyState/val/metadata/status/
    Checking if anyone except nahoskins can change /port
    Checking if anyone except nahoskins can change /present
    Checking if anyone except nahoskins can change /pressed
    Checking if anyone except nahoskins can change /proc
    Checking if anyone except nahoskins can change /proc/asound/version
    Checking if anyone except nahoskins can change /proc/cpuinfo
    Checking if anyone except nahoskins can change /proc/devices
    Checking if anyone except nahoskins can change /proc/fs/vmblock/dev
    Checking if anyone except nahoskins can change /proc/fs/vmblock/mountPoint
    Checking if anyone except nahoskins can change /proc/ide
    Checking if anyone except nahoskins can change /proc/ide/
    Checking if anyone except nahoskins can change /proc/meminfo
    Checking if anyone except nahoskins can change /proc/self/exe
    Checking if anyone except nahoskins can change /proc/self/statm
    Checking if anyone except nahoskins can change /proc/sys/dev/parport
    Checking if anyone except nahoskins can change /proc/sys/dev/parport/parport
    Checking if anyone except nahoskins can change /proc/sys/kernel/core_pattern
    Checking if anyone except nahoskins can change /proc/sys/kernel/core_uses_pid
    Checking if anyone except nahoskins can change /proc/timer_list
    Checking if anyone except nahoskins can change /proc/uptime
    Checking if anyone except nahoskins can change /progress
    Checking if anyone except nahoskins can change /PS
    Checking if anyone except nahoskins can change /pub
    Checking if anyone except nahoskins can change /publishToGuest
    Checking if anyone except nahoskins can change /publishToHost
    Checking if anyone except nahoskins can change /Px
    Checking if anyone except nahoskins can change /q
    Checking if anyone except nahoskins can change /Q
    Checking if anyone except nahoskins can change /Q_
    Checking if anyone except nahoskins can change /Q/
    Checking if anyone except nahoskins can change /q4
    Checking if anyone except nahoskins can change /Qa
    Checking if anyone except nahoskins can change /Qbeq
    Checking if anyone except nahoskins can change /qE
    Checking if anyone except nahoskins can change /qfm
    Checking if anyone except nahoskins can change /QH
    Checking if anyone except nahoskins can change /QI
    Checking if anyone except nahoskins can change /qn
    Checking if anyone except nahoskins can change /Quality
    Checking if anyone except nahoskins can change /queue/rotational
    Checking if anyone except nahoskins can change /qw1V
    Checking if anyone except nahoskins can change /r
    Checking if anyone except nahoskins can change /R
    Checking if anyone except nahoskins can change //r1
    Checking if anyone except nahoskins can change /R4T
    Checking if anyone except nahoskins can change /r5T
    Checking if anyone except nahoskins can change /rawCfgState/new
    Checking if anyone except nahoskins can change /rawCfgState/val
    Checking if anyone except nahoskins can change /READ
    Checking if anyone except nahoskins can change /readOnlyCfg
    Checking if anyone except nahoskins can change /receiving
    Checking if anyone except nahoskins can change /reconfigure
    Checking if anyone except nahoskins can change /rect/bottom/
    Checking if anyone except nahoskins can change /rect/left/
    Checking if anyone except nahoskins can change /rect/right/
    Checking if anyone except nahoskins can change /rect/top/
    Checking if anyone except nahoskins can change /releaseEvent
    Checking if anyone except nahoskins can change /removable/allowGuestConnectionControl
    Checking if anyone except nahoskins can change /removable/startConnected
    Checking if anyone except nahoskins can change /reservation
    Checking if anyone except nahoskins can change /reset
    Checking if anyone except nahoskins can change /resolutionSet/
    Checking if anyone except nahoskins can change /resume
    Checking if anyone except nahoskins can change /RESUME
    Checking if anyone except nahoskins can change /revoked/
    Checking if anyone except nahoskins can change /REZERO
    Checking if anyone except nahoskins can change /RGD
    Checking if anyone except nahoskins can change /rhY
    Checking if anyone except nahoskins can change /rid
    Checking if anyone except nahoskins can change /rj
    Checking if anyone except nahoskins can change /rj/
    Checking if anyone except nahoskins can change /RN
    Checking if anyone except nahoskins can change /rollingTier
    Checking if anyone except nahoskins can change /RT
    Checking if anyone except nahoskins can change /runtimeState/xpMode/active
    Checking if anyone except nahoskins can change /rV
    Checking if anyone except nahoskins can change /Rvd
    Checking if anyone except nahoskins can change /RVI
    Checking if anyone except nahoskins can change /s
    Checking if anyone except nahoskins can change /S
    Checking if anyone except nahoskins can change /s4
    Checking if anyone except nahoskins can change /s6
    Checking if anyone except nahoskins can change /SAHF
    Checking if anyone except nahoskins can change /Sakhalin
    Checking if anyone except nahoskins can change /Samara
    Checking if anyone except nahoskins can change /Saskatchewan
    Checking if anyone except nahoskins can change /sataCtlr
    Checking if anyone except nahoskins can change /sataDev
    Checking if anyone except nahoskins can change /sataDev/ctlrIx
    Checking if anyone except nahoskins can change /sataDev/ix
    Checking if anyone except nahoskins can change /saveAllocMaps
    Checking if anyone except nahoskins can change /saveDeviceState
    Checking if anyone except nahoskins can change /sB1
    Checking if anyone except nahoskins can change /sbin/authd
    Checking if anyone except nahoskins can change /scheduledUpgrade/reason
    Checking if anyone except nahoskins can change /scheduledUpgrade/state
    Checking if anyone except nahoskins can change /scheduledUpgrade/version
    Checking if anyone except nahoskins can change /scheduledUpgrade/when
    Checking if anyone except nahoskins can change /Scoresbysund
    Checking if anyone except nahoskins can change /screen/
    Checking if anyone except nahoskins can change /screenId/
    Checking if anyone except nahoskins can change /scrollLockEnabled
    Checking if anyone except nahoskins can change /scsiCtlr
    Checking if anyone except nahoskins can change /scsiDev
    Checking if anyone except nahoskins can change /scsiDev/ctlrIx
    Checking if anyone except nahoskins can change /scsiDev/ix
    Checking if anyone except nahoskins can change /sec
    Checking if anyone except nahoskins can change /security/keyLocatorCacheRequest
    Checking if anyone except nahoskins can change /sendGuestKeys
    Checking if anyone except nahoskins can change /sendHostKeys
    Checking if anyone except nahoskins can change /sendUnicodeCodePoint/in/timestamp
    Checking if anyone except nahoskins can change /sendUnicodeCodePoint/in/unicodeCodePoint
    Checking if anyone except nahoskins can change /sendUnityMouseEvent/in/button4
    Checking if anyone except nahoskins can change /sendUnityMouseEvent/in/button5
    Checking if anyone except nahoskins can change /sendUnityMouseEvent/in/buttonLeft
    Checking if anyone except nahoskins can change /sendUnityMouseEvent/in/buttonMiddle
    Checking if anyone except nahoskins can change /sendUnityMouseEvent/in/buttonRight
    Checking if anyone except nahoskins can change /sendUnityMouseEvent/in/dhs
    Checking if anyone except nahoskins can change /sendUnityMouseEvent/in/dz
    Checking if anyone except nahoskins can change /sendUnityMouseEvent/in/x
    Checking if anyone except nahoskins can change /sendUnityMouseEvent/in/y
    Checking if anyone except nahoskins can change /sensorAccelerometer/
    Checking if anyone except nahoskins can change /sensorAmbientLight/
    Checking if anyone except nahoskins can change /sensorCompass/
    Checking if anyone except nahoskins can change /sensorGyrometer/
    Checking if anyone except nahoskins can change /sensorInclinometer/
    Checking if anyone except nahoskins can change /sensorLocation/
    Checking if anyone except nahoskins can change /sensorOrientation/
    Checking if anyone except nahoskins can change /Seoul
    Checking if anyone except nahoskins can change /serial
    Checking if anyone except nahoskins can change /serial/ix
    Checking if anyone except nahoskins can change /setCursorGrabAllowed/in/allowed
    Checking if anyone except nahoskins can change /setDisplayTopology/
    Checking if anyone except nahoskins can change /setDisplayTopologyModes/
    Checking if anyone except nahoskins can change /setScale/in/mode
    Checking if anyone except nahoskins can change /setScale/in/mode/scaleFactor/value
    Checking if anyone except nahoskins can change /setScale/in/mode/targetHeight/value
    Checking if anyone except nahoskins can change /setScale/in/mode/targetWidth/value
    Checking if anyone except nahoskins can change /settings
    Checking if anyone except nahoskins can change /setup/needsEncryptionPasswordChange/
    Checking if anyone except nahoskins can change /setup/needsFirstUseSetup/
    Checking if anyone except nahoskins can change /setup/needsGHIOptIn/
    Checking if anyone except nahoskins can change /setup/needsRegistration/
    Checking if anyone except nahoskins can change /shares
    Checking if anyone except nahoskins can change /site
    Checking if anyone except nahoskins can change /sm
    Checking if anyone except nahoskins can change /smDx
    Checking if anyone except nahoskins can change /sMg
    Checking if anyone except nahoskins can change /snapshot/nextRollingTakeTime
    Checking if anyone except nahoskins can change /snapshot/powerOffActionEnabled
    Checking if anyone except nahoskins can change //Snapshots/Shot
    Checking if anyone except nahoskins can change /sNk
    Checking if anyone except nahoskins can change /socket
    Checking if anyone except nahoskins can change /softOption
    Checking if anyone except nahoskins can change /softOptionTimeoutMicroSeconds
    Checking if anyone except nahoskins can change /soR
    Checking if anyone except nahoskins can change /Sossaman
    Checking if anyone except nahoskins can change /South
    Checking if anyone except nahoskins can change /Stanley
    Checking if anyone except nahoskins can change /Status
    Checking if anyone except nahoskins can change /status/H
    Checking if anyone except nahoskins can change /stdout/stderr
    Checking if anyone except nahoskins can change /St_Johns
    Checking if anyone except nahoskins can change //StorageData/Storage
    Checking if anyone except nahoskins can change /stream/
    Checking if anyone except nahoskins can change /sub
    Checking if anyone except nahoskins can change /sub-Window
    Checking if anyone except nahoskins can change /support/mvdiACE/
    Checking if anyone except nahoskins can change /support/mvmtid/
    Checking if anyone except nahoskins can change /support/restrictedVM/
    Checking if anyone except nahoskins can change /support/version/
    Checking if anyone except nahoskins can change /suspend
    Checking if anyone except nahoskins can change /svga
    Checking if anyone except nahoskins can change /Sydney
    Checking if anyone except nahoskins can change /sys
    Checking if anyone except nahoskins can change /sys/block
    Checking if anyone except nahoskins can change /sys/bus/scsi/devices
    Checking if anyone except nahoskins can change /sys/bus/usb/devices
    Checking if anyone except nahoskins can change /sys/class/block/
    Checking if anyone except nahoskins can change /sys/dev/block
    Checking if anyone except nahoskins can change /sys/devL
    Checking if anyone except nahoskins can change /sys/firmware/acpi/tables
    Checking if anyone except nahoskins can change /sys/firmware/efi/systab
    Checking if anyone except nahoskins can change /sysH
    Checking if anyone except nahoskins can change /t
    Checking if anyone except nahoskins can change /T
    Checking if anyone except nahoskins can change /T0
    Checking if anyone except nahoskins can change /t2
    Checking if anyone except nahoskins can change /t5X
    Checking if anyone except nahoskins can change /t6NX
    Checking if anyone except nahoskins can change /T7y
    Checking if anyone except nahoskins can change /tB1
    Checking if anyone except nahoskins can change /TBZ/Sparse
    Checking if anyone except nahoskins can change /Teco
    Checking if anyone except nahoskins can change /text
    Checking if anyone except nahoskins can change /tF1
    Checking if anyone except nahoskins can change /tGH
    Checking if anyone except nahoskins can change /t-H
    Checking if anyone except nahoskins can change /t/H
    Checking if anyone except nahoskins can change /thinPrint/enabled
    Checking if anyone except nahoskins can change /tKH
    Checking if anyone except nahoskins can change /tLD8
    Checking if anyone except nahoskins can change /tlH9
    Checking if anyone except nahoskins can change /TLS
    Checking if anyone except nahoskins can change /tmp
[UPC003] WARNING: /usr/lib/vmware/bin/vmware-vmx is currently running as nahoskins. /usr/lib/vmware/bin/vmware-vmx contains the string /tmp. World write is set for /tmp (but sticky bit set)
    Checking if anyone except nahoskins can change /tmp/
[UPC003] WARNING: /usr/lib/vmware/bin/vmware-vmx is currently running as nahoskins. /usr/lib/vmware/bin/vmware-vmx contains the string /tmp/. World write is set for /tmp/ (but sticky bit set)
[UPC003] WARNING: /usr/lib/vmware/bin/vmware-vmx is currently running as nahoskins. /usr/lib/vmware/bin/vmware-vmx contains the string /tmp/. World write is set for /tmp (but sticky bit set)
    Checking if anyone except nahoskins can change /tmp/VMwareDnD/
[UPC003] WARNING: /usr/lib/vmware/bin/vmware-vmx is currently running as nahoskins. /usr/lib/vmware/bin/vmware-vmx contains the string /tmp/VMwareDnD/. World write is set for /tmp/VMwareDnD/ (but sticky bit set)
[UPC003] WARNING: /usr/lib/vmware/bin/vmware-vmx is currently running as nahoskins. /usr/lib/vmware/bin/vmware-vmx contains the string /tmp/VMwareDnD/. World write is set for /tmp/VMwareDnD (but sticky bit set)
[UPC003] WARNING: /usr/lib/vmware/bin/vmware-vmx is currently running as nahoskins. /usr/lib/vmware/bin/vmware-vmx contains the string /tmp/VMwareDnD/. World write is set for /tmp (but sticky bit set)
    Checking if anyone except nahoskins can change /toolsImagePath
    Checking if anyone except nahoskins can change /TP
    Checking if anyone except nahoskins can change /tpH
    Checking if anyone except nahoskins can change /Tr
    Checking if anyone except nahoskins can change /Track
    Checking if anyone except nahoskins can change //TRANSLIT
    Checking if anyone except nahoskins can change /Tripoli
    Checking if anyone except nahoskins can change /TS
    Checking if anyone except nahoskins can change /TW
    Checking if anyone except nahoskins can change /tWtB
    Checking if anyone except nahoskins can change /tXH9
    Checking if anyone except nahoskins can change /Tycoelectronics
    Checking if anyone except nahoskins can change /type
    Checking if anyone except nahoskins can change /u
    Checking if anyone except nahoskins can change /U
    Checking if anyone except nahoskins can change /U/
    Checking if anyone except nahoskins can change /UCKe
    Checking if anyone except nahoskins can change /ud2
    Checking if anyone except nahoskins can change /ugn
    Checking if anyone except nahoskins can change /UHHp
    Checking if anyone except nahoskins can change /ui
    Checking if anyone except nahoskins can change /uI
    Checking if anyone except nahoskins can change /UID
    Checking if anyone except nahoskins can change /uint64
    Checking if anyone except nahoskins can change /uJh
    Checking if anyone except nahoskins can change /uK
    Checking if anyone except nahoskins can change /UKR
    Checking if anyone except nahoskins can change /Ulaanbaatar
    Checking if anyone except nahoskins can change /unity
    Checking if anyone except nahoskins can change /unity/
    Checking if anyone except nahoskins can change /unity/pbrpcServer
    Checking if anyone except nahoskins can change /UNLOCK
    Checking if anyone except nahoskins can change /unlock/username/
    Checking if anyone except nahoskins can change /unsupported
    Checking if anyone except nahoskins can change /UO
    Checking if anyone except nahoskins can change /updateIntervalSecs
    Checking if anyone except nahoskins can change /updateMouseInMKSWindow/in/inWindow
    Checking if anyone except nahoskins can change /Upv
    Checking if anyone except nahoskins can change /usbCtlr
    Checking if anyone except nahoskins can change /usbCtlr/ehci
    Checking if anyone except nahoskins can change /usbDevices/
    Checking if anyone except nahoskins can change /UsE
    Checking if anyone except nahoskins can change /user
    Checking if anyone except nahoskins can change /uSH
    Checking if anyone except nahoskins can change /usr/bin/env
    Checking if anyone except nahoskins can change /usr/bin/lsb_release
    Checking if anyone except nahoskins can change /usr/libI
    Checking if anyone except nahoskins can change /usr/lib/pcoip/vchan_plugins
    Checking if anyone except nahoskins can change /usr/lib/vmware
    Checking if anyone except nahoskins can change /usr/lib/vmware/vmkernel
    Checking if anyone except nahoskins can change /usr/sbin/vmware-authd
    Checking if anyone except nahoskins can change /usr/share/zoneinfo/
    Checking if anyone except nahoskins can change /uv
    Checking if anyone except nahoskins can change /UVl
    Checking if anyone except nahoskins can change /v
    Checking if anyone except nahoskins can change /V
    Checking if anyone except nahoskins can change /v1
    Checking if anyone except nahoskins can change /V8
    Checking if anyone except nahoskins can change /val
    Checking if anyone except nahoskins can change /val/
    Checking if anyone except nahoskins can change /val/path
    Checking if anyone except nahoskins can change /var/lib/dhclient
    Checking if anyone except nahoskins can change /var/lib/dhcp
    Checking if anyone except nahoskins can change /var/lib/dhcp3
    Checking if anyone except nahoskins can change /var/lib/dhcpd
    Checking if anyone except nahoskins can change /var/lock
    Checking if anyone except nahoskins can change /var/log/vmware
    Checking if anyone except nahoskins can change /var/run/vmblock-fuse
    Checking if anyone except nahoskins can change /var/run/vmblock-fuse/blockdir
    Checking if anyone except nahoskins can change /var/run/vmblock-fuse/dev
    Checking if anyone except nahoskins can change /var/run/vmware
    Checking if anyone except nahoskins can change /var/run/vmware/authd_
    Checking if anyone except nahoskins can change /var/run/vmware/fuse
    Checking if anyone except nahoskins can change /var/run/vmware/tickets/
    Checking if anyone except nahoskins can change /var/run/vmware/usbarbitrator-socket
    Checking if anyone except nahoskins can change /vbH
    Checking if anyone except nahoskins can change /VBJ
    Checking if anyone except nahoskins can change /vcpu
    Checking if anyone except nahoskins can change /vE
    Checking if anyone except nahoskins can change /version
    Checking if anyone except nahoskins can change /VGA
    Checking if anyone except nahoskins can change /view/clip/height
    Checking if anyone except nahoskins can change /view/clip/width
    Checking if anyone except nahoskins can change /view/clip/x
    Checking if anyone except nahoskins can change /view/clip/y
    Checking if anyone except nahoskins can change /view/val
    Checking if anyone except nahoskins can change /vigor/fields/Audio
    Checking if anyone except nahoskins can change /vigor/fields/Bios
    Checking if anyone except nahoskins can change /vigor/fields/Bootstrap
    Checking if anyone except nahoskins can change /vigor/fields/ConfigParams
    Checking if anyone except nahoskins can change /vigor/fields/CrashDetector
    Checking if anyone except nahoskins can change /vigor/fields/Disk
    Checking if anyone except nahoskins can change /vigor/fields/Ethernet
    Checking if anyone except nahoskins can change /vigor/fields/FeatureCompat
    Checking if anyone except nahoskins can change /vigor/fields/Floppy
    Checking if anyone except nahoskins can change /vigor/fields/GuestAppMonitor
    Checking if anyone except nahoskins can change /vigor/fields/GuestInfo
    Checking if anyone except nahoskins can change /vigor/fields/GuestIsolation
    Checking if anyone except nahoskins can change /vigor/fields/GuestOps
    Checking if anyone except nahoskins can change /vigor/fields/GuestOS
    Checking if anyone except nahoskins can change /vigor/fields/GuestPeriodic
    Checking if anyone except nahoskins can change /vigor/fields/GuestQuiesce
    Checking if anyone except nahoskins can change /vigor/fields/GuestStats
    Checking if anyone except nahoskins can change /vigor/fields/Heartbeat
    Checking if anyone except nahoskins can change /vigor/fields/HGFS
    Checking if anyone except nahoskins can change /vigor/fields/HotButton
    Checking if anyone except nahoskins can change /vigor/fields/HotPlugManager
    Checking if anyone except nahoskins can change /vigor/fields/IDE
    Checking if anyone except nahoskins can change /vigor/fields/LogVMX
    Checking if anyone except nahoskins can change /vigor/fields/Migrate
    Checking if anyone except nahoskins can change /vigor/fields/MiscOpts
    Checking if anyone except nahoskins can change /vigor/fields/MKS
    Checking if anyone except nahoskins can change /vigor/fields/Monitor
    Checking if anyone except nahoskins can change /vigor/fields/NamespaceMgr
    Checking if anyone except nahoskins can change /vigor/fields/NVDimm
    Checking if anyone except nahoskins can change /vigor/fields/OverheadMem
    Checking if anyone except nahoskins can change /vigor/fields/Parallel
    Checking if anyone except nahoskins can change /vigor/fields/PCIBridge
    Checking if anyone except nahoskins can change /vigor/fields/PCIPassthru
    Checking if anyone except nahoskins can change /vigor/fields/PolicyState
    Checking if anyone except nahoskins can change /vigor/fields/PowerState
    Checking if anyone except nahoskins can change /vigor/fields/ProcessorAndMemory
    Checking if anyone except nahoskins can change /vigor/fields/SATA
    Checking if anyone except nahoskins can change /vigor/fields/SCSI
    Checking if anyone except nahoskins can change /vigor/fields/Sensor
    Checking if anyone except nahoskins can change /vigor/fields/Serial
    Checking if anyone except nahoskins can change /vigor/fields/Snapshot
    Checking if anyone except nahoskins can change /vigor/fields/Tools
    Checking if anyone except nahoskins can change /vigor/fields/ToolsInstallManager
    Checking if anyone except nahoskins can change /vigor/fields/Upgrade
    Checking if anyone except nahoskins can change /vigor/fields/UsbDevice
    Checking if anyone except nahoskins can change /vigor/fields/UUIDVMX
    Checking if anyone except nahoskins can change /vigor/fields/VigorSample
    Checking if anyone except nahoskins can change /vigor/fields/VMAutomation
    Checking if anyone except nahoskins can change /vigor/fields/VMCI
    Checking if anyone except nahoskins can change /vigor/fields/VmhsBridge
    Checking if anyone except nahoskins can change /vigor/fields/VMVariable
    Checking if anyone except nahoskins can change /vigor/fields/VProbe
    Checking if anyone except nahoskins can change /vigor/fields/VSock
    Checking if anyone except nahoskins can change /vigor/fields/VUsb
    Checking if anyone except nahoskins can change /virtualScreen/height/
    Checking if anyone except nahoskins can change /virtualScreen/width/
    Checking if anyone except nahoskins can change /vkO
    Checking if anyone except nahoskins can change /Vladivostok
    Checking if anyone except nahoskins can change /vmci
    Checking if anyone except nahoskins can change /vmfs/devices/char/vsock/vsock
    Checking if anyone except nahoskins can change /vmfs/volumes/
    Checking if anyone except nahoskins can change /vmfs/volumes/vsan
    Checking if anyone except nahoskins can change /vmfs/volumes/vvol
    Checking if anyone except nahoskins can change /vm/instanceid
    Checking if anyone except nahoskins can change /vm/managedVM
    Checking if anyone except nahoskins can change /vm/mvmtid
    Checking if anyone except nahoskins can change /vmSettings/
    Checking if anyone except nahoskins can change /vm/setupComplete
    Checking if anyone except nahoskins can change /vmware
    Checking if anyone except nahoskins can change /vmware-authd
    Checking if anyone except nahoskins can change /vmx/cfgState/val/vnc
    Checking if anyone except nahoskins can change /vmx/execState/val
    Checking if anyone except nahoskins can change /vmx/remDev
    Checking if anyone except nahoskins can change /vnc/
    Checking if anyone except nahoskins can change /VO
    Checking if anyone except nahoskins can change /Volgograd
    Checking if anyone except nahoskins can change /VY3
    Checking if anyone except nahoskins can change /w
    Checking if anyone except nahoskins can change /W
    Checking if anyone except nahoskins can change /wCX
    Checking if anyone except nahoskins can change /West
    Checking if anyone except nahoskins can change /wHH
    Checking if anyone except nahoskins can change /width
    Checking if anyone except nahoskins can change /width/
    Checking if anyone except nahoskins can change /Windhoek
    Checking if anyone except nahoskins can change /windowSize/height/
    Checking if anyone except nahoskins can change /windowSize/width/
    Checking if anyone except nahoskins can change /wiped/
    Checking if anyone except nahoskins can change /wirelessIcon/iconClicked
    Checking if anyone except nahoskins can change /wiretype
    Checking if anyone except nahoskins can change /wJWt
    Checking if anyone except nahoskins can change /Wl
    Checking if anyone except nahoskins can change /Woodcrest/Merom
    Checking if anyone except nahoskins can change /wq
    Checking if anyone except nahoskins can change /write
    Checking if anyone except nahoskins can change /Write
    Checking if anyone except nahoskins can change /WRITE
    Checking if anyone except nahoskins can change /wS
    Checking if anyone except nahoskins can change /WS
    Checking if anyone except nahoskins can change /WS3
    Checking if anyone except nahoskins can change /Wv
    Checking if anyone except nahoskins can change /x
    Checking if anyone except nahoskins can change /x/
    Checking if anyone except nahoskins can change /X
    Checking if anyone except nahoskins can change //X
    Checking if anyone except nahoskins can change /X04
    Checking if anyone except nahoskins can change /x11/auth/
    Checking if anyone except nahoskins can change /x11/display
    Checking if anyone except nahoskins can change /XD
    Checking if anyone except nahoskins can change /XE
    Checking if anyone except nahoskins can change /xhciCtlr
    Checking if anyone except nahoskins can change /XjH
    Checking if anyone except nahoskins can change /x-l
    Checking if anyone except nahoskins can change /XmND
    Checking if anyone except nahoskins can change /XR
    Checking if anyone except nahoskins can change /XRSTORS
    Checking if anyone except nahoskins can change /XSwHcX
    Checking if anyone except nahoskins can change /Xx-
    Checking if anyone except nahoskins can change /xZ7
    Checking if anyone except nahoskins can change /y
    Checking if anyone except nahoskins can change /y/
    Checking if anyone except nahoskins can change /Y
    Checking if anyone except nahoskins can change /Y6
    Checking if anyone except nahoskins can change /Yakutsk
    Checking if anyone except nahoskins can change /Ye
    Checking if anyone except nahoskins can change /Yekaterinburg
    Checking if anyone except nahoskins can change /Yerevan
    Checking if anyone except nahoskins can change /yf
    Checking if anyone except nahoskins can change /Yg
    Checking if anyone except nahoskins can change /YK
    Checking if anyone except nahoskins can change /yl
    Checking if anyone except nahoskins can change /ylu
    Checking if anyone except nahoskins can change /_yU
    Checking if anyone except nahoskins can change /YV5
    Checking if anyone except nahoskins can change /yvvYr
    Checking if anyone except nahoskins can change /Yw
    Checking if anyone except nahoskins can change /yX
    Checking if anyone except nahoskins can change /yY
    Checking if anyone except nahoskins can change /z
    Checking if anyone except nahoskins can change /Z
    Checking if anyone except nahoskins can change /Z/
    Checking if anyone except nahoskins can change /z6
    Checking if anyone except nahoskins can change /ZC
    Checking if anyone except nahoskins can change /ZH
    Checking if anyone except nahoskins can change /ZNQ
    Checking if anyone except nahoskins can change /ZvC
------------------------
PID:           16
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           165
Owner:         root
Program path:  /usr/lib/systemd/systemd-journald
    Checking if anyone except root can change /usr/lib/systemd/systemd-journald
    Checking if anyone except root can change /usr/lib/librt.so.1
    Checking if anyone except root can change /usr/lib/liblzma.so.5
    Checking if anyone except root can change /usr/lib/liblz4.so.1
    Checking if anyone except root can change /usr/lib/libgcrypt.so.20
    Checking if anyone except root can change /usr/lib/libacl.so.1
    Checking if anyone except root can change /usr/lib/libpthread.so.0
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /usr/lib/libgpg-error.so.0
    Checking if anyone except root can change /usr/lib/libattr.so.1
    Checking if anyone except root can change /
    Checking if anyone except root can change /A
    Checking if anyone except root can change /bus/
    Checking if anyone except root can change /class/
    Checking if anyone except root can change /data/
    Checking if anyone except root can change /dev/
    Checking if anyone except root can change /dev/console
    Checking if anyone except root can change /devfA
    Checking if anyone except root can change /devices/
    Checking if anyone except root can change /dev/kmsg
    Checking if anyone except root can change /dev/log
    Checking if anyone except root can change /dev/shm/
[UPC003] WARNING: /usr/lib/systemd/systemd-journald is currently running as root. /usr/lib/systemd/systemd-journald contains the string /dev/shm/. World write is set for /dev/shm/ (but sticky bit set)
[UPC003] WARNING: /usr/lib/systemd/systemd-journald is currently running as root. /usr/lib/systemd/systemd-journald contains the string /dev/shm/. World write is set for /dev/shm (but sticky bit set)
    Checking if anyone except root can change /dev/urandom
[UPC004] WARNING: /usr/lib/systemd/systemd-journald is currently running as root. /usr/lib/systemd/systemd-journald contains the string /dev/urandom. World write is set for /dev/urandom
    Checking if anyone except root can change /dH
    Checking if anyone except root can change /drivers/
    Checking if anyone except root can change /etc/initrd-release
    Checking if anyone except root can change /etc/machine-id
    Checking if anyone except root can change /I
    Checking if anyone except root can change /journalH
    Checking if anyone except root can change /L
    Checking if anyone except root can change /M
    Checking if anyone except root can change /module/
    Checking if anyone except root can change /proc/bc
    Checking if anyone except root can change /proc/cmdline
    Checking if anyone except root can change /proc/self/cgroup
[UPC001] WARNING: /usr/lib/systemd/systemd-journald is currently running as root. /usr/lib/systemd/systemd-journald contains the string /proc/self/cgroup. The user nahoskins can write to /proc/self/cgroup
[UPC001] WARNING: /usr/lib/systemd/systemd-journald is currently running as root. /usr/lib/systemd/systemd-journald contains the string /proc/self/cgroup. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/self/cmdline
[UPC001] WARNING: /usr/lib/systemd/systemd-journald is currently running as root. /usr/lib/systemd/systemd-journald contains the string /proc/self/cmdline. The user nahoskins can write to /proc/self/cmdline
[UPC001] WARNING: /usr/lib/systemd/systemd-journald is currently running as root. /usr/lib/systemd/systemd-journald contains the string /proc/self/cmdline. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/self/comm
[UPC001] WARNING: /usr/lib/systemd/systemd-journald is currently running as root. /usr/lib/systemd/systemd-journald contains the string /proc/self/comm. The user nahoskins can write to /proc/self/comm
[UPC001] WARNING: /usr/lib/systemd/systemd-journald is currently running as root. /usr/lib/systemd/systemd-journald contains the string /proc/self/comm. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/self/exe
[UPC001] WARNING: /usr/lib/systemd/systemd-journald is currently running as root. /usr/lib/systemd/systemd-journald contains the string /proc/self/exe. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/self/stat
[UPC001] WARNING: /usr/lib/systemd/systemd-journald is currently running as root. /usr/lib/systemd/systemd-journald contains the string /proc/self/stat. The user nahoskins can write to /proc/self/stat
[UPC001] WARNING: /usr/lib/systemd/systemd-journald is currently running as root. /usr/lib/systemd/systemd-journald contains the string /proc/self/stat. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/self/status
[UPC001] WARNING: /usr/lib/systemd/systemd-journald is currently running as root. /usr/lib/systemd/systemd-journald contains the string /proc/self/status. The user nahoskins can write to /proc/self/status
[UPC001] WARNING: /usr/lib/systemd/systemd-journald is currently running as root. /usr/lib/systemd/systemd-journald contains the string /proc/self/status. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/sys/kernel/hostname
    Checking if anyone except root can change /proc/sys/kernel/random/boot_id
    Checking if anyone except root can change /proc/vz
    Checking if anyone except root can change /run
    Checking if anyone except root can change /run/log
    Checking if anyone except root can change /run/log/journal
    Checking if anyone except root can change /run/log/journal/
    Checking if anyone except root can change /run/systemd/container
    Checking if anyone except root can change /run/systemd/journal
    Checking if anyone except root can change /run/systemd/journal/dev-log
    Checking if anyone except root can change /run/systemd/journal/flushed
    Checking if anyone except root can change /run/systemd/journal/kernel-seqnum
    Checking if anyone except root can change /run/systemd/journal/socket
    Checking if anyone except root can change /run/systemd/journal/stdout
    Checking if anyone except root can change /run/systemd/journal/streams
    Checking if anyone except root can change /run/systemd/journal/streams/
    Checking if anyone except root can change /run/systemd/journal/syslog
    Checking if anyone except root can change /run/udeHc
    Checking if anyone except root can change /subsystem
    Checking if anyone except root can change /subsystem/
    Checking if anyone except root can change /sys
    Checking if anyone except root can change /sys/
    Checking if anyone except root can change /sys/bus/
    Checking if anyone except root can change /sys/busL
    Checking if anyone except root can change /sys/claL
    Checking if anyone except root can change /sys/class/
    Checking if anyone except root can change /sys/dev/
    Checking if anyone except root can change /sys/devices/
    Checking if anyone except root can change /sys/fs/cgroup/
    Checking if anyone except root can change /sys/module/
    Checking if anyone except root can change /sys/module/printk/parameters/time
    Checking if anyone except root can change /sys/subH
    Checking if anyone except root can change /sys/subsystem/
    Checking if anyone except root can change /system
    Checking if anyone except root can change /tm
    Checking if anyone except root can change /tmp/
[UPC003] WARNING: /usr/lib/systemd/systemd-journald is currently running as root. /usr/lib/systemd/systemd-journald contains the string /tmp/. World write is set for /tmp/ (but sticky bit set)
[UPC003] WARNING: /usr/lib/systemd/systemd-journald is currently running as root. /usr/lib/systemd/systemd-journald contains the string /tmp/. World write is set for /tmp (but sticky bit set)
    Checking if anyone except root can change /tn
    Checking if anyone except root can change /tVH
    Checking if anyone except root can change /u
    Checking if anyone except root can change /uAI
    Checking if anyone except root can change /ub
    Checking if anyone except root can change /uevent
    Checking if anyone except root can change /uhH
    Checking if anyone except root can change /uUH
    Checking if anyone except root can change /var
    Checking if anyone except root can change /var/logH
    Checking if anyone except root can change /var/log/journal
    Checking if anyone except root can change /var/log/journal/
    Checking if anyone except root can change /var/tmp/
[UPC003] WARNING: /usr/lib/systemd/systemd-journald is currently running as root. /usr/lib/systemd/systemd-journald contains the string /var/tmp/. World write is set for /var/tmp/ (but sticky bit set)
[UPC003] WARNING: /usr/lib/systemd/systemd-journald is currently running as root. /usr/lib/systemd/systemd-journald contains the string /var/tmp/. World write is set for /var/tmp (but sticky bit set)
    Checking if anyone except root can change /wEH
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
PID:           2
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           204
Owner:         root
Program path:  /usr/lib/systemd/systemd-udevd
    Checking if anyone except root can change /usr/lib/systemd/systemd-udevd
    Checking if anyone except root can change /usr/lib/librt.so.1
    Checking if anyone except root can change /usr/lib/libacl.so.1
    Checking if anyone except root can change /usr/lib/libblkid.so.1
    Checking if anyone except root can change /usr/lib/libkmod.so.2
    Checking if anyone except root can change /usr/lib/libpthread.so.0
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /usr/lib/libattr.so.1
    Checking if anyone except root can change /usr/lib/libuuid.so.1
    Checking if anyone except root can change /usr/lib/liblzma.so.5
    Checking if anyone except root can change /usr/lib/libz.so.1
    Checking if anyone except root can change /
    Checking if anyone except root can change /0123456789
    Checking if anyone except root can change /abs
    Checking if anyone except root can change /ata
    Checking if anyone except root can change /block/dm-
    Checking if anyone except root can change /block/md
    Checking if anyone except root can change /bus/
    Checking if anyone except root can change /class/
    Checking if anyone except root can change /config
    Checking if anyone except root can change /contolC
    Checking if anyone except root can change /controlC
    Checking if anyone except root can change /data/
    Checking if anyone except root can change /descriptors
    Checking if anyone except root can change /dev
    Checking if anyone except root can change /dev/
    Checking if anyone except root can change /devA
    Checking if anyone except root can change /dev/btrfs-control
    Checking if anyone except root can change /dev/console
    Checking if anyone except root can change /dev/core
    Checking if anyone except root can change /dev/fd
[UPC001] WARNING: /usr/lib/systemd/systemd-udevd is currently running as root. /usr/lib/systemd/systemd-udevd contains the string /dev/fd. The user nahoskins can write to /dev/fd
    Checking if anyone except root can change /devices/
    Checking if anyone except root can change /dev/kmsg
    Checking if anyone except root can change /dev/log
    Checking if anyone except root can change /dev/null
[UPC004] WARNING: /usr/lib/systemd/systemd-udevd is currently running as root. /usr/lib/systemd/systemd-udevd contains the string /dev/null. World write is set for /dev/null
    Checking if anyone except root can change /dev/stderr
[UPC001] WARNING: /usr/lib/systemd/systemd-udevd is currently running as root. /usr/lib/systemd/systemd-udevd contains the string /dev/stderr. The user nahoskins can write to /dev/stderr
    Checking if anyone except root can change /dev/stdin
[UPC001] WARNING: /usr/lib/systemd/systemd-udevd is currently running as root. /usr/lib/systemd/systemd-udevd contains the string /dev/stdin. The user nahoskins can write to /dev/stdin
    Checking if anyone except root can change /dev/stdout
[UPC001] WARNING: /usr/lib/systemd/systemd-udevd is currently running as root. /usr/lib/systemd/systemd-udevd contains the string /dev/stdout. The user nahoskins can write to /dev/stdout
    Checking if anyone except root can change /dev/urandom
[UPC004] WARNING: /usr/lib/systemd/systemd-udevd is currently running as root. /usr/lib/systemd/systemd-udevd contains the string /dev/urandom. World write is set for /dev/urandom
    Checking if anyone except root can change /dH
    Checking if anyone except root can change /driver
    Checking if anyone except root can change /drivers/
    Checking if anyone except root can change /end_device-
    Checking if anyone except root can change /etc/initrd-release
    Checking if anyone except root can change /etc/machine-id
    Checking if anyone except root can change /etc/systemd/network
    Checking if anyone except root can change /ev
    Checking if anyone except root can change /H
    Checking if anyone except root can change /key
    Checking if anyone except root can change /L
    Checking if anyone except root can change /module/
    Checking if anyone except root can change /proc/bc
    Checking if anyone except root can change /proc/cmdline
    Checking if anyone except root can change /proc/cpuinfo
    Checking if anyone except root can change /proc/kcore
    Checking if anyone except root can change /proc/self/cgroup
[UPC001] WARNING: /usr/lib/systemd/systemd-udevd is currently running as root. /usr/lib/systemd/systemd-udevd contains the string /proc/self/cgroup. The user nahoskins can write to /proc/self/cgroup
[UPC001] WARNING: /usr/lib/systemd/systemd-udevd is currently running as root. /usr/lib/systemd/systemd-udevd contains the string /proc/self/cgroup. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/self/fd
[UPC001] WARNING: /usr/lib/systemd/systemd-udevd is currently running as root. /usr/lib/systemd/systemd-udevd contains the string /proc/self/fd. The user nahoskins can write to /proc/self/fd
[UPC001] WARNING: /usr/lib/systemd/systemd-udevd is currently running as root. /usr/lib/systemd/systemd-udevd contains the string /proc/self/fd. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/self/fd/0
[UPC001] WARNING: /usr/lib/systemd/systemd-udevd is currently running as root. /usr/lib/systemd/systemd-udevd contains the string /proc/self/fd/0. The user nahoskins can write to /proc/self/fd/0
[UPC001] WARNING: /usr/lib/systemd/systemd-udevd is currently running as root. /usr/lib/systemd/systemd-udevd contains the string /proc/self/fd/0. The user nahoskins can write to /proc/self/fd
[UPC001] WARNING: /usr/lib/systemd/systemd-udevd is currently running as root. /usr/lib/systemd/systemd-udevd contains the string /proc/self/fd/0. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/self/fd/1
[UPC001] WARNING: /usr/lib/systemd/systemd-udevd is currently running as root. /usr/lib/systemd/systemd-udevd contains the string /proc/self/fd/1. The user nahoskins can write to /proc/self/fd/1
[UPC001] WARNING: /usr/lib/systemd/systemd-udevd is currently running as root. /usr/lib/systemd/systemd-udevd contains the string /proc/self/fd/1. The user nahoskins can write to /proc/self/fd
[UPC001] WARNING: /usr/lib/systemd/systemd-udevd is currently running as root. /usr/lib/systemd/systemd-udevd contains the string /proc/self/fd/1. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/self/fd/2
[UPC001] WARNING: /usr/lib/systemd/systemd-udevd is currently running as root. /usr/lib/systemd/systemd-udevd contains the string /proc/self/fd/2. The user nahoskins can write to /proc/self/fd/2
[UPC001] WARNING: /usr/lib/systemd/systemd-udevd is currently running as root. /usr/lib/systemd/systemd-udevd contains the string /proc/self/fd/2. The user nahoskins can write to /proc/self/fd
[UPC001] WARNING: /usr/lib/systemd/systemd-udevd is currently running as root. /usr/lib/systemd/systemd-udevd contains the string /proc/self/fd/2. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/self/mountinfo
[UPC001] WARNING: /usr/lib/systemd/systemd-udevd is currently running as root. /usr/lib/systemd/systemd-udevd contains the string /proc/self/mountinfo. The user nahoskins can write to /proc/self/mountinfo
[UPC001] WARNING: /usr/lib/systemd/systemd-udevd is currently running as root. /usr/lib/systemd/systemd-udevd contains the string /proc/self/mountinfo. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/self/oom_score_adj
[UPC001] WARNING: /usr/lib/systemd/systemd-udevd is currently running as root. /usr/lib/systemd/systemd-udevd contains the string /proc/self/oom_score_adj. The user nahoskins can write to /proc/self/oom_score_adj
[UPC001] WARNING: /usr/lib/systemd/systemd-udevd is currently running as root. /usr/lib/systemd/systemd-udevd contains the string /proc/self/oom_score_adj. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/self/stat
[UPC001] WARNING: /usr/lib/systemd/systemd-udevd is currently running as root. /usr/lib/systemd/systemd-udevd contains the string /proc/self/stat. The user nahoskins can write to /proc/self/stat
[UPC001] WARNING: /usr/lib/systemd/systemd-udevd is currently running as root. /usr/lib/systemd/systemd-udevd contains the string /proc/self/stat. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/self/status
[UPC001] WARNING: /usr/lib/systemd/systemd-udevd is currently running as root. /usr/lib/systemd/systemd-udevd contains the string /proc/self/status. The user nahoskins can write to /proc/self/status
[UPC001] WARNING: /usr/lib/systemd/systemd-udevd is currently running as root. /usr/lib/systemd/systemd-udevd contains the string /proc/self/status. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/syH
    Checking if anyone except root can change /proc/sys/kernel/random/boot_id
    Checking if anyone except root can change /proc/vz
    Checking if anyone except root can change /proc/xen/capabilities
    Checking if anyone except root can change /rel
    Checking if anyone except root can change /rport-
    Checking if anyone except root can change /run/systemd/container
    Checking if anyone except root can change /run/systemd/first-boot
    Checking if anyone except root can change /run/systemd/journal/socket
    Checking if anyone except root can change /run/systemd/network
    Checking if anyone except root can change /run/systemd/seats/
    Checking if anyone except root can change /run/udeH
    Checking if anyone except root can change /run/udeL
    Checking if anyone except root can change /run/udev
    Checking if anyone except root can change /run/udev/control
    Checking if anyone except root can change /run/udev/links/
    Checking if anyone except root can change /run/udev/queue
    Checking if anyone except root can change /run/udev/static_node-tags/
    Checking if anyone except root can change /run/udev/tags/
    Checking if anyone except root can change /run/udev/watch
    Checking if anyone except root can change /session
    Checking if anyone except root can change /slots
    Checking if anyone except root can change /sound/card
    Checking if anyone except root can change /subsyst
    Checking if anyone except root can change /subsystem/
    Checking if anyone except root can change /sys
    Checking if anyone except root can change /sys/
    Checking if anyone except root can change /sys/bus
    Checking if anyone except root can change /sys/bus/
    Checking if anyone except root can change /sys/busL
    Checking if anyone except root can change /sys/claL
    Checking if anyone except root can change /sys/class
    Checking if anyone except root can change /sys/class/
    Checking if anyone except root can change /sys/class/dmi/id/bios_vendor
    Checking if anyone except root can change /sys/class/dmi/id/board_vendor
    Checking if anyone except root can change /sys/class/dmi/id/sys_vendor
    Checking if anyone except root can change /sys/class/power_supply
    Checking if anyone except root can change /sys/dev/
    Checking if anyone except root can change /sys/devices/
    Checking if anyone except root can change /sysfA
    Checking if anyone except root can change /sys/fs/cgroup/
    Checking if anyone except root can change /sys/fs/smackfs/
    Checking if anyone except root can change /sys/hypervisor/type
    Checking if anyone except root can change /sys/kernel/security/ima/
    Checking if anyone except root can change /sys/modL
    Checking if anyone except root can change /sys/module/apparmor/parameters/enabled
    Checking if anyone except root can change /sys/subL
    Checking if anyone except root can change /sys/subsystem
    Checking if anyone except root can change /sys/subsystem/
    Checking if anyone except root can change /tags/
    Checking if anyone except root can change /tm
    Checking if anyone except root can change /tn
    Checking if anyone except root can change /tvL
    Checking if anyone except root can change /u
    Checking if anyone except root can change /uevent
    Checking if anyone except root can change /uhH
    Checking if anyone except root can change /usr/
    Checking if anyone except root can change /usr/lib/systemd/network
    Checking if anyone except root can change /usr/lib/udev/
    Checking if anyone except root can change /value
    Checking if anyone except root can change /vmbus_
    Checking if anyone except root can change /x
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
PID:           26742
Owner:         nahoskins
Program path:  /usr/bin/bash
    Checking if anyone except nahoskins can change /usr/bin/bash
    Checking if anyone except nahoskins can change /usr/lib/libreadline.so.6
    Checking if anyone except nahoskins can change /usr/lib/libncursesw.so.6
    Checking if anyone except nahoskins can change /usr/lib/libdl.so.2
    Checking if anyone except nahoskins can change /usr/lib/libc.so.6
    Checking if anyone except nahoskins can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except nahoskins can change /
    Checking if anyone except nahoskins can change /04
    Checking if anyone except nahoskins can change /bin/sh
    Checking if anyone except nahoskins can change /cur
    Checking if anyone except nahoskins can change /D
    Checking if anyone except nahoskins can change /dev/fd/
    Checking if anyone except nahoskins can change /dev/fd/H
    Checking if anyone except nahoskins can change /dev/fd/I
    Checking if anyone except nahoskins can change /dev/null
[UPC004] WARNING: /usr/bin/bash is currently running as nahoskins. /usr/bin/bash contains the string /dev/null. World write is set for /dev/null
    Checking if anyone except nahoskins can change /dev/std
    Checking if anyone except nahoskins can change /dev/tcp/
    Checking if anyone except nahoskins can change /dev/tty
[UPC004] WARNING: /usr/bin/bash is currently running as nahoskins. /usr/bin/bash contains the string /dev/tty. World write is set for /dev/tty
    Checking if anyone except nahoskins can change /dev/udp/
    Checking if anyone except nahoskins can change /etc/hosts
    Checking if anyone except nahoskins can change /etc/profile
    Checking if anyone except nahoskins can change /fV
    Checking if anyone except nahoskins can change /H
    Checking if anyone except nahoskins can change /Hc
    Checking if anyone except nahoskins can change /J
    Checking if anyone except nahoskins can change /new
    Checking if anyone except nahoskins can change /t
    Checking if anyone except nahoskins can change /tg
    Checking if anyone except nahoskins can change /tmp
[UPC003] WARNING: /usr/bin/bash is currently running as nahoskins. /usr/bin/bash contains the string /tmp. World write is set for /tmp (but sticky bit set)
    Checking if anyone except nahoskins can change /tnI
    Checking if anyone except nahoskins can change /u
    Checking if anyone except nahoskins can change /usr/bin
    Checking if anyone except nahoskins can change /usr/binH
    Checking if anyone except nahoskins can change /usr/local/bin
    Checking if anyone except nahoskins can change /usr/local/sbin
    Checking if anyone except nahoskins can change /usr/share/locale
    Checking if anyone except nahoskins can change /usr/tmp
    Checking if anyone except nahoskins can change /var/maiH
    Checking if anyone except nahoskins can change /var/tmp
[UPC003] WARNING: /usr/bin/bash is currently running as nahoskins. /usr/bin/bash contains the string /var/tmp. World write is set for /var/tmp (but sticky bit set)
    Checking if anyone except nahoskins can change /proc/26742/fd/0
    Checking if anyone except nahoskins can change /proc/26742/fd/1
    Checking if anyone except nahoskins can change /proc/26742/fd/2
    Checking if anyone except nahoskins can change /proc/26742/fd/255
    Checking if anyone except nahoskins can change /proc/26742/fd/3
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
    Checking if anyone except nahoskins can change /usr/lib/libXxf86vm.so.1
    Checking if anyone except nahoskins can change /usr/lib/libXext.so.6
    Checking if anyone except nahoskins can change /usr/lib/libX11.so.6
    Checking if anyone except nahoskins can change /usr/lib/libXrandr.so.2
    Checking if anyone except nahoskins can change /usr/lib/libstdc++.so.6
    Checking if anyone except nahoskins can change /usr/lib/libm.so.6
    Checking if anyone except nahoskins can change /usr/lib/libgcc_s.so.1
    Checking if anyone except nahoskins can change /usr/lib/libc.so.6
    Checking if anyone except nahoskins can change /usr/lib/libxcb.so.1
    Checking if anyone except nahoskins can change /usr/lib/libdl.so.2
    Checking if anyone except nahoskins can change /usr/lib/libXrender.so.1
    Checking if anyone except nahoskins can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except nahoskins can change /usr/lib/libXau.so.6
    Checking if anyone except nahoskins can change /usr/lib/libXdmcp.so.6
    Checking if anyone except nahoskins can change /
    Checking if anyone except nahoskins can change /_
    Checking if anyone except nahoskins can change /0B
    Checking if anyone except nahoskins can change /0Bo
    Checking if anyone except nahoskins can change /3B
    Checking if anyone except nahoskins can change /4Bm
    Checking if anyone except nahoskins can change /6
    Checking if anyone except nahoskins can change /73BR
    Checking if anyone except nahoskins can change /9
    Checking if anyone except nahoskins can change /9BO
    Checking if anyone except nahoskins can change /a
    Checking if anyone except nahoskins can change /A
    Checking if anyone except nahoskins can change /B
    Checking if anyone except nahoskins can change //B
    Checking if anyone except nahoskins can change /B34
    Checking if anyone except nahoskins can change /B5
    Checking if anyone except nahoskins can change /B5Z
    Checking if anyone except nahoskins can change /B6U
    Checking if anyone except nahoskins can change /B8p
    Checking if anyone except nahoskins can change /B9m
    Checking if anyone except nahoskins can change /B9q
    Checking if anyone except nahoskins can change /Ba
    Checking if anyone except nahoskins can change /BA8
    Checking if anyone except nahoskins can change /Bac
    Checking if anyone except nahoskins can change /BBg
    Checking if anyone except nahoskins can change /Bd/
    Checking if anyone except nahoskins can change /Bf
    Checking if anyone except nahoskins can change /BG
    Checking if anyone except nahoskins can change /BH6
    Checking if anyone except nahoskins can change /BHf
    Checking if anyone except nahoskins can change /BI
    Checking if anyone except nahoskins can change /BiM
    Checking if anyone except nahoskins can change /-BKu
    Checking if anyone except nahoskins can change /BkX
    Checking if anyone except nahoskins can change /BlJ
    Checking if anyone except nahoskins can change /Blr
    Checking if anyone except nahoskins can change /BO5
    Checking if anyone except nahoskins can change /Bp
    Checking if anyone except nahoskins can change /BsG
    Checking if anyone except nahoskins can change /BSm
    Checking if anyone except nahoskins can change /BTR
    Checking if anyone except nahoskins can change /BU-
    Checking if anyone except nahoskins can change /Buf
    Checking if anyone except nahoskins can change /BuG
    Checking if anyone except nahoskins can change /Bul
    Checking if anyone except nahoskins can change /Bx
    Checking if anyone except nahoskins can change /c
    Checking if anyone except nahoskins can change /F
    Checking if anyone except nahoskins can change /i-B
    Checking if anyone except nahoskins can change /K8Bv
    Checking if anyone except nahoskins can change /p
    Checking if anyone except nahoskins can change /Q
    Checking if anyone except nahoskins can change /t
    Checking if anyone except nahoskins can change /U
    Checking if anyone except nahoskins can change /X
    Checking if anyone except nahoskins can change /z3B
    Checking if anyone except nahoskins can change /ZBB
    Checking if anyone except nahoskins can change /proc/29074/fd/0
    Checking if anyone except nahoskins can change /proc/29074/fd/1
    Checking if anyone except nahoskins can change /proc/29074/fd/2
    Checking if anyone except nahoskins can change /proc/29074/fd/3
------------------------
PID:           291
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           29527
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           297
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           29700
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
PID:           30469
ERROR: Can't find OWNER.  Process has gone.
------------------------
PID:           30708
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           31
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           31878
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
    Checking if anyone except root can change /usr/lib/librt.so.1
    Checking if anyone except root can change /usr/lib/libacl.so.1
    Checking if anyone except root can change /usr/lib/libpthread.so.0
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /usr/lib/libattr.so.1
    Checking if anyone except root can change /
    Checking if anyone except root can change /0123456789
    Checking if anyone except root can change /block/dm-
    Checking if anyone except root can change /block/md
    Checking if anyone except root can change /bus/
    Checking if anyone except root can change /class/
    Checking if anyone except root can change /contolC
    Checking if anyone except root can change /controlC
    Checking if anyone except root can change /data/
    Checking if anyone except root can change /dbus/syf
    Checking if anyone except root can change /dev
    Checking if anyone except root can change /dev/
    Checking if anyone except root can change /devA
    Checking if anyone except root can change /dev/console
    Checking if anyone except root can change /devices/
    Checking if anyone except root can change /dev/inpL
    Checking if anyone except root can change /dev/kmsg
    Checking if anyone except root can change /dev/log
    Checking if anyone except root can change /dev/mqueue
[UPC003] WARNING: /usr/lib/systemd/systemd-logind is currently running as root. /usr/lib/systemd/systemd-logind contains the string /dev/mqueue. World write is set for /dev/mqueue (but sticky bit set)
    Checking if anyone except root can change /dev/shm
[UPC003] WARNING: /usr/lib/systemd/systemd-logind is currently running as root. /usr/lib/systemd/systemd-logind contains the string /dev/shm. World write is set for /dev/shm (but sticky bit set)
    Checking if anyone except root can change /dev/tty0
    Checking if anyone except root can change /dev/tty1
    Checking if anyone except root can change /dev/urandom
[UPC004] WARNING: /usr/lib/systemd/systemd-logind is currently running as root. /usr/lib/systemd/systemd-logind contains the string /dev/urandom. World write is set for /dev/urandom
    Checking if anyone except root can change /dH
    Checking if anyone except root can change /drivers/
    Checking if anyone except root can change /etc/initrd-release
    Checking if anyone except root can change /etc/machine-id
    Checking if anyone except root can change //freedesktop//DTD
    Checking if anyone except root can change /H
    Checking if anyone except root can change /I
    Checking if anyone except root can change /L
    Checking if anyone except root can change /linger/H
    Checking if anyone except root can change /macI
    Checking if anyone except root can change /module/
    Checking if anyone except root can change /org/freedesktop/dbus
    Checking if anyone except root can change /org/freedesktop/DBus
    Checking if anyone except root can change /org/freedesktop/DBus/Local
    Checking if anyone except root can change /org/freedesktop/login1
    Checking if anyone except root can change /org/freedesktop/login1/seat
    Checking if anyone except root can change /org/freedesktop/login1/seat/
    Checking if anyone except root can change /org/freedesktop/login1/seat/self
    Checking if anyone except root can change /org/freedesktop/login1/session
    Checking if anyone except root can change /org/freedesktop/login1/session/
    Checking if anyone except root can change /org/freedesktop/login1/session/self
    Checking if anyone except root can change /org/freedesktop/login1/user
    Checking if anyone except root can change /org/freedesktop/login1/user/_
    Checking if anyone except root can change /org/freedesktop/login1/user/self
    Checking if anyone except root can change /org/freedesktop/PolicyKit1/Authority
    Checking if anyone except root can change /org/freedesktop/systemd1
    Checking if anyone except root can change /org/freedesktop/systemd1/unit/
    Checking if anyone except root can change /output
    Checking if anyone except root can change /proc/bc
    Checking if anyone except root can change /proc/cmdline
    Checking if anyone except root can change /proc/meminfo
    Checking if anyone except root can change /proc/self/attr/current
[UPC001] WARNING: /usr/lib/systemd/systemd-logind is currently running as root. /usr/lib/systemd/systemd-logind contains the string /proc/self/attr/current. The user nahoskins can write to /proc/self/attr/current
[UPC002] WARNING: /usr/lib/systemd/systemd-logind is currently running as root. /usr/lib/systemd/systemd-logind contains the string /proc/self/attr/current. The group nahoskins can write to /proc/self/attr/current
[UPC004] WARNING: /usr/lib/systemd/systemd-logind is currently running as root. /usr/lib/systemd/systemd-logind contains the string /proc/self/attr/current. World write is set for /proc/self/attr/current
[UPC001] WARNING: /usr/lib/systemd/systemd-logind is currently running as root. /usr/lib/systemd/systemd-logind contains the string /proc/self/attr/current. The user nahoskins can write to /proc/self/attr
[UPC001] WARNING: /usr/lib/systemd/systemd-logind is currently running as root. /usr/lib/systemd/systemd-logind contains the string /proc/self/attr/current. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/self/cgroup
[UPC001] WARNING: /usr/lib/systemd/systemd-logind is currently running as root. /usr/lib/systemd/systemd-logind contains the string /proc/self/cgroup. The user nahoskins can write to /proc/self/cgroup
[UPC001] WARNING: /usr/lib/systemd/systemd-logind is currently running as root. /usr/lib/systemd/systemd-logind contains the string /proc/self/cgroup. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/self/cmdline
[UPC001] WARNING: /usr/lib/systemd/systemd-logind is currently running as root. /usr/lib/systemd/systemd-logind contains the string /proc/self/cmdline. The user nahoskins can write to /proc/self/cmdline
[UPC001] WARNING: /usr/lib/systemd/systemd-logind is currently running as root. /usr/lib/systemd/systemd-logind contains the string /proc/self/cmdline. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/self/comm
[UPC001] WARNING: /usr/lib/systemd/systemd-logind is currently running as root. /usr/lib/systemd/systemd-logind contains the string /proc/self/comm. The user nahoskins can write to /proc/self/comm
[UPC001] WARNING: /usr/lib/systemd/systemd-logind is currently running as root. /usr/lib/systemd/systemd-logind contains the string /proc/self/comm. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/self/exe
[UPC001] WARNING: /usr/lib/systemd/systemd-logind is currently running as root. /usr/lib/systemd/systemd-logind contains the string /proc/self/exe. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/self/fd
[UPC001] WARNING: /usr/lib/systemd/systemd-logind is currently running as root. /usr/lib/systemd/systemd-logind contains the string /proc/self/fd. The user nahoskins can write to /proc/self/fd
[UPC001] WARNING: /usr/lib/systemd/systemd-logind is currently running as root. /usr/lib/systemd/systemd-logind contains the string /proc/self/fd. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/self/loginuid
[UPC001] WARNING: /usr/lib/systemd/systemd-logind is currently running as root. /usr/lib/systemd/systemd-logind contains the string /proc/self/loginuid. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/self/mountinfo
[UPC001] WARNING: /usr/lib/systemd/systemd-logind is currently running as root. /usr/lib/systemd/systemd-logind contains the string /proc/self/mountinfo. The user nahoskins can write to /proc/self/mountinfo
[UPC001] WARNING: /usr/lib/systemd/systemd-logind is currently running as root. /usr/lib/systemd/systemd-logind contains the string /proc/self/mountinfo. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/self/ns/mnt
[UPC001] WARNING: /usr/lib/systemd/systemd-logind is currently running as root. /usr/lib/systemd/systemd-logind contains the string /proc/self/ns/mnt. The user nahoskins can write to /proc/self/ns
[UPC001] WARNING: /usr/lib/systemd/systemd-logind is currently running as root. /usr/lib/systemd/systemd-logind contains the string /proc/self/ns/mnt. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/self/ns/pid
[UPC001] WARNING: /usr/lib/systemd/systemd-logind is currently running as root. /usr/lib/systemd/systemd-logind contains the string /proc/self/ns/pid. The user nahoskins can write to /proc/self/ns
[UPC001] WARNING: /usr/lib/systemd/systemd-logind is currently running as root. /usr/lib/systemd/systemd-logind contains the string /proc/self/ns/pid. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/self/ns/user
[UPC001] WARNING: /usr/lib/systemd/systemd-logind is currently running as root. /usr/lib/systemd/systemd-logind contains the string /proc/self/ns/user. The user nahoskins can write to /proc/self/ns
[UPC001] WARNING: /usr/lib/systemd/systemd-logind is currently running as root. /usr/lib/systemd/systemd-logind contains the string /proc/self/ns/user. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/self/root
[UPC001] WARNING: /usr/lib/systemd/systemd-logind is currently running as root. /usr/lib/systemd/systemd-logind contains the string /proc/self/root. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/self/sessionid
[UPC001] WARNING: /usr/lib/systemd/systemd-logind is currently running as root. /usr/lib/systemd/systemd-logind contains the string /proc/self/sessionid. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/self/stat
[UPC001] WARNING: /usr/lib/systemd/systemd-logind is currently running as root. /usr/lib/systemd/systemd-logind contains the string /proc/self/stat. The user nahoskins can write to /proc/self/stat
[UPC001] WARNING: /usr/lib/systemd/systemd-logind is currently running as root. /usr/lib/systemd/systemd-logind contains the string /proc/self/stat. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/self/status
[UPC001] WARNING: /usr/lib/systemd/systemd-logind is currently running as root. /usr/lib/systemd/systemd-logind contains the string /proc/self/status. The user nahoskins can write to /proc/self/status
[UPC001] WARNING: /usr/lib/systemd/systemd-logind is currently running as root. /usr/lib/systemd/systemd-logind contains the string /proc/self/status. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/swaps
    Checking if anyone except root can change /proc/sys/kernel/cap_last_cap
    Checking if anyone except root can change /proc/sys/kernel/random/boot_id
    Checking if anyone except root can change /proc/sysvipc/msg
    Checking if anyone except root can change /proc/sysvipc/sem
    Checking if anyone except root can change /proc/sysvipc/shm
    Checking if anyone except root can change /proc/vz
    Checking if anyone except root can change /run/nologin
    Checking if anyone except root can change /run/sysL
    Checking if anyone except root can change /run/systemd/container
    Checking if anyone except root can change /run/systemd/inhibit
    Checking if anyone except root can change /run/systemd/inhibit/
    Checking if anyone except root can change /run/systemd/journal/socket
    Checking if anyone except root can change /run/systemd/seats
    Checking if anyone except root can change /run/systemd/seats/
    Checking if anyone except root can change /run/systemd/sessions
    Checking if anyone except root can change /run/systemd/sessions/
    Checking if anyone except root can change /run/systemd/shutdown
    Checking if anyone except root can change /run/systemd/shutdown/scheduled
    Checking if anyone except root can change /run/systemd/users
    Checking if anyone except root can change /run/udeL
    Checking if anyone except root can change /run/udev/control
    Checking if anyone except root can change /run/udev/static_node-tags/uaccess
    Checking if anyone except root can change /run/user
    Checking if anyone except root can change /sound/card
    Checking if anyone except root can change /subsyst
    Checking if anyone except root can change /subsystem/
    Checking if anyone except root can change /sys
    Checking if anyone except root can change /sys/
    Checking if anyone except root can change /sys/bus
    Checking if anyone except root can change /sys/bus/
    Checking if anyone except root can change /sys/busL
    Checking if anyone except root can change /sys/claL
    Checking if anyone except root can change /sys/class
    Checking if anyone except root can change /sys/class/
    Checking if anyone except root can change /sys/class/tty/tty0/active
    Checking if anyone except root can change /sys/dev/
    Checking if anyone except root can change /sys/devices/
    Checking if anyone except root can change /sys/firmware/efi
    Checking if anyone except root can change /sys/fs/cgroup/
    Checking if anyone except root can change /sys/fs/kdbus/0-system/bus
    Checking if anyone except root can change /sys/fs/smackfs/
    Checking if anyone except root can change /sysH
    Checking if anyone except root can change /sys/modL
    Checking if anyone except root can change /sys/module/vt/parameters/default_utf8
    Checking if anyone except root can change /sys/power/disk
    Checking if anyone except root can change /sys/power/state
    Checking if anyone except root can change /sys/subL
    Checking if anyone except root can change /sys/subsystem
    Checking if anyone except root can change /sys/subsystem/
    Checking if anyone except root can change /system
    Checking if anyone except root can change /systemdH
    Checking if anyone except root can change /tags/
    Checking if anyone except root can change /tm
    Checking if anyone except root can change /tn
    Checking if anyone except root can change /u
    Checking if anyone except root can change /ub
    Checking if anyone except root can change /uevent
    Checking if anyone except root can change /uhH
    Checking if anyone except root can change /usr/sbin/kexec
    Checking if anyone except root can change /uxE1
    Checking if anyone except root can change /var/libH
    Checking if anyone except root can change /var/lib/systemd
    Checking if anyone except root can change /var/lib/systemd/linger
    Checking if anyone except root can change /var/lib/systemd/linger/
    Checking if anyone except root can change /var/run
------------------------
PID:           36
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           361
Owner:         mpd
Program path:  /usr/bin/mpd
    Checking if anyone except mpd can change /usr/bin/mpd
    Checking if anyone except mpd can change /usr/lib/libexpat.so.1
    Checking if anyone except mpd can change /usr/lib/libupnp.so.6
    Checking if anyone except mpd can change /usr/lib/libixml.so.2
    Checking if anyone except mpd can change /usr/lib/libmpdclient.so.2
    Checking if anyone except mpd can change /usr/lib/libnfs.so.8
    Checking if anyone except mpd can change /usr/lib/libsmbclient.so.0
    Checking if anyone except mpd can change /usr/lib/libyajl.so.2
    Checking if anyone except mpd can change /usr/lib/libavahi-common.so.3
    Checking if anyone except mpd can change /usr/lib/libavahi-client.so.3
    Checking if anyone except mpd can change /usr/lib/libdbus-1.so.3
    Checking if anyone except mpd can change /usr/lib/libsqlite3.so.0
    Checking if anyone except mpd can change /usr/lib/libvorbisfile.so.3
    Checking if anyone except mpd can change /usr/lib/libvorbis.so.0
    Checking if anyone except mpd can change /usr/lib/libogg.so.0
    Checking if anyone except mpd can change /usr/lib/libFLAC.so.8
    Checking if anyone except mpd can change /usr/lib/libsndfile.so.1
    Checking if anyone except mpd can change /usr/lib/libaudiofile.so.1
    Checking if anyone except mpd can change /usr/lib/libwavpack.so.1
    Checking if anyone except mpd can change /usr/lib/libmad.so.0
    Checking if anyone except mpd can change /usr/lib/libopus.so.0
    Checking if anyone except mpd can change /usr/lib/libavformat.so.56
    Checking if anyone except mpd can change /usr/lib/libavcodec.so.56
    Checking if anyone except mpd can change /usr/lib/libavutil.so.54
    Checking if anyone except mpd can change /usr/lib/libfaad.so.2
    Checking if anyone except mpd can change /usr/lib/libmodplug.so.1
    Checking if anyone except mpd can change /usr/lib/libcurl.so.4
    Checking if anyone except mpd can change /usr/lib/libmms.so.0
    Checking if anyone except mpd can change /usr/lib/libglib-2.0.so.0
    Checking if anyone except mpd can change /usr/lib/libasound.so.2
    Checking if anyone except mpd can change /usr/lib/libbz2.so.1.0
    Checking if anyone except mpd can change /usr/lib/libid3tag.so.0
    Checking if anyone except mpd can change /usr/lib/libao.so.4
    Checking if anyone except mpd can change /usr/lib/libjack.so.0
    Checking if anyone except mpd can change /usr/lib/libpthread.so.0
    Checking if anyone except mpd can change /usr/lib/libpulse.so.0
    Checking if anyone except mpd can change /usr/lib/libshout.so.3
    Checking if anyone except mpd can change /usr/lib/libsoxr.so.0
    Checking if anyone except mpd can change /usr/lib/libsamplerate.so.0
    Checking if anyone except mpd can change /usr/lib/libmp3lame.so.0
    Checking if anyone except mpd can change /usr/lib/libvorbisenc.so.2
    Checking if anyone except mpd can change /usr/lib/libicui18n.so.55
    Checking if anyone except mpd can change /usr/lib/libicuuc.so.55
    Checking if anyone except mpd can change /usr/lib/libz.so.1
    Checking if anyone except mpd can change /usr/lib/libsystemd.so.0
    Checking if anyone except mpd can change /usr/lib/libm.so.6
    Checking if anyone except mpd can change /usr/lib/libstdc++.so.6
    Checking if anyone except mpd can change /usr/lib/libc.so.6
    Checking if anyone except mpd can change /usr/lib/libthreadutil.so.6
    Checking if anyone except mpd can change /usr/lib/libtevent-util.so.0
    Checking if anyone except mpd can change /usr/lib/samba/liblibcli-lsa3-samba4.so
    Checking if anyone except mpd can change /usr/lib/samba/libsamba-security-samba4.so
    Checking if anyone except mpd can change /usr/lib/samba/liberrors-samba4.so
    Checking if anyone except mpd can change /usr/lib/samba/libsamba3-util-samba4.so
    Checking if anyone except mpd can change /usr/lib/libsamba-util.so.0
    Checking if anyone except mpd can change /usr/lib/samba/liblibsmb-samba4.so
    Checking if anyone except mpd can change /usr/lib/samba/libmsrpc3-samba4.so
    Checking if anyone except mpd can change /usr/lib/libsmbconf.so.0
    Checking if anyone except mpd can change /usr/lib/libndr.so.0
    Checking if anyone except mpd can change /usr/lib/samba/libsamba-debug-samba4.so
    Checking if anyone except mpd can change /usr/lib/samba/libdcerpc-samba-samba4.so
    Checking if anyone except mpd can change /usr/lib/samba/libcli-smb-common-samba4.so
    Checking if anyone except mpd can change /usr/lib/samba/libgse-samba4.so
    Checking if anyone except mpd can change /usr/lib/samba/libutil-cmdline-samba4.so
    Checking if anyone except mpd can change /usr/lib/libndr-standard.so.0
    Checking if anyone except mpd can change /usr/lib/samba/libsmbregistry-samba4.so
    Checking if anyone except mpd can change /usr/lib/samba/libsecrets3-samba4.so
    Checking if anyone except mpd can change /usr/lib/libtalloc.so.2
    Checking if anyone except mpd can change /usr/lib/libbsd.so.0
    Checking if anyone except mpd can change /usr/lib/libtevent.so.0
    Checking if anyone except mpd can change /usr/lib/libdl.so.2
    Checking if anyone except mpd can change /usr/lib/libgcc_s.so.1
    Checking if anyone except mpd can change /usr/lib/libgmp.so.10
    Checking if anyone except mpd can change /usr/lib/libssh.so.4
    Checking if anyone except mpd can change /usr/lib/libbluray.so.1
    Checking if anyone except mpd can change /usr/lib/libgnutls.so.30
    Checking if anyone except mpd can change /usr/lib/libswresample.so.1
    Checking if anyone except mpd can change /usr/lib/libva.so.1
    Checking if anyone except mpd can change /usr/lib/libxvidcore.so.4
    Checking if anyone except mpd can change /usr/lib/libx265.so.68
    Checking if anyone except mpd can change /usr/lib/libx264.so.148
    Checking if anyone except mpd can change /usr/lib/libwebp.so.5
    Checking if anyone except mpd can change /usr/lib/libvpx.so.2
    Checking if anyone except mpd can change /usr/lib/libtheoraenc.so.1
    Checking if anyone except mpd can change /usr/lib/libtheoradec.so.1
    Checking if anyone except mpd can change /usr/lib/libspeex.so.1
    Checking if anyone except mpd can change /usr/lib/libschroedinger-1.0.so.0
    Checking if anyone except mpd can change /usr/lib/libopenjpeg.so.1
    Checking if anyone except mpd can change /usr/lib/libopencore-amrwb.so.0
    Checking if anyone except mpd can change /usr/lib/libopencore-amrnb.so.0
    Checking if anyone except mpd can change /usr/lib/libgsm.so.1
    Checking if anyone except mpd can change /usr/lib/liblzma.so.5
    Checking if anyone except mpd can change /usr/lib/libidn.so.11
    Checking if anyone except mpd can change /usr/lib/libssh2.so.1
    Checking if anyone except mpd can change /usr/lib/libssl.so.1.0.0
    Checking if anyone except mpd can change /usr/lib/libcrypto.so.1.0.0
    Checking if anyone except mpd can change /usr/lib/libgssapi_krb5.so.2
    Checking if anyone except mpd can change /usr/lib/libkrb5.so.3
    Checking if anyone except mpd can change /usr/lib/libk5crypto.so.3
    Checking if anyone except mpd can change /usr/lib/libcom_err.so.2
    Checking if anyone except mpd can change /usr/lib/libpcre.so.1
    Checking if anyone except mpd can change /usr/lib/librt.so.1
    Checking if anyone except mpd can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except mpd can change /usr/lib/libdb-5.3.so
    Checking if anyone except mpd can change /usr/lib/pulseaudio/libpulsecommon-7.0.so
    Checking if anyone except mpd can change /usr/lib/libjson-c.so.2
    Checking if anyone except mpd can change /usr/lib/libtheora.so.0
    Checking if anyone except mpd can change /usr/lib/libgomp.so.1
    Checking if anyone except mpd can change /usr/lib/libicudata.so.55
    Checking if anyone except mpd can change /usr/lib/libresolv.so.2
    Checking if anyone except mpd can change /usr/lib/liblz4.so.1
    Checking if anyone except mpd can change /usr/lib/libgcrypt.so.20
    Checking if anyone except mpd can change /usr/lib/libgpg-error.so.0
    Checking if anyone except mpd can change /usr/lib/libcap.so.2
    Checking if anyone except mpd can change /usr/lib/samba/libreplace-samba4.so
    Checking if anyone except mpd can change /usr/lib/samba/libutil-setid-samba4.so
    Checking if anyone except mpd can change /usr/lib/samba/libtime-basic-samba4.so
    Checking if anyone except mpd can change /usr/lib/samba/libgenrand-samba4.so
    Checking if anyone except mpd can change /usr/lib/samba/libsocket-blocking-samba4.so
    Checking if anyone except mpd can change /usr/lib/libsystemd-daemon.so.0
    Checking if anyone except mpd can change /usr/lib/libwbclient.so.0
    Checking if anyone except mpd can change /usr/lib/libsamba-credentials.so.0
    Checking if anyone except mpd can change /usr/lib/samba/libndr-samba-samba4.so
    Checking if anyone except mpd can change /usr/lib/samba/libcli-cldap-samba4.so
    Checking if anyone except mpd can change /usr/lib/samba/libcliauth-samba4.so
    Checking if anyone except mpd can change /usr/lib/samba/libkrb5samba-samba4.so
    Checking if anyone except mpd can change /usr/lib/libgensec.so.0
    Checking if anyone except mpd can change /usr/lib/samba/libasn1util-samba4.so
    Checking if anyone except mpd can change /usr/lib/libsamba-hostconfig.so.0
    Checking if anyone except mpd can change /usr/lib/libndr-nbt.so.0
    Checking if anyone except mpd can change /usr/lib/samba/libsmb-transport-samba4.so
    Checking if anyone except mpd can change /usr/lib/samba/libCHARSET3-samba4.so
    Checking if anyone except mpd can change /usr/lib/samba/libdbwrap-samba4.so
    Checking if anyone except mpd can change /usr/lib/libdcerpc-binding.so.0
    Checking if anyone except mpd can change /usr/lib/samba/libutil-tdb-samba4.so
    Checking if anyone except mpd can change /usr/lib/samba/libsamba-sockets-samba4.so
    Checking if anyone except mpd can change /usr/lib/samba/libmessages-util-samba4.so
    Checking if anyone except mpd can change /usr/lib/samba/libtalloc-report-samba4.so
    Checking if anyone except mpd can change /usr/lib/samba/libmessages-dgm-samba4.so
    Checking if anyone except mpd can change /usr/lib/samba/libserver-id-db-samba4.so
    Checking if anyone except mpd can change /usr/lib/samba/libsamba-cluster-support-samba4.so
    Checking if anyone except mpd can change /usr/lib/samba/libsys-rw-samba4.so
    Checking if anyone except mpd can change /usr/lib/samba/libutil-reg-samba4.so
    Checking if anyone except mpd can change /usr/lib/samba/libinterfaces-samba4.so
    Checking if anyone except mpd can change /usr/lib/samba/libsmbd-shim-samba4.so
    Checking if anyone except mpd can change /usr/lib/samba/libtdb-wrap-samba4.so
    Checking if anyone except mpd can change /usr/lib/samba/libserver-role-samba4.so
    Checking if anyone except mpd can change /usr/lib/libnsl.so.1
    Checking if anyone except mpd can change /usr/lib/libtdb.so.1
    Checking if anyone except mpd can change /usr/lib/liblber-2.4.so.2
    Checking if anyone except mpd can change /usr/lib/libldap-2.4.so.2
    Checking if anyone except mpd can change /usr/lib/libsystemd-journal.so.0
    Checking if anyone except mpd can change /usr/lib/samba/libiov-buf-samba4.so
    Checking if anyone except mpd can change /usr/lib/samba/libkrb5-samba4.so.26
    Checking if anyone except mpd can change /usr/lib/samba/libaddns-samba4.so
    Checking if anyone except mpd can change /usr/lib/samba/libgssapi-samba4.so.2
    Checking if anyone except mpd can change /usr/lib/samba/libauthkrb5-samba4.so
    Checking if anyone except mpd can change /usr/lib/samba/libcli-nbt-samba4.so
    Checking if anyone except mpd can change /usr/lib/libxml2.so.2
    Checking if anyone except mpd can change /usr/lib/libfontconfig.so.1
    Checking if anyone except mpd can change /usr/lib/libfreetype.so.6
    Checking if anyone except mpd can change /usr/lib/libp11-kit.so.0
    Checking if anyone except mpd can change /usr/lib/libtasn1.so.6
    Checking if anyone except mpd can change /usr/lib/libnettle.so.6
    Checking if anyone except mpd can change /usr/lib/libhogweed.so.4
    Checking if anyone except mpd can change /usr/lib/liborc-0.4.so.0
    Checking if anyone except mpd can change /usr/lib/libkrb5support.so.0
    Checking if anyone except mpd can change /usr/lib/libkeyutils.so.1
    Checking if anyone except mpd can change /usr/lib/libxcb.so.1
    Checking if anyone except mpd can change /usr/lib/libasyncns.so.0
    Checking if anyone except mpd can change /usr/lib/libattr.so.1
    Checking if anyone except mpd can change /usr/lib/samba/libwinbind-client-samba4.so
    Checking if anyone except mpd can change /usr/lib/samba/libsamdb-common-samba4.so
    Checking if anyone except mpd can change /usr/lib/samba/libldbsamba-samba4.so
    Checking if anyone except mpd can change /usr/lib/libldb.so.1
    Checking if anyone except mpd can change /usr/lib/samba/libcli-ldap-common-samba4.so
    Checking if anyone except mpd can change /usr/lib/samba/libasn1-samba4.so.8
    Checking if anyone except mpd can change /usr/lib/samba/libsamba-modules-samba4.so
    Checking if anyone except mpd can change /usr/lib/libsamdb.so.0
    Checking if anyone except mpd can change /usr/lib/samba/libmsghdr-samba4.so
    Checking if anyone except mpd can change /usr/lib/libsasl2.so.3
    Checking if anyone except mpd can change /usr/lib/samba/libheimbase-samba4.so.1
    Checking if anyone except mpd can change /usr/lib/samba/libroken-samba4.so.19
    Checking if anyone except mpd can change /usr/lib/samba/libhx509-samba4.so.5
    Checking if anyone except mpd can change /usr/lib/samba/libhcrypto-samba4.so.5
    Checking if anyone except mpd can change /usr/lib/samba/libwind-samba4.so.0
    Checking if anyone except mpd can change /usr/lib/samba/libauth-sam-reply-samba4.so
    Checking if anyone except mpd can change /usr/lib/libndr-krb5pac.so.0
    Checking if anyone except mpd can change /usr/lib/libpng16.so.16
    Checking if anyone except mpd can change /usr/lib/libharfbuzz.so.0
    Checking if anyone except mpd can change /usr/lib/libffi.so.6
    Checking if anyone except mpd can change /usr/lib/libXau.so.6
    Checking if anyone except mpd can change /usr/lib/libXdmcp.so.6
    Checking if anyone except mpd can change /usr/lib/samba/libflag-mapping-samba4.so
    Checking if anyone except mpd can change /usr/lib/libgraphite2.so.3
    Checking if anyone except mpd can change /
    Checking if anyone except mpd can change //
    Checking if anyone except mpd can change ///
    Checking if anyone except mpd can change /1000000
    Checking if anyone except mpd can change /16sv
    Checking if anyone except mpd can change /4
    Checking if anyone except mpd can change /8svx
    Checking if anyone except mpd can change /aac
    Checking if anyone except mpd can change /aacp
    Checking if anyone except mpd can change /ac3
    Checking if anyone except mpd can change /aiffaudio/amr
    Checking if anyone except mpd can change /anim
    Checking if anyone except mpd can change /ATI
    Checking if anyone except mpd can change /basic
    Checking if anyone except mpd can change /dev/dsp
    Checking if anyone except mpd can change /dev/mixer
    Checking if anyone except mpd can change /dev/null
[UPC004] WARNING: /usr/bin/mpd is currently running as mpd. /usr/bin/mpd contains the string /dev/null. World write is set for /dev/null
    Checking if anyone except mpd can change /dev/sound/dsp
    Checking if anyone except mpd can change /flac
    Checking if anyone except mpd can change /flv
    Checking if anyone except mpd can change /H
    Checking if anyone except mpd can change /Hi
    Checking if anyone except mpd can change /I
    Checking if anyone except mpd can change /Input
    Checking if anyone except mpd can change /L
    Checking if anyone except mpd can change /m4a
    Checking if anyone except mpd can change /mp4
    Checking if anyone except mpd can change /mpeg
    Checking if anyone except mpd can change /msvideo
    Checking if anyone except mpd can change /musepack
    Checking if anyone except mpd can change /octet-stream
    Checking if anyone except mpd can change /ogg
    Checking if anyone except mpd can change /opus
    Checking if anyone except mpd can change /qcelp
    Checking if anyone except mpd can change /quicktime
    Checking if anyone except mpd can change /t3L9
    Checking if anyone except mpd can change /t9H
    Checking if anyone except mpd can change /tBH
    Checking if anyone except mpd can change /tDH
    Checking if anyone except mpd can change /t/H
    Checking if anyone except mpd can change /theora
    Checking if anyone except mpd can change /tPI
    Checking if anyone except mpd can change /tsH
    Checking if anyone except mpd can change /twH
    Checking if anyone except mpd can change /txH
    Checking if anyone except mpd can change /vorbis
    Checking if anyone except mpd can change /wav
    Checking if anyone except mpd can change /webm
    Checking if anyone except mpd can change /writing
    Checking if anyone except mpd can change /x-16sv
    Checking if anyone except mpd can change /x-8svx
    Checking if anyone except mpd can change /x-aac
    Checking if anyone except mpd can change /x-ac3
    Checking if anyone except mpd can change /x-aiff
    Checking if anyone except mpd can change /x-aiffaudio/x-alaw
    Checking if anyone except mpd can change /x-au
    Checking if anyone except mpd can change /x-cue
    Checking if anyone except mpd can change /x-dca
    Checking if anyone except mpd can change /x-dff
    Checking if anyone except mpd can change /x-dsf
    Checking if anyone except mpd can change /x-dv
    Checking if anyone except mpd can change /x-eac3
    Checking if anyone except mpd can change /x-flac
    Checking if anyone except mpd can change /x-flv
    Checking if anyone except mpd can change /x-gsm
    Checking if anyone except mpd can change /x-mace
    Checking if anyone except mpd can change /x-matroska
    Checking if anyone except mpd can change /x-mjpeg
    Checking if anyone except mpd can change /xml
    Checking if anyone except mpd can change /x-monkeys-audio
    Checking if anyone except mpd can change /x-mpd-cdda-pcm
    Checking if anyone except mpd can change /x-mpd-cdda-pcm-reverse
    Checking if anyone except mpd can change /x-mpd-ffmpeg
    Checking if anyone except mpd can change /x-mpeg
    Checking if anyone except mpd can change /x-mpegurl
    Checking if anyone except mpd can change /x-ms-asf
    Checking if anyone except mpd can change /x-msvideo
    Checking if anyone except mpd can change /x-ms-wax
    Checking if anyone except mpd can change /x-ms-wm
    Checking if anyone except mpd can change /x-ms-wma
    Checking if anyone except mpd can change /x-ms-wmd
    Checking if anyone except mpd can change /x-ms-wmv
    Checking if anyone except mpd can change /x-ms-wmx
    Checking if anyone except mpd can change /x-ms-wmz
    Checking if anyone except mpd can change /x-ms-wvx
    Checking if anyone except mpd can change /x-musepack
    Checking if anyone except mpd can change /x-nut
    Checking if anyone except mpd can change /x-ogg
    Checking if anyone except mpd can change /x-pn-multirate-realaudio
    Checking if anyone except mpd can change /x-pn-realaudio
    Checking if anyone except mpd can change /x-pva
    Checking if anyone except mpd can change /x-scpls
    Checking if anyone except mpd can change /x-shockwave-flash
    Checking if anyone except mpd can change /x-shorten
    Checking if anyone except mpd can change /x-speex
    Checking if anyone except mpd can change /x-theora
    Checking if anyone except mpd can change /x-ttaaudio/x-voc
    Checking if anyone except mpd can change /x-vid
    Checking if anyone except mpd can change /x-vorbis
    Checking if anyone except mpd can change /x-wav
    Checking if anyone except mpd can change /x-wavpack
    Checking if anyone except mpd can change /x-wma
    Checking if anyone except mpd can change /x-wmv
    Checking if anyone except mpd can change /x-wv
    Checking if anyone except mpd can change /x-xvid
------------------------
PID:           362
Owner:         dbus
Program path:  /usr/bin/dbus-daemon
    Checking if anyone except dbus can change /usr/bin/dbus-daemon
    Checking if anyone except dbus can change /usr/lib/libdbus-1.so.3
    Checking if anyone except dbus can change /usr/lib/libsystemd.so.0
    Checking if anyone except dbus can change /usr/lib/libexpat.so.1
    Checking if anyone except dbus can change /usr/lib/libpthread.so.0
    Checking if anyone except dbus can change /usr/lib/libc.so.6
    Checking if anyone except dbus can change /usr/lib/libdl.so.2
    Checking if anyone except dbus can change /usr/lib/librt.so.1
    Checking if anyone except dbus can change /usr/lib/libm.so.6
    Checking if anyone except dbus can change /usr/lib/libresolv.so.2
    Checking if anyone except dbus can change /usr/lib/liblzma.so.5
    Checking if anyone except dbus can change /usr/lib/liblz4.so.1
    Checking if anyone except dbus can change /usr/lib/libgcrypt.so.20
    Checking if anyone except dbus can change /usr/lib/libgpg-error.so.0
    Checking if anyone except dbus can change /usr/lib/libcap.so.2
    Checking if anyone except dbus can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except dbus can change /usr/lib/libattr.so.1
    Checking if anyone except dbus can change /D
    Checking if anyone except dbus can change /dbus-1/services
    Checking if anyone except dbus can change /dbus-1/system-services
    Checking if anyone except dbus can change /dev/null
[UPC004] WARNING: /usr/bin/dbus-daemon is currently running as dbus. /usr/bin/dbus-daemon contains the string /dev/null. World write is set for /dev/null
    Checking if anyone except dbus can change //freedesktop//DTD
    Checking if anyone except dbus can change /Hcs
    Checking if anyone except dbus can change /lib
    Checking if anyone except dbus can change /org/freedesktop/DBus
    Checking if anyone except dbus can change /run/console/
    Checking if anyone except dbus can change /run/systemd/seats/
    Checking if anyone except dbus can change /uC9
    Checking if anyone except dbus can change /usr/local/share
[UPC001] WARNING: /usr/bin/dbus-daemon is currently running as dbus. /usr/bin/dbus-daemon contains the string /usr/local/share. The user nahoskins can write to /usr/local/share
[UPC001] WARNING: /usr/bin/dbus-daemon is currently running as dbus. /usr/bin/dbus-daemon contains the string /usr/local/share. The user nahoskins can write to /usr/local
    Checking if anyone except dbus can change /usr/share
    Checking if anyone except dbus can change /value
------------------------
PID:           364
Owner:         bitlbee
Program path:  /usr/bin/bitlbee
    Checking if anyone except bitlbee can change /usr/bin/bitlbee
    Checking if anyone except bitlbee can change /usr/lib/libm.so.6
    Checking if anyone except bitlbee can change /usr/lib/libgmodule-2.0.so.0
    Checking if anyone except bitlbee can change /usr/lib/libglib-2.0.so.0
    Checking if anyone except bitlbee can change /usr/lib/libgnutls.so.30
    Checking if anyone except bitlbee can change /usr/lib/libgcrypt.so.20
    Checking if anyone except bitlbee can change /usr/lib/libresolv.so.2
    Checking if anyone except bitlbee can change /usr/lib/libpthread.so.0
    Checking if anyone except bitlbee can change /usr/lib/libc.so.6
    Checking if anyone except bitlbee can change /usr/lib/libdl.so.2
    Checking if anyone except bitlbee can change /usr/lib/libpcre.so.1
    Checking if anyone except bitlbee can change /usr/lib/libz.so.1
    Checking if anyone except bitlbee can change /usr/lib/libp11-kit.so.0
    Checking if anyone except bitlbee can change /usr/lib/libtasn1.so.6
    Checking if anyone except bitlbee can change /usr/lib/libnettle.so.6
    Checking if anyone except bitlbee can change /usr/lib/libhogweed.so.4
    Checking if anyone except bitlbee can change /usr/lib/libgmp.so.10
    Checking if anyone except bitlbee can change /usr/lib/libgpg-error.so.0
    Checking if anyone except bitlbee can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except bitlbee can change /usr/lib/libffi.so.6
    Checking if anyone except bitlbee can change /
    Checking if anyone except bitlbee can change //
    Checking if anyone except bitlbee can change /1
    Checking if anyone except bitlbee can change /9999
    Checking if anyone except bitlbee can change /Account
    Checking if anyone except bitlbee can change /bit
    Checking if anyone except bitlbee can change /channel
    Checking if anyone except bitlbee can change /contactId
    Checking if anyone except bitlbee can change /corrupted
    Checking if anyone except bitlbee can change /deny
    Checking if anyone except bitlbee can change /dev/null
[UPC004] WARNING: /usr/bin/bitlbee is currently running as bitlbee. /usr/bin/bitlbee contains the string /dev/null. World write is set for /dev/null
    Checking if anyone except bitlbee can change /dev/urandom
[UPC004] WARNING: /usr/bin/bitlbee is currently running as bitlbee. /usr/bin/bitlbee contains the string /dev/urandom. World write is set for /dev/urandom
    Checking if anyone except bitlbee can change /-F
    Checking if anyone except bitlbee can change /groupId
    Checking if anyone except bitlbee can change /guid
    Checking if anyone except bitlbee can change /H
    Checking if anyone except bitlbee can change /hashing
    Checking if anyone except bitlbee can change /her
    Checking if anyone except bitlbee can change /identity
    Checking if anyone except bitlbee can change /InetD
    Checking if anyone except bitlbee can change /Invalid
    Checking if anyone except bitlbee can change /javascript
    Checking if anyone except bitlbee can change /join
    Checking if anyone except bitlbee can change /json
    Checking if anyone except bitlbee can change /LIST
    Checking if anyone except bitlbee can change /M
    Checking if anyone except bitlbee can change /me
    Checking if anyone except bitlbee can change /NAMES
    Checking if anyone except bitlbee can change /nick
    Checking if anyone except bitlbee can change /OPER
    Checking if anyone except bitlbee can change /other
    Checking if anyone except bitlbee can change /README
    Checking if anyone except bitlbee can change /reject
    Checking if anyone except bitlbee can change /RML
    Checking if anyone except bitlbee can change /run/bit
    Checking if anyone except bitlbee can change /soap
    Checking if anyone except bitlbee can change /statuses/destroy/
    Checking if anyone except bitlbee can change /statuses/retweet/
    Checking if anyone except bitlbee can change /statuses/show/
    Checking if anyone except bitlbee can change /streamH
    Checking if anyone except bitlbee can change /t
    Checking if anyone except bitlbee can change /t6B
    Checking if anyone except bitlbee can change /timeline
    Checking if anyone except bitlbee can change //TRANSLIT
    Checking if anyone except bitlbee can change /Typing
    Checking if anyone except bitlbee can change /user
    Checking if anyone except bitlbee can change /usr/lib/bitlbee/
    Checking if anyone except bitlbee can change /var/lib/bitlbee/
    Checking if anyone except bitlbee can change /WHO
    Checking if anyone except bitlbee can change /WHOIS
    Checking if anyone except bitlbee can change /WIN32
    Checking if anyone except bitlbee can change /write
    Checking if anyone except bitlbee can change /x86_64
    Checking if anyone except bitlbee can change /x-msmsgsactivemailnotification
    Checking if anyone except bitlbee can change /x-msmsgsemailnotification
    Checking if anyone except bitlbee can change /x-msmsgsinitialemailnotification
    Checking if anyone except bitlbee can change /x-msmsgsprofile
    Checking if anyone except bitlbee can change /x-msmsgssystemmessage
    Checking if anyone except bitlbee can change /x-www-form-urlencoded
------------------------
PID:           365
Owner:         root
Program path:  /usr/lib/bluetooth/bluetoothd
    Checking if anyone except root can change /usr/lib/bluetooth/bluetoothd
    Checking if anyone except root can change /usr/lib/libglib-2.0.so.0
    Checking if anyone except root can change /usr/lib/libdbus-1.so.3
    Checking if anyone except root can change /usr/lib/libdl.so.2
    Checking if anyone except root can change /usr/lib/librt.so.1
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /usr/lib/libpcre.so.1
    Checking if anyone except root can change /usr/lib/libpthread.so.0
    Checking if anyone except root can change /usr/lib/libsystemd.so.0
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /usr/lib/libm.so.6
    Checking if anyone except root can change /usr/lib/libresolv.so.2
    Checking if anyone except root can change /usr/lib/liblzma.so.5
    Checking if anyone except root can change /usr/lib/liblz4.so.1
    Checking if anyone except root can change /usr/lib/libgcrypt.so.20
    Checking if anyone except root can change /usr/lib/libgpg-error.so.0
    Checking if anyone except root can change /usr/lib/libcap.so.2
    Checking if anyone except root can change /usr/lib/libattr.so.1
    Checking if anyone except root can change /
    Checking if anyone except root can change /1
    Checking if anyone except root can change /3H
    Checking if anyone except root can change /C
    Checking if anyone except root can change /dev/input/uinput
    Checking if anyone except root can change /dev/misc/uinput
    Checking if anyone except root can change /dev/rfkill
    Checking if anyone except root can change /dev/uhid
    Checking if anyone except root can change /dev/uinput
    Checking if anyone except root can change /dev/urandom
[UPC004] WARNING: /usr/lib/bluetooth/bluetoothd is currently running as root. /usr/lib/bluetooth/bluetoothd contains the string /dev/urandom. World write is set for /dev/urandom
    Checking if anyone except root can change /EDR
    Checking if anyone except root can change /fA9
    Checking if anyone except root can change /Filesystem
    Checking if anyone except root can change //freedesktop//DTD
    Checking if anyone except root can change /H
    Checking if anyone except root can change /Haute
    Checking if anyone except root can change /invalid
    Checking if anyone except root can change /NowPlaying
    Checking if anyone except root can change /O
    Checking if anyone except root can change /org/bluez
    Checking if anyone except root can change /org/bluez/neard_handover_agent
    Checking if anyone except root can change /org/bluez/test
    Checking if anyone except root can change /org/freedesktop/DBus
    Checking if anyone except root can change /org/freedesktop/hostname1
    Checking if anyone except root can change /org/freedesktop/PolicyKit1/Authority
    Checking if anyone except root can change /Pj
    Checking if anyone except root can change /S
    Checking if anyone except root can change /sdp
    Checking if anyone except root can change /search
    Checking if anyone except root can change /SH
    Checking if anyone except root can change /sys/class/dmi/id/chassis_type
    Checking if anyone except root can change /tC
    Checking if anyone except root can change /uFH
    Checking if anyone except root can change /ukH
    Checking if anyone except root can change /USH
    Checking if anyone except root can change /usr/lib/bluetooth/plugins
    Checking if anyone except root can change /var/lib/bluetooth
    Checking if anyone except root can change /var/runA
    Checking if anyone except root can change /var/runH
    Checking if anyone except root can change /var/run/sdp
    Checking if anyone except root can change /Video
    Checking if anyone except root can change /write
    Checking if anyone except root can change /written
------------------------
PID:           367
Owner:         root
Program path:  /usr/bin/pommed
    Checking if anyone except root can change /usr/bin/pommed
    Checking if anyone except root can change /usr/lib/librt.so.1
    Checking if anyone except root can change /usr/lib/libasound.so.2
    Checking if anyone except root can change /usr/lib/libaudiofile.so.1
    Checking if anyone except root can change /usr/lib/libconfuse.so.0
    Checking if anyone except root can change /usr/lib/libpci.so.3
    Checking if anyone except root can change /usr/lib/libpthread.so.0
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /usr/lib/libm.so.6
    Checking if anyone except root can change /usr/lib/libdl.so.2
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /usr/lib/libFLAC.so.8
    Checking if anyone except root can change /usr/lib/libstdc++.so.6
    Checking if anyone except root can change /usr/lib/libgcc_s.so.1
    Checking if anyone except root can change /usr/lib/libresolv.so.2
    Checking if anyone except root can change /usr/lib/libogg.so.0
    Checking if anyone except root can change /dev/dvd
    Checking if anyone except root can change /dev/input
    Checking if anyone except root can change /dev/input/event
    Checking if anyone except root can change /dev/input/uinput
    Checking if anyone except root can change /dev/misc/uinput
    Checking if anyone except root can change /dev/null
[UPC004] WARNING: /usr/bin/pommed is currently running as root. /usr/bin/pommed contains the string /dev/null. World write is set for /dev/null
    Checking if anyone except root can change /dev/uinput
    Checking if anyone except root can change /DVD
    Checking if anyone except root can change /GMA965
    Checking if anyone except root can change /goutte
    Checking if anyone except root can change /goutteH
    Checking if anyone except root can change /pause
    Checking if anyone except root can change /pomme
    Checking if anyone except root can change /pommeH
    Checking if anyone except root can change /proc/acpi/ac_adapter/ADP1/state
    Checking if anyone except root can change /sys/class/backlight/acpi_video0/actual_brightness
    Checking if anyone except root can change /sys/class/backlight/acpi_video0/brightness
    Checking if anyone except root can change /sys/class/backlight/acpi_video0/max_brightness
    Checking if anyone except root can change /sys/class/backlight/apple_backlight/actual_brightness
    Checking if anyone except root can change /sys/class/backlight/apple_backlight/brightness
    Checking if anyone except root can change /sys/class/backlight/apple_backlight/max_brightness
    Checking if anyone except root can change /sys/class/backlight/gmux_backlight/actual_brightness
    Checking if anyone except root can change /sys/class/backlight/gmux_backlight/brightness
    Checking if anyone except root can change /sys/class/backlight/gmux_backlight/max_brightness
    Checking if anyone except root can change /sys/class/backlight/intel_backlight/actual_brightness
    Checking if anyone except root can change /sys/class/backlight/intel_backlight/brightness
    Checking if anyone except root can change /sys/class/backlight/intel_backlight/max_brightness
    Checking if anyone except root can change /sys/class/backlight/nv_backlight/actual_brightness
    Checking if anyone except root can change /sys/class/backlight/nv_backlight/brightness
    Checking if anyone except root can change /sys/class/backlight/nv_backlight/max_brightness
    Checking if anyone except root can change /sys/class/backlight/nvidia_backlight/actual_brightness
    Checking if anyone except root can change /sys/class/backlight/nvidia_backlight/brightness
    Checking if anyone except root can change /sys/class/backlight/nvidia_backlight/max_brightness
    Checking if anyone except root can change /sys/class/dmi/id/bios_vendor
    Checking if anyone except root can change /sys/class/dmi/id/board_vendor
    Checking if anyone except root can change /sys/class/dmi/id/chassis_vendor
    Checking if anyone except root can change /sys/class/dmi/id/product_name
    Checking if anyone except root can change /sys/class/dmi/id/sys_vendor
    Checking if anyone except root can change /sys/class/leds/smc
    Checking if anyone except root can change /sys/class/power_supply/ADP1/online
    Checking if anyone except root can change /sys/module/hid_apple/parameters/fnmode
    Checking if anyone except root can change /sys/module/hid/parameters/pb_fnmode
    Checking if anyone except root can change /sys/module/usbhid/parameters/pb_fnmode
    Checking if anyone except root can change /usr/bin/eject
    Checking if anyone except root can change /usr/shaH
------------------------
PID:           37
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           371
Owner:         root
Program path:  /sbin/agetty
    Checking if anyone except root can change /sbin/agetty
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /
    Checking if anyone except root can change /1
    Checking if anyone except root can change /A
    Checking if anyone except root can change /bin/login
    Checking if anyone except root can change /dev/null
[UPC004] WARNING: /sbin/agetty is currently running as root. /sbin/agetty contains the string /dev/null. World write is set for /dev/null
    Checking if anyone except root can change /etc/issue
    Checking if anyone except root can change /etc/os-release
    Checking if anyone except root can change /H
    Checking if anyone except root can change /run/numlock-on
    Checking if anyone except root can change /usr/bin/plymouth
    Checking if anyone except root can change /usr/lib/os-release
    Checking if anyone except root can change /usr/share/locale
    Checking if anyone except root can change /var/log/wtmp
    Checking if anyone except root can change /var/run/utmp
    Checking if anyone except root can change /write
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
    Checking if anyone except polkitd can change /usr/lib/libpolkit-gobject-1.so.0
    Checking if anyone except polkitd can change /usr/lib/libgio-2.0.so.0
    Checking if anyone except polkitd can change /usr/lib/libgobject-2.0.so.0
    Checking if anyone except polkitd can change /usr/lib/libglib-2.0.so.0
    Checking if anyone except polkitd can change /usr/lib/libsystemd.so.0
    Checking if anyone except polkitd can change /usr/lib/libexpat.so.1
    Checking if anyone except polkitd can change /usr/lib/libmozjs-17.0.so
    Checking if anyone except polkitd can change /usr/lib/libpthread.so.0
    Checking if anyone except polkitd can change /usr/lib/libc.so.6
    Checking if anyone except polkitd can change /usr/lib/libgmodule-2.0.so.0
    Checking if anyone except polkitd can change /usr/lib/libffi.so.6
    Checking if anyone except polkitd can change /usr/lib/libdl.so.2
    Checking if anyone except polkitd can change /usr/lib/libpcre.so.1
    Checking if anyone except polkitd can change /usr/lib/libz.so.1
    Checking if anyone except polkitd can change /usr/lib/libresolv.so.2
    Checking if anyone except polkitd can change /usr/lib/librt.so.1
    Checking if anyone except polkitd can change /usr/lib/libm.so.6
    Checking if anyone except polkitd can change /usr/lib/liblzma.so.5
    Checking if anyone except polkitd can change /usr/lib/liblz4.so.1
    Checking if anyone except polkitd can change /usr/lib/libgcrypt.so.20
    Checking if anyone except polkitd can change /usr/lib/libgpg-error.so.0
    Checking if anyone except polkitd can change /usr/lib/libcap.so.2
    Checking if anyone except polkitd can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except polkitd can change /usr/lib/libnspr4.so
    Checking if anyone except polkitd can change /usr/lib/libstdc++.so.6
    Checking if anyone except polkitd can change /usr/lib/libattr.so.1
    Checking if anyone except polkitd can change /usr/lib/libgcc_s.so.1
    Checking if anyone except polkitd can change /
    Checking if anyone except polkitd can change /bin
    Checking if anyone except polkitd can change /dev/null
[UPC004] WARNING: /usr/lib/polkit-1/polkitd is currently running as polkitd. /usr/lib/polkit-1/polkitd contains the string /dev/null. World write is set for /dev/null
    Checking if anyone except polkitd can change /org/freedesktop/DBus
    Checking if anyone except polkitd can change /org/freedesktop/PolicyKit1/Authority
    Checking if anyone except polkitd can change /sbin
    Checking if anyone except polkitd can change /usr/bin
    Checking if anyone except polkitd can change /usr/sbin
    Checking if anyone except polkitd can change /usr/share/polkit-1/actions
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
    Checking if anyone except root can change /usr/lib/libpthread.so.0
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /
    Checking if anyone except root can change /0123
    Checking if anyone except root can change /A
    Checking if anyone except root can change /Alaska
    Checking if anyone except root can change /Aleutian
    Checking if anyone except root can change /Algiers
    Checking if anyone except root can change /Anadyr
    Checking if anyone except root can change /Asuncion
    Checking if anyone except root can change /Athens
    Checking if anyone except root can change /Atlantic
    Checking if anyone except root can change /Auckland
    Checking if anyone except root can change /Azores
    Checking if anyone except root can change /Baghdad
    Checking if anyone except root can change /Baku
    Checking if anyone except root can change /Casablanca
    Checking if anyone except root can change /Central
    Checking if anyone except root can change /Chatham
    Checking if anyone except root can change /Choibalsan
    Checking if anyone except root can change /Continental
    Checking if anyone except root can change /Cuiaba
    Checking if anyone except root can change /D9D
    Checking if anyone except root can change /Dublin
    Checking if anyone except root can change /East
    Checking if anyone except root can change /EasterIsland
    Checking if anyone except root can change /Eastern
    Checking if anyone except root can change /El_Aaiun
    Checking if anyone except root can change /etc/localtime
    Checking if anyone except root can change /etc/vmware
    Checking if anyone except root can change /Eucla
    Checking if anyone except root can change /Godthab
    Checking if anyone except root can change /Guatemala
    Checking if anyone except root can change /Havana
    Checking if anyone except root can change /Hovd
    Checking if anyone except root can change /icu
    Checking if anyone except root can change /Irkutsk
    Checking if anyone except root can change /Jerusalem
    Checking if anyone except root can change /Kamchatka
    Checking if anyone except root can change /Krasnoyarsk
    Checking if anyone except root can change /L9
    Checking if anyone except root can change /London
    Checking if anyone except root can change /Lord_Howe
    Checking if anyone except root can change /Magadan
    Checking if anyone except root can change /Miquelon
    Checking if anyone except root can change /Montevideo
    Checking if anyone except root can change /Moscow
    Checking if anyone except root can change /Mountain
    Checking if anyone except root can change /Novosibirsk
    Checking if anyone except root can change /Omsk
    Checking if anyone except root can change /Pacific
    Checking if anyone except root can change /Pitcairn
    Checking if anyone except root can change /Sakhalin
    Checking if anyone except root can change /Samara
    Checking if anyone except root can change /Saskatchewan
    Checking if anyone except root can change /Scoresbysund
    Checking if anyone except root can change /South
    Checking if anyone except root can change /Stanley
    Checking if anyone except root can change /St_Johns
    Checking if anyone except root can change /Sydney
    Checking if anyone except root can change //TRANSLIT
    Checking if anyone except root can change /Tripoli
    Checking if anyone except root can change /Ulaanbaatar
    Checking if anyone except root can change /usr/share/zoneinfo/
    Checking if anyone except root can change /Vladivostok
    Checking if anyone except root can change /Volgograd
    Checking if anyone except root can change /West
    Checking if anyone except root can change /wHH
    Checking if anyone except root can change /Windhoek
    Checking if anyone except root can change /Yakutsk
    Checking if anyone except root can change /Yekaterinburg
    Checking if anyone except root can change /Yerevan
------------------------
PID:           543
Owner:         root
Program path:  /usr/bin/vmnet-netifup
    Checking if anyone except root can change /usr/bin/vmnet-netifup
    Checking if anyone except root can change /usr/lib/libpthread.so.0
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /
    Checking if anyone except root can change /0123
    Checking if anyone except root can change /A
    Checking if anyone except root can change /Alaska
    Checking if anyone except root can change /Aleutian
    Checking if anyone except root can change /Algiers
    Checking if anyone except root can change /Anadyr
    Checking if anyone except root can change /Asuncion
    Checking if anyone except root can change /Athens
    Checking if anyone except root can change /Atlantic
    Checking if anyone except root can change /Auckland
    Checking if anyone except root can change /Azores
    Checking if anyone except root can change /Baghdad
    Checking if anyone except root can change /Baku
    Checking if anyone except root can change /Casablanca
    Checking if anyone except root can change /Central
    Checking if anyone except root can change /Chatham
    Checking if anyone except root can change /Choibalsan
    Checking if anyone except root can change /Continental
    Checking if anyone except root can change /Cuiaba
    Checking if anyone except root can change /D9D
    Checking if anyone except root can change /Dublin
    Checking if anyone except root can change /East
    Checking if anyone except root can change /EasterIsland
    Checking if anyone except root can change /Eastern
    Checking if anyone except root can change /El_Aaiun
    Checking if anyone except root can change /etc/localtime
    Checking if anyone except root can change /etc/vmware
    Checking if anyone except root can change /Eucla
    Checking if anyone except root can change /Godthab
    Checking if anyone except root can change /Guatemala
    Checking if anyone except root can change /Havana
    Checking if anyone except root can change /Hovd
    Checking if anyone except root can change /icu
    Checking if anyone except root can change /Irkutsk
    Checking if anyone except root can change /Jerusalem
    Checking if anyone except root can change /Kamchatka
    Checking if anyone except root can change /Krasnoyarsk
    Checking if anyone except root can change /L9
    Checking if anyone except root can change /London
    Checking if anyone except root can change /Lord_Howe
    Checking if anyone except root can change /Magadan
    Checking if anyone except root can change /Miquelon
    Checking if anyone except root can change /Montevideo
    Checking if anyone except root can change /Moscow
    Checking if anyone except root can change /Mountain
    Checking if anyone except root can change /Novosibirsk
    Checking if anyone except root can change /Omsk
    Checking if anyone except root can change /Pacific
    Checking if anyone except root can change /Pitcairn
    Checking if anyone except root can change /Sakhalin
    Checking if anyone except root can change /Samara
    Checking if anyone except root can change /Saskatchewan
    Checking if anyone except root can change /Scoresbysund
    Checking if anyone except root can change /South
    Checking if anyone except root can change /Stanley
    Checking if anyone except root can change /St_Johns
    Checking if anyone except root can change /Sydney
    Checking if anyone except root can change //TRANSLIT
    Checking if anyone except root can change /Tripoli
    Checking if anyone except root can change /Ulaanbaatar
    Checking if anyone except root can change /usr/share/zoneinfo/
    Checking if anyone except root can change /Vladivostok
    Checking if anyone except root can change /Volgograd
    Checking if anyone except root can change /West
    Checking if anyone except root can change /wHH
    Checking if anyone except root can change /Windhoek
    Checking if anyone except root can change /Yakutsk
    Checking if anyone except root can change /Yekaterinburg
    Checking if anyone except root can change /Yerevan
------------------------
PID:           548
Owner:         root
Program path:  /usr/bin/vmnet-dhcpd
    Checking if anyone except root can change /usr/bin/vmnet-dhcpd
    Checking if anyone except root can change /usr/lib/libdl.so.2
    Checking if anyone except root can change /usr/lib/libpthread.so.0
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /
    Checking if anyone except root can change /-
    Checking if anyone except root can change /0123
    Checking if anyone except root can change /1
    Checking if anyone except root can change /9t
    Checking if anyone except root can change /A
    Checking if anyone except root can change /Alaska
    Checking if anyone except root can change /Aleutian
    Checking if anyone except root can change /Algiers
    Checking if anyone except root can change /Anadyr
    Checking if anyone except root can change /Asuncion
    Checking if anyone except root can change /Athens
    Checking if anyone except root can change /Atlantic
    Checking if anyone except root can change /Auckland
    Checking if anyone except root can change /Azores
    Checking if anyone except root can change /Baghdad
    Checking if anyone except root can change /Baku
    Checking if anyone except root can change /Casablanca
    Checking if anyone except root can change /Central
    Checking if anyone except root can change /Chatham
    Checking if anyone except root can change /Choibalsan
    Checking if anyone except root can change /conff
    Checking if anyone except root can change /Continental
    Checking if anyone except root can change /Cuiaba
    Checking if anyone except root can change /D9D
    Checking if anyone except root can change /deny
    Checking if anyone except root can change /dev/
    Checking if anyone except root can change /dev/null
[UPC004] WARNING: /usr/bin/vmnet-dhcpd is currently running as root. /usr/bin/vmnet-dhcpd contains the string /dev/null. World write is set for /dev/null
    Checking if anyone except root can change /dev/urandom
[UPC004] WARNING: /usr/bin/vmnet-dhcpd is currently running as root. /usr/bin/vmnet-dhcpd contains the string /dev/urandom. World write is set for /dev/urandom
    Checking if anyone except root can change /dev/vmnet
    Checking if anyone except root can change /Dublin
    Checking if anyone except root can change /East
    Checking if anyone except root can change /EasterIsland
    Checking if anyone except root can change /Eastern
    Checking if anyone except root can change /El_Aaiun
    Checking if anyone except root can change /etc/annvix-release
    Checking if anyone except root can change /etc/arch-release
    Checking if anyone except root can change /etc/arklinux-release
    Checking if anyone except root can change /etc/aurox-release
    Checking if anyone except root can change /etc/blackcat-release
    Checking if anyone except root can change /etc/cobalt-release
    Checking if anyone except root can change /etc/conectiva-release
    Checking if anyone except root can change /etc/debian_release
    Checking if anyone except root can change /etc/debian_version
    Checking if anyone except root can change /etc/e-smith-release
    Checking if anyone except root can change /etc/fedora-release
    Checking if anyone except root can change /etc/gentoo-release
    Checking if anyone except root can change /etc/immunix-release
    Checking if anyone except root can change /etc/knoppix_version
    Checking if anyone except root can change /etc/lfs-release
    Checking if anyone except root can change /etc/linuxppc-release
    Checking if anyone except root can change /etc/localtime
    Checking if anyone except root can change /etc/lsb-release
    Checking if anyone except root can change /etc/mandrakelinux-release
    Checking if anyone except root can change /etc/mandrake-release
    Checking if anyone except root can change /etc/mandriva-release
    Checking if anyone except root can change /etc/mklinux-release
    Checking if anyone except root can change /etc/mtab
[UPC001] WARNING: /usr/bin/vmnet-dhcpd is currently running as root. /usr/bin/vmnet-dhcpd contains the string /etc/mtab. The user nahoskins can write to /etc/mtab
    Checking if anyone except root can change /etc/nld-release
    Checking if anyone except root can change /etc/novell-release
    Checking if anyone except root can change /etc/oracle-release
    Checking if anyone except root can change /etc/pki/tls
    Checking if anyone except root can change /etc/pld-release
    Checking if anyone except root can change /etc/redhat-release
    Checking if anyone except root can change /etc/redhat_version
    Checking if anyone except root can change /etc/release
    Checking if anyone except root can change /etc/slackware-release
    Checking if anyone except root can change /etc/slackware-version
    Checking if anyone except root can change /etc/sles-release
    Checking if anyone except root can change /etc/ssl/certs
    Checking if anyone except root can change /etc/sun-release
    Checking if anyone except root can change /etc/SuSE-release
    Checking if anyone except root can change /etc/tinysofa-release
    Checking if anyone except root can change /etc/turbolinux-release
    Checking if anyone except root can change /etc/ultrapenguin-release
    Checking if anyone except root can change /etc/UnitedLinux-release
    Checking if anyone except root can change /etc/va-release
    Checking if anyone except root can change /etc/vmware
    Checking if anyone except root can change /etc/vmwH
    Checking if anyone except root can change /etc/yellowdog-release
    Checking if anyone except root can change /Eucla
    Checking if anyone except root can change /Godthab
    Checking if anyone except root can change /Guatemala
    Checking if anyone except root can change /H
    Checking if anyone except root can change /Havana
    Checking if anyone except root can change /Hovd
    Checking if anyone except root can change /icu
    Checking if anyone except root can change /Irkutsk
    Checking if anyone except root can change /Jerusalem
    Checking if anyone except root can change /Kamchatka
    Checking if anyone except root can change /Krasnoyarsk
    Checking if anyone except root can change /L9
    Checking if anyone except root can change /London
    Checking if anyone except root can change /Lord_Howe
    Checking if anyone except root can change /Magadan
    Checking if anyone except root can change /messages
    Checking if anyone except root can change /Miquelon
    Checking if anyone except root can change /Montevideo
    Checking if anyone except root can change /Moscow
    Checking if anyone except root can change /Mountain
    Checking if anyone except root can change /Novosibirsk
    Checking if anyone except root can change /O
    Checking if anyone except root can change /Omsk
    Checking if anyone except root can change /Pacific
    Checking if anyone except root can change /Pitcairn
    Checking if anyone except root can change /proc/cpuinfo
    Checking if anyone except root can change /proc/meminfo
    Checking if anyone except root can change /proc/self/exe
[UPC001] WARNING: /usr/bin/vmnet-dhcpd is currently running as root. /usr/bin/vmnet-dhcpd contains the string /proc/self/exe. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/self/statm
[UPC001] WARNING: /usr/bin/vmnet-dhcpd is currently running as root. /usr/bin/vmnet-dhcpd contains the string /proc/self/statm. The user nahoskins can write to /proc/self/statm
[UPC001] WARNING: /usr/bin/vmnet-dhcpd is currently running as root. /usr/bin/vmnet-dhcpd contains the string /proc/self/statm. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/uptime
    Checking if anyone except root can change /Sakhalin
    Checking if anyone except root can change /Samara
    Checking if anyone except root can change /Saskatchewan
    Checking if anyone except root can change /Scoresbysund
    Checking if anyone except root can change /settings
    Checking if anyone except root can change /South
    Checking if anyone except root can change /Stanley
    Checking if anyone except root can change /St_Johns
    Checking if anyone except root can change /Sydney
    Checking if anyone except root can change /tmp
[UPC003] WARNING: /usr/bin/vmnet-dhcpd is currently running as root. /usr/bin/vmnet-dhcpd contains the string /tmp. World write is set for /tmp (but sticky bit set)
    Checking if anyone except root can change //TRANSLIT
    Checking if anyone except root can change /Tripoli
    Checking if anyone except root can change /u
    Checking if anyone except root can change /Ulaanbaatar
    Checking if anyone except root can change /uSH
    Checking if anyone except root can change /usr/bin/lsb_release
    Checking if anyone except root can change /usr/lib/vmware
    Checking if anyone except root can change /usr/share/zoneinfo/
    Checking if anyone except root can change /var/lock
    Checking if anyone except root can change /var/log/vmware
    Checking if anyone except root can change /Vladivostok
    Checking if anyone except root can change /Volgograd
    Checking if anyone except root can change /West
    Checking if anyone except root can change /wHH
    Checking if anyone except root can change /Windhoek
    Checking if anyone except root can change /Yakutsk
    Checking if anyone except root can change /Yekaterinburg
    Checking if anyone except root can change /Yerevan
------------------------
PID:           551
Owner:         root
Program path:  /usr/bin/vmnet-natd
    Checking if anyone except root can change /usr/bin/vmnet-natd
    Checking if anyone except root can change /usr/lib/libpthread.so.0
    Checking if anyone except root can change /usr/lib/libdl.so.2
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /
    Checking if anyone except root can change /0123
    Checking if anyone except root can change /1
    Checking if anyone except root can change /9t
    Checking if anyone except root can change /A
    Checking if anyone except root can change /Alaska
    Checking if anyone except root can change /Aleutian
    Checking if anyone except root can change /Algiers
    Checking if anyone except root can change /Anadyr
    Checking if anyone except root can change /Asuncion
    Checking if anyone except root can change /Athens
    Checking if anyone except root can change /Atlantic
    Checking if anyone except root can change /Auckland
    Checking if anyone except root can change /Azores
    Checking if anyone except root can change /Baghdad
    Checking if anyone except root can change /Baku
    Checking if anyone except root can change /Casablanca
    Checking if anyone except root can change /Central
    Checking if anyone except root can change /Chatham
    Checking if anyone except root can change /Choibalsan
    Checking if anyone except root can change /conff
    Checking if anyone except root can change /Continental
    Checking if anyone except root can change /Cuiaba
    Checking if anyone except root can change /D
    Checking if anyone except root can change /D9D
    Checking if anyone except root can change /dev/null
[UPC004] WARNING: /usr/bin/vmnet-natd is currently running as root. /usr/bin/vmnet-natd contains the string /dev/null. World write is set for /dev/null
    Checking if anyone except root can change /dev/urandom
[UPC004] WARNING: /usr/bin/vmnet-natd is currently running as root. /usr/bin/vmnet-natd contains the string /dev/urandom. World write is set for /dev/urandom
    Checking if anyone except root can change /Dublin
    Checking if anyone except root can change /East
    Checking if anyone except root can change /EasterIsland
    Checking if anyone except root can change /Eastern
    Checking if anyone except root can change /El_Aaiun
    Checking if anyone except root can change /EPRT
    Checking if anyone except root can change /etc/annvix-release
    Checking if anyone except root can change /etc/arch-release
    Checking if anyone except root can change /etc/arklinux-release
    Checking if anyone except root can change /etc/aurox-release
    Checking if anyone except root can change /etc/blackcat-release
    Checking if anyone except root can change /etc/cobalt-release
    Checking if anyone except root can change /etc/conectiva-release
    Checking if anyone except root can change /etc/debian_release
    Checking if anyone except root can change /etc/debian_version
    Checking if anyone except root can change /etc/e-smith-release
    Checking if anyone except root can change /etc/fedora-release
    Checking if anyone except root can change /etc/gentoo-release
    Checking if anyone except root can change /etc/immunix-release
    Checking if anyone except root can change /etc/knoppix_version
    Checking if anyone except root can change /etc/lfs-release
    Checking if anyone except root can change /etc/linuxppc-release
    Checking if anyone except root can change /etc/localtime
    Checking if anyone except root can change /etc/lsb-release
    Checking if anyone except root can change /etc/mandrakelinux-release
    Checking if anyone except root can change /etc/mandrake-release
    Checking if anyone except root can change /etc/mandriva-release
    Checking if anyone except root can change /etc/mklinux-release
    Checking if anyone except root can change /etc/mtab
[UPC001] WARNING: /usr/bin/vmnet-natd is currently running as root. /usr/bin/vmnet-natd contains the string /etc/mtab. The user nahoskins can write to /etc/mtab
    Checking if anyone except root can change /etc/nld-release
    Checking if anyone except root can change /etc/novell-release
    Checking if anyone except root can change /etc/oracle-release
    Checking if anyone except root can change /etc/pki/tls
    Checking if anyone except root can change /etc/pld-release
    Checking if anyone except root can change /etc/redhat-release
    Checking if anyone except root can change /etc/redhat_version
    Checking if anyone except root can change /etc/release
    Checking if anyone except root can change /etc/slackware-release
    Checking if anyone except root can change /etc/slackware-version
    Checking if anyone except root can change /etc/sles-release
    Checking if anyone except root can change /etc/ssl/certs
    Checking if anyone except root can change /etc/sun-release
    Checking if anyone except root can change /etc/SuSE-release
    Checking if anyone except root can change /etc/tinysofa-release
    Checking if anyone except root can change /etc/turbolinux-release
    Checking if anyone except root can change /etc/ultrapenguin-release
    Checking if anyone except root can change /etc/UnitedLinux-release
    Checking if anyone except root can change /etc/va-release
    Checking if anyone except root can change /etc/vmware
    Checking if anyone except root can change /etc/vmwH
    Checking if anyone except root can change /etc/vmwI
    Checking if anyone except root can change /etc/yellowdog-release
    Checking if anyone except root can change /Eucla
    Checking if anyone except root can change /Godthab
    Checking if anyone except root can change /Guatemala
    Checking if anyone except root can change /H
    Checking if anyone except root can change /Havana
    Checking if anyone except root can change /Hovd
    Checking if anyone except root can change /icu
    Checking if anyone except root can change /Irkutsk
    Checking if anyone except root can change /Jerusalem
    Checking if anyone except root can change /Kamchatka
    Checking if anyone except root can change /Krasnoyarsk
    Checking if anyone except root can change /L9
    Checking if anyone except root can change //localhost
    Checking if anyone except root can change /London
    Checking if anyone except root can change /Lord_Howe
    Checking if anyone except root can change /Magadan
    Checking if anyone except root can change /messages
    Checking if anyone except root can change /Miquelon
    Checking if anyone except root can change /Montevideo
    Checking if anyone except root can change /Moscow
    Checking if anyone except root can change /Mountain
    Checking if anyone except root can change /Novosibirsk
    Checking if anyone except root can change /O
    Checking if anyone except root can change /Omsk
    Checking if anyone except root can change /Pacific
    Checking if anyone except root can change /Pitcairn
    Checking if anyone except root can change /proc/cpuinfo
    Checking if anyone except root can change /proc/meminfo
    Checking if anyone except root can change /proc/self/exe
[UPC001] WARNING: /usr/bin/vmnet-natd is currently running as root. /usr/bin/vmnet-natd contains the string /proc/self/exe. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/self/statm
[UPC001] WARNING: /usr/bin/vmnet-natd is currently running as root. /usr/bin/vmnet-natd contains the string /proc/self/statm. The user nahoskins can write to /proc/self/statm
[UPC001] WARNING: /usr/bin/vmnet-natd is currently running as root. /usr/bin/vmnet-natd contains the string /proc/self/statm. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/uptime
    Checking if anyone except root can change /Sakhalin
    Checking if anyone except root can change /Samara
    Checking if anyone except root can change /Saskatchewan
    Checking if anyone except root can change /Scoresbysund
    Checking if anyone except root can change /settings
    Checking if anyone except root can change /South
    Checking if anyone except root can change /Stanley
    Checking if anyone except root can change /St_Johns
    Checking if anyone except root can change /Sydney
    Checking if anyone except root can change /tmp
[UPC003] WARNING: /usr/bin/vmnet-natd is currently running as root. /usr/bin/vmnet-natd contains the string /tmp. World write is set for /tmp (but sticky bit set)
    Checking if anyone except root can change //TRANSLIT
    Checking if anyone except root can change /Tripoli
    Checking if anyone except root can change /u
    Checking if anyone except root can change /Ulaanbaatar
    Checking if anyone except root can change /uM
    Checking if anyone except root can change /uSH
    Checking if anyone except root can change /usr/bin/lsb_release
    Checking if anyone except root can change /usr/lib/vmware
    Checking if anyone except root can change /usr/share/zoneinfo/
    Checking if anyone except root can change /var/lock
    Checking if anyone except root can change /var/log/vmware
    Checking if anyone except root can change /var/runI
    Checking if anyone except root can change /Vladivostok
    Checking if anyone except root can change /vmnet-n
    Checking if anyone except root can change /Volgograd
    Checking if anyone except root can change /West
    Checking if anyone except root can change /wHH
    Checking if anyone except root can change /Windhoek
    Checking if anyone except root can change /Yakutsk
    Checking if anyone except root can change /Yekaterinburg
    Checking if anyone except root can change /Yerevan
------------------------
PID:           553
Owner:         root
Program path:  /usr/bin/vmnet-netifup
    Checking if anyone except root can change /usr/bin/vmnet-netifup
    Checking if anyone except root can change /usr/lib/libpthread.so.0
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /
    Checking if anyone except root can change /0123
    Checking if anyone except root can change /A
    Checking if anyone except root can change /Alaska
    Checking if anyone except root can change /Aleutian
    Checking if anyone except root can change /Algiers
    Checking if anyone except root can change /Anadyr
    Checking if anyone except root can change /Asuncion
    Checking if anyone except root can change /Athens
    Checking if anyone except root can change /Atlantic
    Checking if anyone except root can change /Auckland
    Checking if anyone except root can change /Azores
    Checking if anyone except root can change /Baghdad
    Checking if anyone except root can change /Baku
    Checking if anyone except root can change /Casablanca
    Checking if anyone except root can change /Central
    Checking if anyone except root can change /Chatham
    Checking if anyone except root can change /Choibalsan
    Checking if anyone except root can change /Continental
    Checking if anyone except root can change /Cuiaba
    Checking if anyone except root can change /D9D
    Checking if anyone except root can change /Dublin
    Checking if anyone except root can change /East
    Checking if anyone except root can change /EasterIsland
    Checking if anyone except root can change /Eastern
    Checking if anyone except root can change /El_Aaiun
    Checking if anyone except root can change /etc/localtime
    Checking if anyone except root can change /etc/vmware
    Checking if anyone except root can change /Eucla
    Checking if anyone except root can change /Godthab
    Checking if anyone except root can change /Guatemala
    Checking if anyone except root can change /Havana
    Checking if anyone except root can change /Hovd
    Checking if anyone except root can change /icu
    Checking if anyone except root can change /Irkutsk
    Checking if anyone except root can change /Jerusalem
    Checking if anyone except root can change /Kamchatka
    Checking if anyone except root can change /Krasnoyarsk
    Checking if anyone except root can change /L9
    Checking if anyone except root can change /London
    Checking if anyone except root can change /Lord_Howe
    Checking if anyone except root can change /Magadan
    Checking if anyone except root can change /Miquelon
    Checking if anyone except root can change /Montevideo
    Checking if anyone except root can change /Moscow
    Checking if anyone except root can change /Mountain
    Checking if anyone except root can change /Novosibirsk
    Checking if anyone except root can change /Omsk
    Checking if anyone except root can change /Pacific
    Checking if anyone except root can change /Pitcairn
    Checking if anyone except root can change /Sakhalin
    Checking if anyone except root can change /Samara
    Checking if anyone except root can change /Saskatchewan
    Checking if anyone except root can change /Scoresbysund
    Checking if anyone except root can change /South
    Checking if anyone except root can change /Stanley
    Checking if anyone except root can change /St_Johns
    Checking if anyone except root can change /Sydney
    Checking if anyone except root can change //TRANSLIT
    Checking if anyone except root can change /Tripoli
    Checking if anyone except root can change /Ulaanbaatar
    Checking if anyone except root can change /usr/share/zoneinfo/
    Checking if anyone except root can change /Vladivostok
    Checking if anyone except root can change /Volgograd
    Checking if anyone except root can change /West
    Checking if anyone except root can change /wHH
    Checking if anyone except root can change /Windhoek
    Checking if anyone except root can change /Yakutsk
    Checking if anyone except root can change /Yekaterinburg
    Checking if anyone except root can change /Yerevan
------------------------
PID:           558
Owner:         root
Program path:  /usr/bin/vmnet-dhcpd
    Checking if anyone except root can change /usr/bin/vmnet-dhcpd
    Checking if anyone except root can change /usr/lib/libdl.so.2
    Checking if anyone except root can change /usr/lib/libpthread.so.0
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /
    Checking if anyone except root can change /-
    Checking if anyone except root can change /0123
    Checking if anyone except root can change /1
    Checking if anyone except root can change /9t
    Checking if anyone except root can change /A
    Checking if anyone except root can change /Alaska
    Checking if anyone except root can change /Aleutian
    Checking if anyone except root can change /Algiers
    Checking if anyone except root can change /Anadyr
    Checking if anyone except root can change /Asuncion
    Checking if anyone except root can change /Athens
    Checking if anyone except root can change /Atlantic
    Checking if anyone except root can change /Auckland
    Checking if anyone except root can change /Azores
    Checking if anyone except root can change /Baghdad
    Checking if anyone except root can change /Baku
    Checking if anyone except root can change /Casablanca
    Checking if anyone except root can change /Central
    Checking if anyone except root can change /Chatham
    Checking if anyone except root can change /Choibalsan
    Checking if anyone except root can change /conff
    Checking if anyone except root can change /Continental
    Checking if anyone except root can change /Cuiaba
    Checking if anyone except root can change /D9D
    Checking if anyone except root can change /deny
    Checking if anyone except root can change /dev/
    Checking if anyone except root can change /dev/null
[UPC004] WARNING: /usr/bin/vmnet-dhcpd is currently running as root. /usr/bin/vmnet-dhcpd contains the string /dev/null. World write is set for /dev/null
    Checking if anyone except root can change /dev/urandom
[UPC004] WARNING: /usr/bin/vmnet-dhcpd is currently running as root. /usr/bin/vmnet-dhcpd contains the string /dev/urandom. World write is set for /dev/urandom
    Checking if anyone except root can change /dev/vmnet
    Checking if anyone except root can change /Dublin
    Checking if anyone except root can change /East
    Checking if anyone except root can change /EasterIsland
    Checking if anyone except root can change /Eastern
    Checking if anyone except root can change /El_Aaiun
    Checking if anyone except root can change /etc/annvix-release
    Checking if anyone except root can change /etc/arch-release
    Checking if anyone except root can change /etc/arklinux-release
    Checking if anyone except root can change /etc/aurox-release
    Checking if anyone except root can change /etc/blackcat-release
    Checking if anyone except root can change /etc/cobalt-release
    Checking if anyone except root can change /etc/conectiva-release
    Checking if anyone except root can change /etc/debian_release
    Checking if anyone except root can change /etc/debian_version
    Checking if anyone except root can change /etc/e-smith-release
    Checking if anyone except root can change /etc/fedora-release
    Checking if anyone except root can change /etc/gentoo-release
    Checking if anyone except root can change /etc/immunix-release
    Checking if anyone except root can change /etc/knoppix_version
    Checking if anyone except root can change /etc/lfs-release
    Checking if anyone except root can change /etc/linuxppc-release
    Checking if anyone except root can change /etc/localtime
    Checking if anyone except root can change /etc/lsb-release
    Checking if anyone except root can change /etc/mandrakelinux-release
    Checking if anyone except root can change /etc/mandrake-release
    Checking if anyone except root can change /etc/mandriva-release
    Checking if anyone except root can change /etc/mklinux-release
    Checking if anyone except root can change /etc/mtab
[UPC001] WARNING: /usr/bin/vmnet-dhcpd is currently running as root. /usr/bin/vmnet-dhcpd contains the string /etc/mtab. The user nahoskins can write to /etc/mtab
    Checking if anyone except root can change /etc/nld-release
    Checking if anyone except root can change /etc/novell-release
    Checking if anyone except root can change /etc/oracle-release
    Checking if anyone except root can change /etc/pki/tls
    Checking if anyone except root can change /etc/pld-release
    Checking if anyone except root can change /etc/redhat-release
    Checking if anyone except root can change /etc/redhat_version
    Checking if anyone except root can change /etc/release
    Checking if anyone except root can change /etc/slackware-release
    Checking if anyone except root can change /etc/slackware-version
    Checking if anyone except root can change /etc/sles-release
    Checking if anyone except root can change /etc/ssl/certs
    Checking if anyone except root can change /etc/sun-release
    Checking if anyone except root can change /etc/SuSE-release
    Checking if anyone except root can change /etc/tinysofa-release
    Checking if anyone except root can change /etc/turbolinux-release
    Checking if anyone except root can change /etc/ultrapenguin-release
    Checking if anyone except root can change /etc/UnitedLinux-release
    Checking if anyone except root can change /etc/va-release
    Checking if anyone except root can change /etc/vmware
    Checking if anyone except root can change /etc/vmwH
    Checking if anyone except root can change /etc/yellowdog-release
    Checking if anyone except root can change /Eucla
    Checking if anyone except root can change /Godthab
    Checking if anyone except root can change /Guatemala
    Checking if anyone except root can change /H
    Checking if anyone except root can change /Havana
    Checking if anyone except root can change /Hovd
    Checking if anyone except root can change /icu
    Checking if anyone except root can change /Irkutsk
    Checking if anyone except root can change /Jerusalem
    Checking if anyone except root can change /Kamchatka
    Checking if anyone except root can change /Krasnoyarsk
    Checking if anyone except root can change /L9
    Checking if anyone except root can change /London
    Checking if anyone except root can change /Lord_Howe
    Checking if anyone except root can change /Magadan
    Checking if anyone except root can change /messages
    Checking if anyone except root can change /Miquelon
    Checking if anyone except root can change /Montevideo
    Checking if anyone except root can change /Moscow
    Checking if anyone except root can change /Mountain
    Checking if anyone except root can change /Novosibirsk
    Checking if anyone except root can change /O
    Checking if anyone except root can change /Omsk
    Checking if anyone except root can change /Pacific
    Checking if anyone except root can change /Pitcairn
    Checking if anyone except root can change /proc/cpuinfo
    Checking if anyone except root can change /proc/meminfo
    Checking if anyone except root can change /proc/self/exe
[UPC001] WARNING: /usr/bin/vmnet-dhcpd is currently running as root. /usr/bin/vmnet-dhcpd contains the string /proc/self/exe. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/self/statm
[UPC001] WARNING: /usr/bin/vmnet-dhcpd is currently running as root. /usr/bin/vmnet-dhcpd contains the string /proc/self/statm. The user nahoskins can write to /proc/self/statm
[UPC001] WARNING: /usr/bin/vmnet-dhcpd is currently running as root. /usr/bin/vmnet-dhcpd contains the string /proc/self/statm. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/uptime
    Checking if anyone except root can change /Sakhalin
    Checking if anyone except root can change /Samara
    Checking if anyone except root can change /Saskatchewan
    Checking if anyone except root can change /Scoresbysund
    Checking if anyone except root can change /settings
    Checking if anyone except root can change /South
    Checking if anyone except root can change /Stanley
    Checking if anyone except root can change /St_Johns
    Checking if anyone except root can change /Sydney
    Checking if anyone except root can change /tmp
[UPC003] WARNING: /usr/bin/vmnet-dhcpd is currently running as root. /usr/bin/vmnet-dhcpd contains the string /tmp. World write is set for /tmp (but sticky bit set)
    Checking if anyone except root can change //TRANSLIT
    Checking if anyone except root can change /Tripoli
    Checking if anyone except root can change /u
    Checking if anyone except root can change /Ulaanbaatar
    Checking if anyone except root can change /uSH
    Checking if anyone except root can change /usr/bin/lsb_release
    Checking if anyone except root can change /usr/lib/vmware
    Checking if anyone except root can change /usr/share/zoneinfo/
    Checking if anyone except root can change /var/lock
    Checking if anyone except root can change /var/log/vmware
    Checking if anyone except root can change /Vladivostok
    Checking if anyone except root can change /Volgograd
    Checking if anyone except root can change /West
    Checking if anyone except root can change /wHH
    Checking if anyone except root can change /Windhoek
    Checking if anyone except root can change /Yakutsk
    Checking if anyone except root can change /Yekaterinburg
    Checking if anyone except root can change /Yerevan
------------------------
PID:           570
Owner:         root
Program path:  /usr/sbin/vmware-authdlauncher
    Checking if anyone except root can change /usr/sbin/vmware-authdlauncher
    Checking if anyone except root can change /usr/lib/libdl.so.2
    Checking if anyone except root can change /usr/lib/libgcc_s.so.1
    Checking if anyone except root can change /usr/lib/libpthread.so.0
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /
    Checking if anyone except root can change //
    Checking if anyone except root can change /0123
    Checking if anyone except root can change /1
    Checking if anyone except root can change /9t
    Checking if anyone except root can change /A
    Checking if anyone except root can change /Alaska
    Checking if anyone except root can change /Aleutian
    Checking if anyone except root can change /Algiers
    Checking if anyone except root can change /Anadyr
    Checking if anyone except root can change /Asuncion
    Checking if anyone except root can change /Athens
    Checking if anyone except root can change /Atlantic
    Checking if anyone except root can change /Auckland
    Checking if anyone except root can change /Azores
    Checking if anyone except root can change /Baghdad
    Checking if anyone except root can change /Baku
    Checking if anyone except root can change /Casablanca
    Checking if anyone except root can change /Central
    Checking if anyone except root can change /Chatham
    Checking if anyone except root can change /Choibalsan
    Checking if anyone except root can change /conff
    Checking if anyone except root can change /Continental
    Checking if anyone except root can change /Cuiaba
    Checking if anyone except root can change /D9D
    Checking if anyone except root can change /dev/null
[UPC004] WARNING: /usr/sbin/vmware-authdlauncher is currently running as root. /usr/sbin/vmware-authdlauncher contains the string /dev/null. World write is set for /dev/null
    Checking if anyone except root can change /dev/urandom
[UPC004] WARNING: /usr/sbin/vmware-authdlauncher is currently running as root. /usr/sbin/vmware-authdlauncher contains the string /dev/urandom. World write is set for /dev/urandom
    Checking if anyone except root can change /dev/vsock
[UPC004] WARNING: /usr/sbin/vmware-authdlauncher is currently running as root. /usr/sbin/vmware-authdlauncher contains the string /dev/vsock. World write is set for /dev/vsock
    Checking if anyone except root can change /Dublin
    Checking if anyone except root can change /East
    Checking if anyone except root can change /EasterIsland
    Checking if anyone except root can change /Eastern
    Checking if anyone except root can change /El_Aaiun
    Checking if anyone except root can change /etc/annvix-release
    Checking if anyone except root can change /etc/arch-release
    Checking if anyone except root can change /etc/arklinux-release
    Checking if anyone except root can change /etc/aurox-release
    Checking if anyone except root can change /etc/blackcat-release
    Checking if anyone except root can change /etc/cobalt-release
    Checking if anyone except root can change /etc/conectiva-release
    Checking if anyone except root can change /etc/debian_release
    Checking if anyone except root can change /etc/debian_version
    Checking if anyone except root can change /etc/e-smith-release
    Checking if anyone except root can change /etc/fedora-release
    Checking if anyone except root can change /etc/gentoo-release
    Checking if anyone except root can change /etc/immunix-release
    Checking if anyone except root can change /etc/knoppix_version
    Checking if anyone except root can change /etc/lfs-release
    Checking if anyone except root can change /etc/linuxppc-release
    Checking if anyone except root can change /etc/localtime
    Checking if anyone except root can change /etc/lsb-release
    Checking if anyone except root can change /etc/mandrakelinux-release
    Checking if anyone except root can change /etc/mandrake-release
    Checking if anyone except root can change /etc/mandriva-release
    Checking if anyone except root can change /etc/mklinux-release
    Checking if anyone except root can change /etc/mtab
[UPC001] WARNING: /usr/sbin/vmware-authdlauncher is currently running as root. /usr/sbin/vmware-authdlauncher contains the string /etc/mtab. The user nahoskins can write to /etc/mtab
    Checking if anyone except root can change /etc/nld-release
    Checking if anyone except root can change /etc/novell-release
    Checking if anyone except root can change /etc/oracle-release
    Checking if anyone except root can change /etc/pki/tls
    Checking if anyone except root can change /etc/pld-release
    Checking if anyone except root can change /etc/redhat-release
    Checking if anyone except root can change /etc/redhat_version
    Checking if anyone except root can change /etc/release
    Checking if anyone except root can change /etc/slackware-release
    Checking if anyone except root can change /etc/slackware-version
    Checking if anyone except root can change /etc/sles-release
    Checking if anyone except root can change /etc/ssl/certs
    Checking if anyone except root can change /etc/sun-release
    Checking if anyone except root can change /etc/SuSE-release
    Checking if anyone except root can change /etc/tinysofa-release
    Checking if anyone except root can change /etc/turbolinux-release
    Checking if anyone except root can change /etc/ultrapenguin-release
    Checking if anyone except root can change /etc/UnitedLinux-release
    Checking if anyone except root can change /etc/va-release
    Checking if anyone except root can change /etc/vmware
    Checking if anyone except root can change /etc/vmwH
    Checking if anyone except root can change /etc/yellowdog-release
    Checking if anyone except root can change /Eucla
    Checking if anyone except root can change /Godthab
    Checking if anyone except root can change /Guatemala
    Checking if anyone except root can change /H
    Checking if anyone except root can change /H9
    Checking if anyone except root can change /Havana
    Checking if anyone except root can change /Hovd
    Checking if anyone except root can change /html
    Checking if anyone except root can change /icu
    Checking if anyone except root can change /Irkutsk
    Checking if anyone except root can change /javascript
    Checking if anyone except root can change /Jerusalem
    Checking if anyone except root can change /Kamchatka
    Checking if anyone except root can change /Krasnoyarsk
    Checking if anyone except root can change /L9
    Checking if anyone except root can change /London
    Checking if anyone except root can change /Lord_Howe
    Checking if anyone except root can change /Magadan
    Checking if anyone except root can change /messages
    Checking if anyone except root can change /Miquelon
    Checking if anyone except root can change /Montevideo
    Checking if anyone except root can change /Moscow
    Checking if anyone except root can change /Mountain
    Checking if anyone except root can change /Novosibirsk
    Checking if anyone except root can change /O
    Checking if anyone except root can change /Omsk
    Checking if anyone except root can change /Pacific
    Checking if anyone except root can change /Pitcairn
    Checking if anyone except root can change /proc/cpuinfo
    Checking if anyone except root can change /proc/meminfo
    Checking if anyone except root can change /proc/self/exe
[UPC001] WARNING: /usr/sbin/vmware-authdlauncher is currently running as root. /usr/sbin/vmware-authdlauncher contains the string /proc/self/exe. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/self/statm
[UPC001] WARNING: /usr/sbin/vmware-authdlauncher is currently running as root. /usr/sbin/vmware-authdlauncher contains the string /proc/self/statm. The user nahoskins can write to /proc/self/statm
[UPC001] WARNING: /usr/sbin/vmware-authdlauncher is currently running as root. /usr/sbin/vmware-authdlauncher contains the string /proc/self/statm. The user nahoskins can write to /proc/self
    Checking if anyone except root can change /proc/sys/kernel/core_pattern
    Checking if anyone except root can change /proc/sys/kernel/core_uses_pid
    Checking if anyone except root can change /proc/uptime
    Checking if anyone except root can change /Sakhalin
    Checking if anyone except root can change /Samara
    Checking if anyone except root can change /Saskatchewan
    Checking if anyone except root can change /Scoresbysund
    Checking if anyone except root can change /settings
    Checking if anyone except root can change /South
    Checking if anyone except root can change /Stanley
    Checking if anyone except root can change /St_Johns
    Checking if anyone except root can change /Sydney
    Checking if anyone except root can change /tKH
    Checking if anyone except root can change /tmp
[UPC003] WARNING: /usr/sbin/vmware-authdlauncher is currently running as root. /usr/sbin/vmware-authdlauncher contains the string /tmp. World write is set for /tmp (but sticky bit set)
    Checking if anyone except root can change //TRANSLIT
    Checking if anyone except root can change /Tripoli
    Checking if anyone except root can change /u
    Checking if anyone except root can change /Ulaanbaatar
    Checking if anyone except root can change /uSH
    Checking if anyone except root can change /usr/bin/lsb_release
    Checking if anyone except root can change /usr/lib/vmware
    Checking if anyone except root can change /usr/share/zoneinfo/
    Checking if anyone except root can change /var/lock
    Checking if anyone except root can change /var/log/vmware
    Checking if anyone except root can change /Vladivostok
    Checking if anyone except root can change /vmfs/devices/char/vsock/vsock
    Checking if anyone except root can change /Volgograd
    Checking if anyone except root can change /West
    Checking if anyone except root can change /wHH
    Checking if anyone except root can change /Windhoek
    Checking if anyone except root can change /Yakutsk
    Checking if anyone except root can change /Yekaterinburg
    Checking if anyone except root can change /Yerevan
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
    Checking if anyone except nahoskins can change /usr/lib/librt.so.1
    Checking if anyone except nahoskins can change /usr/lib/libseccomp.so.2
    Checking if anyone except nahoskins can change /usr/lib/libpam.so.0
    Checking if anyone except nahoskins can change /usr/lib/libkmod.so.2
    Checking if anyone except nahoskins can change /usr/lib/libmount.so.1
    Checking if anyone except nahoskins can change /usr/lib/libcap.so.2
    Checking if anyone except nahoskins can change /usr/lib/libpthread.so.0
    Checking if anyone except nahoskins can change /usr/lib/libc.so.6
    Checking if anyone except nahoskins can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except nahoskins can change /usr/lib/libdl.so.2
    Checking if anyone except nahoskins can change /usr/lib/liblzma.so.5
    Checking if anyone except nahoskins can change /usr/lib/libz.so.1
    Checking if anyone except nahoskins can change /usr/lib/libblkid.so.1
    Checking if anyone except nahoskins can change /usr/lib/libuuid.so.1
    Checking if anyone except nahoskins can change /usr/lib/libattr.so.1
    Checking if anyone except nahoskins can change /
    Checking if anyone except nahoskins can change //
    Checking if anyone except nahoskins can change /0123456789
    Checking if anyone except nahoskins can change /AQSL
    Checking if anyone except nahoskins can change /bin
    Checking if anyone except nahoskins can change /bin/sh
    Checking if anyone except nahoskins can change /block/dm-
    Checking if anyone except nahoskins can change /block/md
    Checking if anyone except nahoskins can change /boof
    Checking if anyone except nahoskins can change /boot
    Checking if anyone except nahoskins can change /bus
    Checking if anyone except nahoskins can change /bus/
    Checking if anyone except nahoskins can change /busH
    Checking if anyone except nahoskins can change /CIPSO
    Checking if anyone except nahoskins can change /class/
    Checking if anyone except nahoskins can change /contolC
    Checking if anyone except nahoskins can change /control
    Checking if anyone except nahoskins can change /controlC
    Checking if anyone except nahoskins can change /controlH
    Checking if anyone except nahoskins can change /data/
    Checking if anyone except nahoskins can change /dbus/syf
    Checking if anyone except nahoskins can change /defaultL
    Checking if anyone except nahoskins can change /dev
    Checking if anyone except nahoskins can change /dev/
    Checking if anyone except nahoskins can change /devA
    Checking if anyone except nahoskins can change /dev/autofs
    Checking if anyone except nahoskins can change /dev/block/
    Checking if anyone except nahoskins can change /dev/char/
    Checking if anyone except nahoskins can change /dev/console
    Checking if anyone except nahoskins can change /dev/core
    Checking if anyone except nahoskins can change /dev/fd
    Checking if anyone except nahoskins can change /dev/full
[UPC004] WARNING: /usr/lib/systemd/systemd is currently running as nahoskins. /usr/lib/systemd/systemd contains the string /dev/full. World write is set for /dev/full
    Checking if anyone except nahoskins can change /dev/hugepages
    Checking if anyone except nahoskins can change /devic
    Checking if anyone except nahoskins can change /devices/
    Checking if anyone except nahoskins can change /dev/kmsg
    Checking if anyone except nahoskins can change /dev/log
    Checking if anyone except nahoskins can change /dev/mem
    Checking if anyone except nahoskins can change /dev/mqueue
[UPC003] WARNING: /usr/lib/systemd/systemd is currently running as nahoskins. /usr/lib/systemd/systemd contains the string /dev/mqueue. World write is set for /dev/mqueue (but sticky bit set)
    Checking if anyone except nahoskins can change /dev/null
[UPC004] WARNING: /usr/lib/systemd/systemd is currently running as nahoskins. /usr/lib/systemd/systemd contains the string /dev/null. World write is set for /dev/null
    Checking if anyone except nahoskins can change /dev/ptmx
[UPC004] WARNING: /usr/lib/systemd/systemd is currently running as nahoskins. /usr/lib/systemd/systemd contains the string /dev/ptmx. World write is set for /dev/ptmx
    Checking if anyone except nahoskins can change /dev/pts
    Checking if anyone except nahoskins can change /dev/pts/ptmx
    Checking if anyone except nahoskins can change /dev/random
[UPC004] WARNING: /usr/lib/systemd/systemd is currently running as nahoskins. /usr/lib/systemd/systemd contains the string /dev/random. World write is set for /dev/random
    Checking if anyone except nahoskins can change /dev/root
    Checking if anyone except nahoskins can change /dev/shm
[UPC003] WARNING: /usr/lib/systemd/systemd is currently running as nahoskins. /usr/lib/systemd/systemd contains the string /dev/shm. World write is set for /dev/shm (but sticky bit set)
    Checking if anyone except nahoskins can change /dev/stderr
    Checking if anyone except nahoskins can change /dev/stdin
    Checking if anyone except nahoskins can change /dev/stdout
    Checking if anyone except nahoskins can change /dev/tty
[UPC004] WARNING: /usr/lib/systemd/systemd is currently running as nahoskins. /usr/lib/systemd/systemd contains the string /dev/tty. World write is set for /dev/tty
    Checking if anyone except nahoskins can change /dev/tty0
    Checking if anyone except nahoskins can change /dev/urandom
[UPC004] WARNING: /usr/lib/systemd/systemd is currently running as nahoskins. /usr/lib/systemd/systemd contains the string /dev/urandom. World write is set for /dev/urandom
    Checking if anyone except nahoskins can change /dev/watchdog
    Checking if anyone except nahoskins can change /dev/zero
[UPC004] WARNING: /usr/lib/systemd/systemd is currently running as nahoskins. /usr/lib/systemd/systemd contains the string /dev/zero. World write is set for /dev/zero
    Checking if anyone except nahoskins can change /drivers/
    Checking if anyone except nahoskins can change /E8
    Checking if anyone except nahoskins can change /etc
    Checking if anyone except nahoskins can change /etc/adjtime
    Checking if anyone except nahoskins can change /etc/hostname
    Checking if anyone except nahoskins can change /etc/initrd-release
    Checking if anyone except nahoskins can change /etc/machine-id
    Checking if anyone except nahoskins can change /etc/mtab
    Checking if anyone except nahoskins can change /etc/os-H
    Checking if anyone except nahoskins can change /etc/os-release
    Checking if anyone except nahoskins can change /etc/sys
    Checking if anyone except nahoskins can change /etc/systemd/system
    Checking if anyone except nahoskins can change /etc/systemd/system-generators
    Checking if anyone except nahoskins can change /etc/systemd/system-preset
    Checking if anyone except nahoskins can change /etc/systemd/user
    Checking if anyone except nahoskins can change /etc/systemd/user-generators
    Checking if anyone except nahoskins can change /etc/systemd/user-preset
    Checking if anyone except nahoskins can change //freedesktop//DTD
    Checking if anyone except nahoskins can change /H
    Checking if anyone except nahoskins can change /home
    Checking if anyone except nahoskins can change /homf
    Checking if anyone except nahoskins can change /IPV6_UNICAST_HOPS
    Checking if anyone except nahoskins can change /kdbus
    Checking if anyone except nahoskins can change /L
    Checking if anyone except nahoskins can change /lib
    Checking if anyone except nahoskins can change /lib64
    Checking if anyone except nahoskins can change /lib/x86_64-linux-gnu
    Checking if anyone except nahoskins can change /M
    Checking if anyone except nahoskins can change /macI
    Checking if anyone except nahoskins can change /mnt
    Checking if anyone except nahoskins can change /module/
    Checking if anyone except nahoskins can change /nH
    Checking if anyone except nahoskins can change /notH
    Checking if anyone except nahoskins can change /org/freedesktop/DBus
    Checking if anyone except nahoskins can change /org/freedesktop/DBus/Local
    Checking if anyone except nahoskins can change /org/freedesktop/plymouthd
    Checking if anyone except nahoskins can change /org/freedesktop/PolicyKit1/Authority
    Checking if anyone except nahoskins can change /org/freedesktop/systemd1
    Checking if anyone except nahoskins can change /org/freedesktop/systemd1/agent
    Checking if anyone except nahoskins can change /org/freedesktop/systemd1/job
    Checking if anyone except nahoskins can change /org/freedesktop/systemd1/job/
    Checking if anyone except nahoskins can change /org/freedesktop/systemd1/unit
    Checking if anyone except nahoskins can change /org/freedesktop/systemd1/unit/
    Checking if anyone except nahoskins can change /org/freedesktop/systemd1/unit/self
    Checking if anyone except nahoskins can change /os-releL
    Checking if anyone except nahoskins can change /output
    Checking if anyone except nahoskins can change /priA
    Checking if anyone except nahoskins can change /proc
    Checking if anyone except nahoskins can change /proc/1/root
    Checking if anyone except nahoskins can change /proc/bc
    Checking if anyone except nahoskins can change /proc/cgroups
    Checking if anyone except nahoskins can change /proc/cmdline
    Checking if anyone except nahoskins can change /proc/cpuinfo
    Checking if anyone except nahoskins can change /proc/devices
    Checking if anyone except nahoskins can change /proc/kcore
    Checking if anyone except nahoskins can change /proc/kmsg
    Checking if anyone except nahoskins can change /proc/mounts
    Checking if anyone except nahoskins can change /proc/net/ip_tables_names
    Checking if anyone except nahoskins can change /proc/net/unix
    Checking if anyone except nahoskins can change /proc/self/attr/current
[UPC004] WARNING: /usr/lib/systemd/systemd is currently running as nahoskins. /usr/lib/systemd/systemd contains the string /proc/self/attr/current. World write is set for /proc/self/attr/current
    Checking if anyone except nahoskins can change /proc/self/cgroup
    Checking if anyone except nahoskins can change /proc/self/cmdline
    Checking if anyone except nahoskins can change /proc/self/comm
    Checking if anyone except nahoskins can change /proc/self/exe
    Checking if anyone except nahoskins can change /proc/self/fd
    Checking if anyone except nahoskins can change /proc/self/fd/0
    Checking if anyone except nahoskins can change /proc/self/fd/1
    Checking if anyone except nahoskins can change /proc/self/fd/2
    Checking if anyone except nahoskins can change /proc/self/loginuid
    Checking if anyone except nahoskins can change /proc/self/mountinfo
    Checking if anyone except nahoskins can change /proc/self/mounts
    Checking if anyone except nahoskins can change /proc/self/ns/mnt
    Checking if anyone except nahoskins can change /proc/self/ns/net
    Checking if anyone except nahoskins can change /proc/self/ns/pid
    Checking if anyone except nahoskins can change /proc/self/ns/user
    Checking if anyone except nahoskins can change /proc/self/oom_score_adj
    Checking if anyone except nahoskins can change /proc/self/root
    Checking if anyone except nahoskins can change /proc/self/sessionid
    Checking if anyone except nahoskins can change /proc/self/stat
    Checking if anyone except nahoskins can change /proc/self/status
    Checking if anyone except nahoskins can change /proc/swaps
    Checking if anyone except nahoskins can change /proc/sys
    Checking if anyone except nahoskins can change /proc/sys/kernel/cap_last_cap
    Checking if anyone except nahoskins can change /proc/sys/kernel/random/boot_id
    Checking if anyone except nahoskins can change /proc/sys/kernel/usermodehelper/bset
    Checking if anyone except nahoskins can change /proc/sys/kernel/usermodehelper/inheritable
    Checking if anyone except nahoskins can change /proc/vz
    Checking if anyone except nahoskins can change /proc/xen/capabilities
    Checking if anyone except nahoskins can change /ptmx
    Checking if anyone except nahoskins can change /roof
    Checking if anyone except nahoskins can change /root
    Checking if anyone except nahoskins can change /run
    Checking if anyone except nahoskins can change /run/initramfs
    Checking if anyone except nahoskins can change /run/machine-id
    Checking if anyone except nahoskins can change /run/mount
    Checking if anyone except nahoskins can change /run/sys
    Checking if anyone except nahoskins can change /run/sysH
    Checking if anyone except nahoskins can change /run/sysL
    Checking if anyone except nahoskins can change /run/systemd
    Checking if anyone except nahoskins can change /run/systemd/
    Checking if anyone except nahoskins can change /run/systemd/ask-password
    Checking if anyone except nahoskins can change /run/systemd/container
    Checking if anyone except nahoskins can change /run/systemd/first-boot
    Checking if anyone except nahoskins can change /run/systemd/inaccessible
    Checking if anyone except nahoskins can change /run/systemd/journal/dev-log
    Checking if anyone except nahoskins can change /run/systemd/journal/socket
    Checking if anyone except nahoskins can change /run/systemd/journal/stdout
    Checking if anyone except nahoskins can change /run/systemd/reboot-param
    Checking if anyone except nahoskins can change /run/systemd/show-status
    Checking if anyone except nahoskins can change /run/systemd/system
    Checking if anyone except nahoskins can change /run/systemd/system/
    Checking if anyone except nahoskins can change /run/systemd/system-generators
    Checking if anyone except nahoskins can change /run/systemd/user
    Checking if anyone except nahoskins can change /run/systemd/user-generators
    Checking if anyone except nahoskins can change /run/udeL
    Checking if anyone except nahoskins can change /run/udev/control
    Checking if anyone except nahoskins can change /run/usef
    Checking if anyone except nahoskins can change /run/user
    Checking if anyone except nahoskins can change /sbin
    Checking if anyone except nahoskins can change /sbin/init
    Checking if anyone except nahoskins can change /sbin/swapoff
    Checking if anyone except nahoskins can change /sbin/swapon
    Checking if anyone except nahoskins can change /sound/card
    Checking if anyone except nahoskins can change /subsyst
    Checking if anyone except nahoskins can change /subsystem/
    Checking if anyone except nahoskins can change /sys
    Checking if anyone except nahoskins can change /sys/
    Checking if anyone except nahoskins can change /sys/bus
    Checking if anyone except nahoskins can change /sys/bus/
    Checking if anyone except nahoskins can change /sys/busL
    Checking if anyone except nahoskins can change /sys/claL
    Checking if anyone except nahoskins can change /sys/class
    Checking if anyone except nahoskins can change /sys/class/
    Checking if anyone except nahoskins can change /sys/class/dmi/id/bios_vendor
    Checking if anyone except nahoskins can change /sys/class/dmi/id/board_vendor
    Checking if anyone except nahoskins can change /sys/class/dmi/id/product_uuid
    Checking if anyone except nahoskins can change /sys/class/dmi/id/sys_vendor
    Checking if anyone except nahoskins can change /sys/class/misc/autofs
    Checking if anyone except nahoskins can change /sys/class/power_supply
    Checking if anyone except nahoskins can change /sys/class/tty/console/active
    Checking if anyone except nahoskins can change /sys/class/tty/tty0/active
    Checking if anyone except nahoskins can change /sys/dev/
    Checking if anyone except nahoskins can change /sys/devices/
    Checking if anyone except nahoskins can change /sys/firmware/acpi/tables/FPDT
    Checking if anyone except nahoskins can change /sys/firmware/efi
    Checking if anyone except nahoskins can change /sys/firmware/efi/efivars
    Checking if anyone except nahoskins can change /sys/fs/
    Checking if anyone except nahoskins can change /sys/fs/cgroup
    Checking if anyone except nahoskins can change /sys/fs/cgroup/
    Checking if anyone except nahoskins can change /sys/fs/cgroup/systemd
    Checking if anyone except nahoskins can change /sys/fs/H
    Checking if anyone except nahoskins can change /sys/fs/kdbus
    Checking if anyone except nahoskins can change /sys/fs/kdbus/
    Checking if anyone except nahoskins can change /sys/fs/kdbus/0-system/bus
    Checking if anyone except nahoskins can change /sys/fs/kdbus/control
    Checking if anyone except nahoskins can change /sys/fs/pstore
    Checking if anyone except nahoskins can change /sys/fs/selinux
    Checking if anyone except nahoskins can change /sys/fs/smackfs
    Checking if anyone except nahoskins can change /sys/fs/smackfs/
    Checking if anyone except nahoskins can change /sys/fs/smackfs/change-rule
    Checking if anyone except nahoskins can change /sys/fs/smackfs/cipso2
    Checking if anyone except nahoskins can change /sys/fs/smackfs/load2
    Checking if anyone except nahoskins can change /sysH
    Checking if anyone except nahoskins can change /sys/hypervisor/type
    Checking if anyone except nahoskins can change /sys/kernel/security
    Checking if anyone except nahoskins can change /sys/kernel/security/ima/
    Checking if anyone except nahoskins can change /sys/modL
    Checking if anyone except nahoskins can change /sys/module/apparmor/parameters/enabled
    Checking if anyone except nahoskins can change /sys/module/ipv6
    Checking if anyone except nahoskins can change /sys/module/ipv6/parameters/disable
    Checking if anyone except nahoskins can change /sys/subH
    Checking if anyone except nahoskins can change /sys/subL
    Checking if anyone except nahoskins can change /sys/subsystem
    Checking if anyone except nahoskins can change /sys/subsystem/
    Checking if anyone except nahoskins can change /system
    Checking if anyone except nahoskins can change /systemd/
    Checking if anyone except nahoskins can change /systemdH
    Checking if anyone except nahoskins can change /systemd/notify
    Checking if anyone except nahoskins can change /systemd-private-
    Checking if anyone except nahoskins can change /systemd/private
    Checking if anyone except nahoskins can change /systemd/timers/stamp-
    Checking if anyone except nahoskins can change /systemd/user
    Checking if anyone except nahoskins can change /tags/
    Checking if anyone except nahoskins can change /tm
    Checking if anyone except nahoskins can change /tmp
[UPC003] WARNING: /usr/lib/systemd/systemd is currently running as nahoskins. /usr/lib/systemd/systemd contains the string /tmp. World write is set for /tmp (but sticky bit set)
    Checking if anyone except nahoskins can change /tmp/kdbus-dev-XXXXXX
[UPC003] WARNING: /usr/lib/systemd/systemd is currently running as nahoskins. /usr/lib/systemd/systemd contains the string /tmp/kdbus-dev-XXXXXX. World write is set for /tmp (but sticky bit set)
    Checking if anyone except nahoskins can change /tmp/namespace-dev-XXXXXX
[UPC003] WARNING: /usr/lib/systemd/systemd is currently running as nahoskins. /usr/lib/systemd/systemd contains the string /tmp/namespace-dev-XXXXXX. World write is set for /tmp (but sticky bit set)
    Checking if anyone except nahoskins can change /tmp/systemd-
[UPC003] WARNING: /usr/lib/systemd/systemd is currently running as nahoskins. /usr/lib/systemd/systemd contains the string /tmp/systemd-. World write is set for /tmp (but sticky bit set)
    Checking if anyone except nahoskins can change /tn
    Checking if anyone except nahoskins can change /tQ
    Checking if anyone except nahoskins can change /tVL
    Checking if anyone except nahoskins can change /tz
    Checking if anyone except nahoskins can change /u
    Checking if anyone except nahoskins can change /uBE
    Checking if anyone except nahoskins can change /uevent
    Checking if anyone except nahoskins can change /u/H
    Checking if anyone except nahoskins can change /uhH
    Checking if anyone except nahoskins can change /UID
    Checking if anyone except nahoskins can change /usef
    Checking if anyone except nahoskins can change /useH
    Checking if anyone except nahoskins can change /usr
    Checking if anyone except nahoskins can change /usr/
    Checking if anyone except nahoskins can change /usr/bin
    Checking if anyone except nahoskins can change /usr/bin/mount
    Checking if anyone except nahoskins can change /usr/bin/umount
    Checking if anyone except nahoskins can change /usr/lib1
    Checking if anyone except nahoskins can change /usr/lib/os-release
    Checking if anyone except nahoskins can change /usr/lib/systemd/system
    Checking if anyone except nahoskins can change /usr/lib/systemd/systemd
    Checking if anyone except nahoskins can change /usr/lib/systemd/systemd-cgroups-agent
    Checking if anyone except nahoskins can change /usr/lib/systemd/systemd-shutdown
    Checking if anyone except nahoskins can change /usr/lib/systemd/system-generators
    Checking if anyone except nahoskins can change /usr/lib/systemd/system-preset
    Checking if anyone except nahoskins can change /usr/lib/systemd/user
    Checking if anyone except nahoskins can change /usr/lib/systemd/user-generators
    Checking if anyone except nahoskins can change /usr/lib/systemd/user-preset
    Checking if anyone except nahoskins can change /usr/local/bin
    Checking if anyone except nahoskins can change /usr/local/lib/systemd/system
    Checking if anyone except nahoskins can change /usr/local/lib/systemd/system-generators
    Checking if anyone except nahoskins can change /usr/local/lib/systemd/system-preset
    Checking if anyone except nahoskins can change /usr/local/lib/systemd/user
    Checking if anyone except nahoskins can change /usr/local/lib/systemd/user-generators
    Checking if anyone except nahoskins can change /usr/local/lib/systemd/user-preset
    Checking if anyone except nahoskins can change /usr/local/sbin
    Checking if anyone except nahoskins can change /usr/local/share
    Checking if anyone except nahoskins can change /usr/local/share/systemd/user
    Checking if anyone except nahoskins can change /usr/sbin
    Checking if anyone except nahoskins can change /usr/share
    Checking if anyone except nahoskins can change /usr/share/systemd/user
    Checking if anyone except nahoskins can change /uzE1
    Checking if anyone except nahoskins can change /VA
    Checking if anyone except nahoskins can change /var/lib/dbus/machine-id
    Checking if anyone except nahoskins can change /var/lib/systemd/timers
    Checking if anyone except nahoskins can change /var/lib/systemd/timers/stamp-
    Checking if anyone except nahoskins can change /var/log/wtmp
    Checking if anyone except nahoskins can change /var/run
    Checking if anyone except nahoskins can change /var/run/utmp
    Checking if anyone except nahoskins can change /var/tmp
[UPC003] WARNING: /usr/lib/systemd/systemd is currently running as nahoskins. /usr/lib/systemd/systemd contains the string /var/tmp. World write is set for /var/tmp (but sticky bit set)
    Checking if anyone except nahoskins can change /proc/584/fd/0
[UPC004] WARNING: /proc/584/fd/0 is an open file descriptor for process 584 running as nahoskins. World write is set for /proc/584/fd/0
    Checking if anyone except nahoskins can change /proc/584/fd/1
    Checking if anyone except nahoskins can change /proc/584/fd/10
    Checking if anyone except nahoskins can change /proc/584/fd/11
    Checking if anyone except nahoskins can change /proc/584/fd/12
    Checking if anyone except nahoskins can change /proc/584/fd/13
    Checking if anyone except nahoskins can change /proc/584/fd/14
    Checking if anyone except nahoskins can change /proc/584/fd/15
    Checking if anyone except nahoskins can change /proc/584/fd/16
    Checking if anyone except nahoskins can change /proc/584/fd/18
    Checking if anyone except nahoskins can change /proc/584/fd/2
    Checking if anyone except nahoskins can change /proc/584/fd/3
    Checking if anyone except nahoskins can change /proc/584/fd/4
    Checking if anyone except nahoskins can change /proc/584/fd/5
    Checking if anyone except nahoskins can change /proc/584/fd/6
    Checking if anyone except nahoskins can change /proc/584/fd/7
    Checking if anyone except nahoskins can change /proc/584/fd/8
    Checking if anyone except nahoskins can change /proc/584/fd/9
------------------------
PID:           586
ERROR: Can't find full path of running program: (sd-pam)
Owner:         nahoskins
------------------------
PID:           589
Owner:         nahoskins
Program path:  /usr/bin/zsh
    Checking if anyone except nahoskins can change /usr/bin/zsh
    Checking if anyone except nahoskins can change /usr/lib/libcap.so.2
    Checking if anyone except nahoskins can change /usr/lib/libdl.so.2
    Checking if anyone except nahoskins can change /usr/lib/libncursesw.so.6
    Checking if anyone except nahoskins can change /usr/lib/libm.so.6
    Checking if anyone except nahoskins can change /usr/lib/libc.so.6
    Checking if anyone except nahoskins can change /usr/lib/libattr.so.1
    Checking if anyone except nahoskins can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except nahoskins can change /
    Checking if anyone except nahoskins can change /A
    Checking if anyone except nahoskins can change /Backends
    Checking if anyone except nahoskins can change /Base
    Checking if anyone except nahoskins can change /bin
    Checking if anyone except nahoskins can change /bin/sh
    Checking if anyone except nahoskins can change /C
    Checking if anyone except nahoskins can change /compctl
    Checking if anyone except nahoskins can change /complete
    Checking if anyone except nahoskins can change /complist
    Checking if anyone except nahoskins can change /computil
    Checking if anyone except nahoskins can change /cur
    Checking if anyone except nahoskins can change /D
    Checking if anyone except nahoskins can change /dev/
    Checking if anyone except nahoskins can change /dev/fd/
    Checking if anyone except nahoskins can change /dev/null
[UPC004] WARNING: /usr/bin/zsh is currently running as nahoskins. /usr/bin/zsh contains the string /dev/null. World write is set for /dev/null
    Checking if anyone except nahoskins can change /dev/tty
[UPC004] WARNING: /usr/bin/zsh is currently running as nahoskins. /usr/bin/zsh contains the string /dev/tty. World write is set for /dev/tty
    Checking if anyone except nahoskins can change /etc/profile
    Checking if anyone except nahoskins can change /etc/suid_profile
    Checking if anyone except nahoskins can change /etc/zsh/zlogin
    Checking if anyone except nahoskins can change /etc/zsh/zlogout
    Checking if anyone except nahoskins can change /etc/zsh/zprofile
    Checking if anyone except nahoskins can change /etc/zsh/zshenv
    Checking if anyone except nahoskins can change /etc/zsh/zshrc
    Checking if anyone except nahoskins can change /H
    Checking if anyone except nahoskins can change /H1U
    Checking if anyone except nahoskins can change /HcD
    Checking if anyone except nahoskins can change /L
    Checking if anyone except nahoskins can change /Linux
    Checking if anyone except nahoskins can change /main
    Checking if anyone except nahoskins can change /new
    Checking if anyone except nahoskins can change /newuser
    Checking if anyone except nahoskins can change /parameter
    Checking if anyone except nahoskins can change /pcre
    Checking if anyone except nahoskins can change /proc/self/fd
    Checking if anyone except nahoskins can change /r
    Checking if anyone except nahoskins can change /regex
    Checking if anyone except nahoskins can change /rlimits
    Checking if anyone except nahoskins can change /sched
    Checking if anyone except nahoskins can change /t
    Checking if anyone except nahoskins can change /t5H
    Checking if anyone except nahoskins can change /t7
    Checking if anyone except nahoskins can change /termcap
    Checking if anyone except nahoskins can change /terminfo
    Checking if anyone except nahoskins can change /tGL
    Checking if anyone except nahoskins can change /tKH
    Checking if anyone except nahoskins can change /tKUSH
    Checking if anyone except nahoskins can change /tM
    Checking if anyone except nahoskins can change /tmp
[UPC003] WARNING: /usr/bin/zsh is currently running as nahoskins. /usr/bin/zsh contains the string /tmp. World write is set for /tmp (but sticky bit set)
    Checking if anyone except nahoskins can change /tmp/zsh
[UPC003] WARNING: /usr/bin/zsh is currently running as nahoskins. /usr/bin/zsh contains the string /tmp/zsh. World write is set for /tmp (but sticky bit set)
    Checking if anyone except nahoskins can change /tqH
    Checking if anyone except nahoskins can change /tyH
    Checking if anyone except nahoskins can change /u
    Checking if anyone except nahoskins can change /uKH
    Checking if anyone except nahoskins can change /Unix
    Checking if anyone except nahoskins can change /usr/bin
    Checking if anyone except nahoskins can change /usr/local/bin
    Checking if anyone except nahoskins can change /usr/local/share/zsh/site-functions
    Checking if anyone except nahoskins can change /usr/share/zsh/functions
    Checking if anyone except nahoskins can change /usr/share/zsh/site-functions
    Checking if anyone except nahoskins can change /usr/ucb
    Checking if anyone except nahoskins can change /uzH
    Checking if anyone except nahoskins can change /value
    Checking if anyone except nahoskins can change /var/log/wtmp
    Checking if anyone except nahoskins can change /var/run/utmp
    Checking if anyone except nahoskins can change /wbH
    Checking if anyone except nahoskins can change /X
    Checking if anyone except nahoskins can change /xJH
    Checking if anyone except nahoskins can change /zle
    Checking if anyone except nahoskins can change /zleparameter
    Checking if anyone except nahoskins can change /Zsh
    Checking if anyone except nahoskins can change /zutil
    Checking if anyone except nahoskins can change /proc/589/fd/0
    Checking if anyone except nahoskins can change /proc/589/fd/1
    Checking if anyone except nahoskins can change /proc/589/fd/10
    Checking if anyone except nahoskins can change /proc/589/fd/2
------------------------
PID:           617
Owner:         nahoskins
Program path:  /usr/bin/bash
    Checking if anyone except nahoskins can change /usr/bin/bash
    Checking if anyone except nahoskins can change /usr/lib/libreadline.so.6
    Checking if anyone except nahoskins can change /usr/lib/libncursesw.so.6
    Checking if anyone except nahoskins can change /usr/lib/libdl.so.2
    Checking if anyone except nahoskins can change /usr/lib/libc.so.6
    Checking if anyone except nahoskins can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except nahoskins can change /
    Checking if anyone except nahoskins can change /04
    Checking if anyone except nahoskins can change /bin/sh
    Checking if anyone except nahoskins can change /cur
    Checking if anyone except nahoskins can change /D
    Checking if anyone except nahoskins can change /dev/fd/
    Checking if anyone except nahoskins can change /dev/fd/H
    Checking if anyone except nahoskins can change /dev/fd/I
    Checking if anyone except nahoskins can change /dev/null
[UPC004] WARNING: /usr/bin/bash is currently running as nahoskins. /usr/bin/bash contains the string /dev/null. World write is set for /dev/null
    Checking if anyone except nahoskins can change /dev/std
    Checking if anyone except nahoskins can change /dev/tcp/
    Checking if anyone except nahoskins can change /dev/tty
[UPC004] WARNING: /usr/bin/bash is currently running as nahoskins. /usr/bin/bash contains the string /dev/tty. World write is set for /dev/tty
    Checking if anyone except nahoskins can change /dev/udp/
    Checking if anyone except nahoskins can change /etc/hosts
    Checking if anyone except nahoskins can change /etc/profile
    Checking if anyone except nahoskins can change /fV
    Checking if anyone except nahoskins can change /H
    Checking if anyone except nahoskins can change /Hc
    Checking if anyone except nahoskins can change /J
    Checking if anyone except nahoskins can change /new
    Checking if anyone except nahoskins can change /t
    Checking if anyone except nahoskins can change /tg
    Checking if anyone except nahoskins can change /tmp
[UPC003] WARNING: /usr/bin/bash is currently running as nahoskins. /usr/bin/bash contains the string /tmp. World write is set for /tmp (but sticky bit set)
    Checking if anyone except nahoskins can change /tnI
    Checking if anyone except nahoskins can change /u
    Checking if anyone except nahoskins can change /usr/bin
    Checking if anyone except nahoskins can change /usr/binH
    Checking if anyone except nahoskins can change /usr/local/bin
    Checking if anyone except nahoskins can change /usr/local/sbin
    Checking if anyone except nahoskins can change /usr/share/locale
    Checking if anyone except nahoskins can change /usr/tmp
    Checking if anyone except nahoskins can change /var/maiH
    Checking if anyone except nahoskins can change /var/tmp
[UPC003] WARNING: /usr/bin/bash is currently running as nahoskins. /usr/bin/bash contains the string /var/tmp. World write is set for /var/tmp (but sticky bit set)
    Checking if anyone except nahoskins can change /proc/617/fd/0
    Checking if anyone except nahoskins can change /proc/617/fd/1
    Checking if anyone except nahoskins can change /proc/617/fd/2
    Checking if anyone except nahoskins can change /proc/617/fd/255
------------------------
PID:           639
Owner:         nahoskins
Program path:  /usr/bin/xinit
    Checking if anyone except nahoskins can change /usr/bin/xinit
    Checking if anyone except nahoskins can change /usr/lib/libX11.so.6
    Checking if anyone except nahoskins can change /usr/lib/libc.so.6
    Checking if anyone except nahoskins can change /usr/lib/libxcb.so.1
    Checking if anyone except nahoskins can change /usr/lib/libdl.so.2
    Checking if anyone except nahoskins can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except nahoskins can change /usr/lib/libXau.so.6
    Checking if anyone except nahoskins can change /usr/lib/libXdmcp.so.6
    Checking if anyone except nahoskins can change /
    Checking if anyone except nahoskins can change /usr/bin
    Checking if anyone except nahoskins can change /proc/639/fd/0
    Checking if anyone except nahoskins can change /proc/639/fd/1
    Checking if anyone except nahoskins can change /proc/639/fd/2
    Checking if anyone except nahoskins can change /proc/639/fd/3
------------------------
PID:           640
Owner:         root
Program path:  /usr/lib/xorg-server/Xorg
    Checking if anyone except root can change /usr/lib/xorg-server/Xorg
    Checking if anyone except root can change /usr/lib/libdbus-1.so.3
    Checking if anyone except root can change /usr/lib/libudev.so.1
    Checking if anyone except root can change /usr/lib/libgcrypt.so.20
    Checking if anyone except root can change /usr/lib/libdl.so.2
    Checking if anyone except root can change /usr/lib/libunwind.so.8
    Checking if anyone except root can change /usr/lib/libpciaccess.so.0
    Checking if anyone except root can change /usr/lib/libdrm.so.2
    Checking if anyone except root can change /usr/lib/libpixman-1.so.0
    Checking if anyone except root can change /usr/lib/libXfont.so.1
    Checking if anyone except root can change /usr/lib/libXau.so.6
    Checking if anyone except root can change /usr/lib/libsystemd.so.0
    Checking if anyone except root can change /usr/lib/libxshmfence.so.1
    Checking if anyone except root can change /usr/lib/libXdmcp.so.6
    Checking if anyone except root can change /usr/lib/libm.so.6
    Checking if anyone except root can change /usr/lib/libc.so.6
    Checking if anyone except root can change /usr/lib/libpthread.so.0
    Checking if anyone except root can change /usr/lib/librt.so.1
    Checking if anyone except root can change /usr/lib/libresolv.so.2
    Checking if anyone except root can change /usr/lib/libcap.so.2
    Checking if anyone except root can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except root can change /usr/lib/libgpg-error.so.0
    Checking if anyone except root can change /usr/lib/liblzma.so.5
    Checking if anyone except root can change /usr/lib/libfreetype.so.6
    Checking if anyone except root can change /usr/lib/libz.so.1
    Checking if anyone except root can change /usr/lib/libfontenc.so.1
    Checking if anyone except root can change /usr/lib/liblz4.so.1
    Checking if anyone except root can change /usr/lib/libattr.so.1
    Checking if anyone except root can change /usr/lib/libbz2.so.1.0
    Checking if anyone except root can change /usr/lib/libpng16.so.16
    Checking if anyone except root can change /usr/lib/libharfbuzz.so.0
    Checking if anyone except root can change /usr/lib/libglib-2.0.so.0
    Checking if anyone except root can change /usr/lib/libgraphite2.so.3
    Checking if anyone except root can change /usr/lib/libpcre.so.1
    Checking if anyone except root can change /
    Checking if anyone except root can change //
    Checking if anyone except root can change //3
    Checking if anyone except root can change /484
    Checking if anyone except root can change /7
    Checking if anyone except root can change /9
    Checking if anyone except root can change /A
    Checking if anyone except root can change /bin/sh
    Checking if anyone except root can change /Color
    Checking if anyone except root can change /dev/agpgart
    Checking if anyone except root can change /dev/apm_bios
    Checking if anyone except root can change /dev/input/mice
    Checking if anyone except root can change /dev/nul
    Checking if anyone except root can change /dev/null
[UPC004] WARNING: /usr/lib/xorg-server/Xorg is currently running as root. /usr/lib/xorg-server/Xorg contains the string /dev/null. World write is set for /dev/null
    Checking if anyone except root can change /dev/tty0
    Checking if anyone except root can change /dev/ttyxx
    Checking if anyone except root can change /dev/urandom
[UPC004] WARNING: /usr/lib/xorg-server/Xorg is currently running as root. /usr/lib/xorg-server/Xorg contains the string /dev/urandom. World write is set for /dev/urandom
    Checking if anyone except root can change /dev/vc/0
    Checking if anyone except root can change /disable
    Checking if anyone except root can change /E1
    Checking if anyone except root can change /effective
    Checking if anyone except root can change /etc
    Checking if anyone except root can change /f
    Checking if anyone except root can change /fbbpp
    Checking if anyone except root can change /g
    Checking if anyone except root can change /g/b
    Checking if anyone except root can change /GrayScale
    Checking if anyone except root can change /H
    Checking if anyone except root can change /hal
    Checking if anyone except root can change /Hc
    Checking if anyone except root can change /I
    Checking if anyone except root can change /Ic
    Checking if anyone except root can change /interlace/doublescan
    Checking if anyone except root can change /jHS_
    Checking if anyone except root can change /kHz/MHz
    Checking if anyone except root can change /L
    Checking if anyone except root can change /l7
    Checking if anyone except root can change /layout
    Checking if anyone except root can change /M7i
    Checking if anyone except root can change /n
    Checking if anyone except root can change /O
    Checking if anyone except root can change /open
    Checking if anyone except root can change /org/freedesktop/DBus
    Checking if anyone except root can change /org/freedesktop/login1
    Checking if anyone except root can change /proc/apm
    Checking if anyone except root can change /proc/cmdline
    Checking if anyone except root can change /proc/sys/kernel/modprobe
    Checking if anyone except root can change /sbin
    Checking if anyone except root can change /sbin/mo
    Checking if anyone except root can change /ScreenInit
    Checking if anyone except root can change /SH
    Checking if anyone except root can change /share
    Checking if anyone except root can change /shmfd-X
    Checking if anyone except root can change /t09
    Checking if anyone except root can change /tmpf
    Checking if anyone except root can change /tmp/launch
[UPC003] WARNING: /usr/lib/xorg-server/Xorg is currently running as root. /usr/lib/xorg-server/Xorg contains the string /tmp/launch. World write is set for /tmp (but sticky bit set)
    Checking if anyone except root can change /u-
    Checking if anyone except root can change /udev
    Checking if anyone except root can change /usr
    Checking if anyone except root can change /usr/bin
    Checking if anyone except root can change /usr/lib
    Checking if anyone except root can change /usr/lib/xorg/modules
    Checking if anyone except root can change /usr/sha
    Checking if anyone except root can change /usr/share/X11/xkb
    Checking if anyone except root can change /var/lib
    Checking if anyone except root can change /var/lib/xkb/
    Checking if anyone except root can change /var/run
    Checking if anyone except root can change /var/tmp
[UPC003] WARNING: /usr/lib/xorg-server/Xorg is currently running as root. /usr/lib/xorg-server/Xorg contains the string /var/tmp. World write is set for /var/tmp (but sticky bit set)
    Checking if anyone except root can change /var/tmpH
    Checking if anyone except root can change /vXI
    Checking if anyone except root can change /wGH
    Checking if anyone except root can change /white
    Checking if anyone except root can change /wscons
    Checking if anyone except root can change /xkbH
    Checking if anyone except root can change /y
------------------------
PID:           650
Owner:         nahoskins
Program path:  /usr/bin/awesome
    Checking if anyone except nahoskins can change /usr/bin/awesome
    Checking if anyone except nahoskins can change /usr/lib/libxcb.so.1
    Checking if anyone except nahoskins can change /usr/lib/libgdk_pixbuf-2.0.so.0
    Checking if anyone except nahoskins can change /usr/lib/libgobject-2.0.so.0
    Checking if anyone except nahoskins can change /usr/lib/libglib-2.0.so.0
    Checking if anyone except nahoskins can change /usr/lib/libX11.so.6
    Checking if anyone except nahoskins can change /usr/lib/libxcb-cursor.so.0
    Checking if anyone except nahoskins can change /usr/lib/libxcb-randr.so.0
    Checking if anyone except nahoskins can change /usr/lib/libxcb-xtest.so.0
    Checking if anyone except nahoskins can change /usr/lib/libxcb-xinerama.so.0
    Checking if anyone except nahoskins can change /usr/lib/libxcb-shape.so.0
    Checking if anyone except nahoskins can change /usr/lib/libxcb-util.so.1
    Checking if anyone except nahoskins can change /usr/lib/libxcb-keysyms.so.1
    Checking if anyone except nahoskins can change /usr/lib/libxcb-icccm.so.4
    Checking if anyone except nahoskins can change /usr/lib/libcairo.so.2
    Checking if anyone except nahoskins can change /usr/lib/libstartup-notification-1.so.0
    Checking if anyone except nahoskins can change /usr/lib/libxdg-basedir.so.1
    Checking if anyone except nahoskins can change /usr/lib/liblua.so.5.3
    Checking if anyone except nahoskins can change /usr/lib/libdbus-1.so.3
    Checking if anyone except nahoskins can change /usr/lib/libc.so.6
    Checking if anyone except nahoskins can change /usr/lib/libXau.so.6
    Checking if anyone except nahoskins can change /usr/lib/libXdmcp.so.6
    Checking if anyone except nahoskins can change /usr/lib/libgmodule-2.0.so.0
    Checking if anyone except nahoskins can change /usr/lib/libgio-2.0.so.0
    Checking if anyone except nahoskins can change /usr/lib/libpng16.so.16
    Checking if anyone except nahoskins can change /usr/lib/libm.so.6
    Checking if anyone except nahoskins can change /usr/lib/libpthread.so.0
    Checking if anyone except nahoskins can change /usr/lib/libpcre.so.1
    Checking if anyone except nahoskins can change /usr/lib/libffi.so.6
    Checking if anyone except nahoskins can change /usr/lib/libdl.so.2
    Checking if anyone except nahoskins can change /usr/lib/libxcb-render-util.so.0
    Checking if anyone except nahoskins can change /usr/lib/libxcb-render.so.0
    Checking if anyone except nahoskins can change /usr/lib/libxcb-image.so.0
    Checking if anyone except nahoskins can change /usr/lib/libxcb-shm.so.0
    Checking if anyone except nahoskins can change /usr/lib/libpixman-1.so.0
    Checking if anyone except nahoskins can change /usr/lib/libfontconfig.so.1
    Checking if anyone except nahoskins can change /usr/lib/libfreetype.so.6
    Checking if anyone except nahoskins can change /usr/lib/libEGL.so.1
    Checking if anyone except nahoskins can change /usr/lib/libXrender.so.1
    Checking if anyone except nahoskins can change /usr/lib/libXext.so.6
    Checking if anyone except nahoskins can change /usr/lib/libz.so.1
    Checking if anyone except nahoskins can change /usr/lib/libGL.so.1
    Checking if anyone except nahoskins can change /usr/lib/librt.so.1
    Checking if anyone except nahoskins can change /usr/lib/libX11-xcb.so.1
    Checking if anyone except nahoskins can change /usr/lib/libsystemd.so.0
    Checking if anyone except nahoskins can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except nahoskins can change /usr/lib/libresolv.so.2
    Checking if anyone except nahoskins can change /usr/lib/libexpat.so.1
    Checking if anyone except nahoskins can change /usr/lib/libbz2.so.1.0
    Checking if anyone except nahoskins can change /usr/lib/libharfbuzz.so.0
    Checking if anyone except nahoskins can change /usr/lib/libnvidia-glsi.so.340.93
    Checking if anyone except nahoskins can change /usr/lib/libnvidia-tls.so.340.93
    Checking if anyone except nahoskins can change /usr/lib/libnvidia-glcore.so.340.93
    Checking if anyone except nahoskins can change /usr/lib/liblzma.so.5
    Checking if anyone except nahoskins can change /usr/lib/liblz4.so.1
    Checking if anyone except nahoskins can change /usr/lib/libgcrypt.so.20
    Checking if anyone except nahoskins can change /usr/lib/libgpg-error.so.0
    Checking if anyone except nahoskins can change /usr/lib/libcap.so.2
    Checking if anyone except nahoskins can change /usr/lib/libgraphite2.so.3
    Checking if anyone except nahoskins can change /usr/lib/libattr.so.1
    Checking if anyone except nahoskins can change /0
    Checking if anyone except nahoskins can change /3
    Checking if anyone except nahoskins can change /bin/sh
    Checking if anyone except nahoskins can change /l
    Checking if anyone except nahoskins can change /t
    Checking if anyone except nahoskins can change /USH
    Checking if anyone except nahoskins can change /proc/650/fd/0
    Checking if anyone except nahoskins can change /proc/650/fd/1
    Checking if anyone except nahoskins can change /proc/650/fd/10
    Checking if anyone except nahoskins can change /proc/650/fd/11
    Checking if anyone except nahoskins can change /proc/650/fd/12
    Checking if anyone except nahoskins can change /proc/650/fd/13
    Checking if anyone except nahoskins can change /proc/650/fd/14
    Checking if anyone except nahoskins can change /proc/650/fd/15
    Checking if anyone except nahoskins can change /proc/650/fd/16
    Checking if anyone except nahoskins can change /proc/650/fd/17
    Checking if anyone except nahoskins can change /proc/650/fd/18
    Checking if anyone except nahoskins can change /proc/650/fd/19
    Checking if anyone except nahoskins can change /proc/650/fd/2
    Checking if anyone except nahoskins can change /proc/650/fd/20
    Checking if anyone except nahoskins can change /proc/650/fd/21
    Checking if anyone except nahoskins can change /proc/650/fd/22
    Checking if anyone except nahoskins can change /proc/650/fd/23
    Checking if anyone except nahoskins can change /proc/650/fd/24
    Checking if anyone except nahoskins can change /proc/650/fd/25
    Checking if anyone except nahoskins can change /proc/650/fd/26
    Checking if anyone except nahoskins can change /proc/650/fd/27
    Checking if anyone except nahoskins can change /proc/650/fd/273
    Checking if anyone except nahoskins can change /proc/650/fd/28
    Checking if anyone except nahoskins can change /proc/650/fd/29
    Checking if anyone except nahoskins can change /proc/650/fd/3
    Checking if anyone except nahoskins can change /proc/650/fd/30
    Checking if anyone except nahoskins can change /proc/650/fd/31
    Checking if anyone except nahoskins can change /proc/650/fd/32
    Checking if anyone except nahoskins can change /proc/650/fd/33
    Checking if anyone except nahoskins can change /proc/650/fd/34
    Checking if anyone except nahoskins can change /proc/650/fd/35
    Checking if anyone except nahoskins can change /proc/650/fd/36
    Checking if anyone except nahoskins can change /proc/650/fd/37
    Checking if anyone except nahoskins can change /proc/650/fd/38
    Checking if anyone except nahoskins can change /proc/650/fd/39
    Checking if anyone except nahoskins can change /proc/650/fd/4
    Checking if anyone except nahoskins can change /proc/650/fd/40
    Checking if anyone except nahoskins can change /proc/650/fd/41
    Checking if anyone except nahoskins can change /proc/650/fd/42
    Checking if anyone except nahoskins can change /proc/650/fd/43
    Checking if anyone except nahoskins can change /proc/650/fd/44
    Checking if anyone except nahoskins can change /proc/650/fd/45
    Checking if anyone except nahoskins can change /proc/650/fd/46
    Checking if anyone except nahoskins can change /proc/650/fd/47
    Checking if anyone except nahoskins can change /proc/650/fd/48
    Checking if anyone except nahoskins can change /proc/650/fd/49
    Checking if anyone except nahoskins can change /proc/650/fd/5
    Checking if anyone except nahoskins can change /proc/650/fd/50
    Checking if anyone except nahoskins can change /proc/650/fd/51
    Checking if anyone except nahoskins can change /proc/650/fd/52
    Checking if anyone except nahoskins can change /proc/650/fd/53
    Checking if anyone except nahoskins can change /proc/650/fd/54
    Checking if anyone except nahoskins can change /proc/650/fd/55
    Checking if anyone except nahoskins can change /proc/650/fd/56
    Checking if anyone except nahoskins can change /proc/650/fd/57
    Checking if anyone except nahoskins can change /proc/650/fd/58
    Checking if anyone except nahoskins can change /proc/650/fd/59
    Checking if anyone except nahoskins can change /proc/650/fd/6
    Checking if anyone except nahoskins can change /proc/650/fd/60
    Checking if anyone except nahoskins can change /proc/650/fd/61
    Checking if anyone except nahoskins can change /proc/650/fd/62
    Checking if anyone except nahoskins can change /proc/650/fd/63
    Checking if anyone except nahoskins can change /proc/650/fd/64
    Checking if anyone except nahoskins can change /proc/650/fd/65
    Checking if anyone except nahoskins can change /proc/650/fd/66
    Checking if anyone except nahoskins can change /proc/650/fd/67
    Checking if anyone except nahoskins can change /proc/650/fd/68
    Checking if anyone except nahoskins can change /proc/650/fd/69
    Checking if anyone except nahoskins can change /proc/650/fd/7
    Checking if anyone except nahoskins can change /proc/650/fd/70
    Checking if anyone except nahoskins can change /proc/650/fd/71
    Checking if anyone except nahoskins can change /proc/650/fd/72
    Checking if anyone except nahoskins can change /proc/650/fd/73
    Checking if anyone except nahoskins can change /proc/650/fd/74
    Checking if anyone except nahoskins can change /proc/650/fd/75
    Checking if anyone except nahoskins can change /proc/650/fd/76
    Checking if anyone except nahoskins can change /proc/650/fd/77
    Checking if anyone except nahoskins can change /proc/650/fd/78
    Checking if anyone except nahoskins can change /proc/650/fd/79
    Checking if anyone except nahoskins can change /proc/650/fd/8
    Checking if anyone except nahoskins can change /proc/650/fd/80
    Checking if anyone except nahoskins can change /proc/650/fd/81
    Checking if anyone except nahoskins can change /proc/650/fd/82
    Checking if anyone except nahoskins can change /proc/650/fd/83
    Checking if anyone except nahoskins can change /proc/650/fd/84
    Checking if anyone except nahoskins can change /proc/650/fd/85
    Checking if anyone except nahoskins can change /proc/650/fd/86
    Checking if anyone except nahoskins can change /proc/650/fd/87
    Checking if anyone except nahoskins can change /proc/650/fd/88
    Checking if anyone except nahoskins can change /proc/650/fd/89
    Checking if anyone except nahoskins can change /proc/650/fd/9
    Checking if anyone except nahoskins can change /proc/650/fd/90
------------------------
PID:           656
Owner:         nahoskins
Program path:  /usr/bin/dbus-daemon
    Checking if anyone except nahoskins can change /usr/bin/dbus-daemon
    Checking if anyone except nahoskins can change /usr/lib/libdbus-1.so.3
    Checking if anyone except nahoskins can change /usr/lib/libsystemd.so.0
    Checking if anyone except nahoskins can change /usr/lib/libexpat.so.1
    Checking if anyone except nahoskins can change /usr/lib/libpthread.so.0
    Checking if anyone except nahoskins can change /usr/lib/libc.so.6
    Checking if anyone except nahoskins can change /usr/lib/libdl.so.2
    Checking if anyone except nahoskins can change /usr/lib/librt.so.1
    Checking if anyone except nahoskins can change /usr/lib/libm.so.6
    Checking if anyone except nahoskins can change /usr/lib/libresolv.so.2
    Checking if anyone except nahoskins can change /usr/lib/liblzma.so.5
    Checking if anyone except nahoskins can change /usr/lib/liblz4.so.1
    Checking if anyone except nahoskins can change /usr/lib/libgcrypt.so.20
    Checking if anyone except nahoskins can change /usr/lib/libgpg-error.so.0
    Checking if anyone except nahoskins can change /usr/lib/libcap.so.2
    Checking if anyone except nahoskins can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except nahoskins can change /usr/lib/libattr.so.1
    Checking if anyone except nahoskins can change /D
    Checking if anyone except nahoskins can change /dbus-1/services
    Checking if anyone except nahoskins can change /dbus-1/system-services
    Checking if anyone except nahoskins can change /dev/null
[UPC004] WARNING: /usr/bin/dbus-daemon is currently running as nahoskins. /usr/bin/dbus-daemon contains the string /dev/null. World write is set for /dev/null
    Checking if anyone except nahoskins can change //freedesktop//DTD
    Checking if anyone except nahoskins can change /Hcs
    Checking if anyone except nahoskins can change /lib
    Checking if anyone except nahoskins can change /org/freedesktop/DBus
    Checking if anyone except nahoskins can change /run/console/
    Checking if anyone except nahoskins can change /run/systemd/seats/
    Checking if anyone except nahoskins can change /uC9
    Checking if anyone except nahoskins can change /usr/local/share
    Checking if anyone except nahoskins can change /usr/share
    Checking if anyone except nahoskins can change /value
    Checking if anyone except nahoskins can change /proc/656/fd/0
[UPC004] WARNING: /proc/656/fd/0 is an open file descriptor for process 656 running as nahoskins. World write is set for /proc/656/fd/0
    Checking if anyone except nahoskins can change /proc/656/fd/1
    Checking if anyone except nahoskins can change /proc/656/fd/10
    Checking if anyone except nahoskins can change /proc/656/fd/11
    Checking if anyone except nahoskins can change /proc/656/fd/12
    Checking if anyone except nahoskins can change /proc/656/fd/13
    Checking if anyone except nahoskins can change /proc/656/fd/2
    Checking if anyone except nahoskins can change /proc/656/fd/3
    Checking if anyone except nahoskins can change /proc/656/fd/4
    Checking if anyone except nahoskins can change /proc/656/fd/5
    Checking if anyone except nahoskins can change /proc/656/fd/6
    Checking if anyone except nahoskins can change /proc/656/fd/7
    Checking if anyone except nahoskins can change /proc/656/fd/8
    Checking if anyone except nahoskins can change /proc/656/fd/9
------------------------
PID:           6759
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
    Checking if anyone except nahoskins can change /usr/lib/libGL.so.1
    Checking if anyone except nahoskins can change /usr/lib/libm.so.6
    Checking if anyone except nahoskins can change /usr/lib/libpcre.so.1
    Checking if anyone except nahoskins can change /usr/lib/libXcomposite.so.1
    Checking if anyone except nahoskins can change /usr/lib/libXdamage.so.1
    Checking if anyone except nahoskins can change /usr/lib/libXfixes.so.3
    Checking if anyone except nahoskins can change /usr/lib/libXrender.so.1
    Checking if anyone except nahoskins can change /usr/lib/libX11.so.6
    Checking if anyone except nahoskins can change /usr/lib/libXext.so.6
    Checking if anyone except nahoskins can change /usr/lib/libXrandr.so.2
    Checking if anyone except nahoskins can change /usr/lib/libXinerama.so.1
    Checking if anyone except nahoskins can change /usr/lib/libconfig.so.9
    Checking if anyone except nahoskins can change /usr/lib/libdbus-1.so.3
    Checking if anyone except nahoskins can change /usr/lib/libc.so.6
    Checking if anyone except nahoskins can change /usr/lib/libnvidia-tls.so.340.93
    Checking if anyone except nahoskins can change /usr/lib/libnvidia-glcore.so.340.93
    Checking if anyone except nahoskins can change /usr/lib/libdl.so.2
    Checking if anyone except nahoskins can change /usr/lib/libpthread.so.0
    Checking if anyone except nahoskins can change /usr/lib/libxcb.so.1
    Checking if anyone except nahoskins can change /usr/lib/libsystemd.so.0
    Checking if anyone except nahoskins can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except nahoskins can change /usr/lib/libXau.so.6
    Checking if anyone except nahoskins can change /usr/lib/libXdmcp.so.6
    Checking if anyone except nahoskins can change /usr/lib/librt.so.1
    Checking if anyone except nahoskins can change /usr/lib/libresolv.so.2
    Checking if anyone except nahoskins can change /usr/lib/liblzma.so.5
    Checking if anyone except nahoskins can change /usr/lib/liblz4.so.1
    Checking if anyone except nahoskins can change /usr/lib/libgcrypt.so.20
    Checking if anyone except nahoskins can change /usr/lib/libgpg-error.so.0
    Checking if anyone except nahoskins can change /usr/lib/libcap.so.2
    Checking if anyone except nahoskins can change /usr/lib/libattr.so.1
    Checking if anyone except nahoskins can change /
    Checking if anyone except nahoskins can change /-
    Checking if anyone except nahoskins can change /4
    Checking if anyone except nahoskins can change /9D
    Checking if anyone except nahoskins can change /boolean
    Checking if anyone except nahoskins can change /com/github/chjj/compton
    Checking if anyone except nahoskins can change /compton
    Checking if anyone except nahoskins can change /comptonA
    Checking if anyone except nahoskins can change /copy/exchange/3/4/5/6/buffer-age
    Checking if anyone except nahoskins can change /dev/dri/card0
    Checking if anyone except nahoskins can change /dev/null
[UPC004] WARNING: /usr/bin/compton is currently running as nahoskins. /usr/bin/compton contains the string /dev/null. World write is set for /dev/null
    Checking if anyone except nahoskins can change /etc/xdgH
    Checking if anyone except nahoskins can change //freedesktop//DTD
    Checking if anyone except nahoskins can change /GetVideoSyncSGI
    Checking if anyone except nahoskins can change /greater-than/less-than
    Checking if anyone except nahoskins can change /height
    Checking if anyone except nahoskins can change /hex
    Checking if anyone except nahoskins can change /out
    Checking if anyone except nahoskins can change /Out
    Checking if anyone except nahoskins can change /panel
    Checking if anyone except nahoskins can change /proc/713/fd/0
[UPC004] WARNING: /proc/713/fd/0 is an open file descriptor for process 713 running as nahoskins. World write is set for /proc/713/fd/0
    Checking if anyone except nahoskins can change /proc/713/fd/1
    Checking if anyone except nahoskins can change /proc/713/fd/2
    Checking if anyone except nahoskins can change /proc/713/fd/3
------------------------
PID:           731
Owner:         nahoskins
Program path:  /usr/bin/conky
    Checking if anyone except nahoskins can change /usr/bin/conky
    Checking if anyone except nahoskins can change /usr/lib/libpthread.so.0
    Checking if anyone except nahoskins can change /usr/lib/libncursesw.so.6
    Checking if anyone except nahoskins can change /usr/lib/libiw.so.30
    Checking if anyone except nahoskins can change /usr/lib/libX11.so.6
    Checking if anyone except nahoskins can change /usr/lib/libXext.so.6
    Checking if anyone except nahoskins can change /usr/lib/libXdamage.so.1
    Checking if anyone except nahoskins can change /usr/lib/libXfixes.so.3
    Checking if anyone except nahoskins can change /usr/lib/libXft.so.2
    Checking if anyone except nahoskins can change /usr/lib/liblua.so.5.3
    Checking if anyone except nahoskins can change /usr/lib/libm.so.6
    Checking if anyone except nahoskins can change /usr/lib/libImlib2.so.1
    Checking if anyone except nahoskins can change /usr/lib/libcurl.so.4
    Checking if anyone except nahoskins can change /usr/lib/libxml2.so.2
    Checking if anyone except nahoskins can change /usr/lib/libstdc++.so.6
    Checking if anyone except nahoskins can change /usr/lib/libgcc_s.so.1
    Checking if anyone except nahoskins can change /usr/lib/libc.so.6
    Checking if anyone except nahoskins can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except nahoskins can change /usr/lib/libxcb.so.1
    Checking if anyone except nahoskins can change /usr/lib/libdl.so.2
    Checking if anyone except nahoskins can change /usr/lib/libfontconfig.so.1
    Checking if anyone except nahoskins can change /usr/lib/libfreetype.so.6
    Checking if anyone except nahoskins can change /usr/lib/libXrender.so.1
    Checking if anyone except nahoskins can change /usr/lib/libidn.so.11
    Checking if anyone except nahoskins can change /usr/lib/libssh2.so.1
    Checking if anyone except nahoskins can change /usr/lib/libssl.so.1.0.0
    Checking if anyone except nahoskins can change /usr/lib/libcrypto.so.1.0.0
    Checking if anyone except nahoskins can change /usr/lib/libgssapi_krb5.so.2
    Checking if anyone except nahoskins can change /usr/lib/libkrb5.so.3
    Checking if anyone except nahoskins can change /usr/lib/libk5crypto.so.3
    Checking if anyone except nahoskins can change /usr/lib/libcom_err.so.2
    Checking if anyone except nahoskins can change /usr/lib/libz.so.1
    Checking if anyone except nahoskins can change /usr/lib/liblzma.so.5
    Checking if anyone except nahoskins can change /usr/lib/libXau.so.6
    Checking if anyone except nahoskins can change /usr/lib/libXdmcp.so.6
    Checking if anyone except nahoskins can change /usr/lib/libexpat.so.1
    Checking if anyone except nahoskins can change /usr/lib/libbz2.so.1.0
    Checking if anyone except nahoskins can change /usr/lib/libpng16.so.16
    Checking if anyone except nahoskins can change /usr/lib/libharfbuzz.so.0
    Checking if anyone except nahoskins can change /usr/lib/libkrb5support.so.0
    Checking if anyone except nahoskins can change /usr/lib/libkeyutils.so.1
    Checking if anyone except nahoskins can change /usr/lib/libresolv.so.2
    Checking if anyone except nahoskins can change /usr/lib/libglib-2.0.so.0
    Checking if anyone except nahoskins can change /usr/lib/libgraphite2.so.3
    Checking if anyone except nahoskins can change /usr/lib/libpcre.so.1
    Checking if anyone except nahoskins can change /
    Checking if anyone except nahoskins can change /a
    Checking if anyone except nahoskins can change /AC/uevent
    Checking if anyone except nahoskins can change /ADP1/uevent
    Checking if anyone except nahoskins can change /any
    Checking if anyone except nahoskins can change /bin/sh
    Checking if anyone except nahoskins can change /brightness
    Checking if anyone except nahoskins can change /conky/lH
    Checking if anyone except nahoskins can change /dev/
    Checking if anyone except nahoskins can change /device
    Checking if anyone except nahoskins can change /dev/mixer
    Checking if anyone except nahoskins can change /dev/null
[UPC004] WARNING: /usr/bin/conky is currently running as nahoskins. /usr/bin/conky contains the string /dev/null. World write is set for /dev/null
    Checking if anyone except nahoskins can change /dev/stdin
    Checking if anyone except nahoskins can change /error/err
    Checking if anyone except nahoskins can change /etc/arch-release
    Checking if anyone except nahoskins can change /etc/mtab
    Checking if anyone except nahoskins can change /fan
    Checking if anyone except nahoskins can change /fanspeed
    Checking if anyone except nahoskins can change /Lenovo
    Checking if anyone except nahoskins can change /light
    Checking if anyone except nahoskins can change /or
    Checking if anyone except nahoskins can change /proc
    Checking if anyone except nahoskins can change /proc/acpi/ac_adapter/
    Checking if anyone except nahoskins can change /proc/acpi/fan/
    Checking if anyone except nahoskins can change /proc/acpi/ibm
    Checking if anyone except nahoskins can change /proc/apm
    Checking if anyone except nahoskins can change /proc/cpuinfo
    Checking if anyone except nahoskins can change /proc/diskstats
    Checking if anyone except nahoskins can change /proc/i8k
    Checking if anyone except nahoskins can change /proc/loadavg
    Checking if anyone except nahoskins can change /proc/meminfo
    Checking if anyone except nahoskins can change /proc/net/dev
    Checking if anyone except nahoskins can change /proc/net/if_inet6
    Checking if anyone except nahoskins can change /proc/net/route
    Checking if anyone except nahoskins can change /proc/net/tcp
    Checking if anyone except nahoskins can change /proc/net/tcp6
    Checking if anyone except nahoskins can change /proc/pmu/battery_0
    Checking if anyone except nahoskins can change /proc/pmu/info
    Checking if anyone except nahoskins can change /proc/stat
    Checking if anyone except nahoskins can change /proc/sys/kernel/random/entropy_avail
    Checking if anyone except nahoskins can change /proc/sys/kernel/random/poolsize
    Checking if anyone except nahoskins can change /proc/sys/vm/laptop_mode
    Checking if anyone except nahoskins can change /proc/uptime
    Checking if anyone except nahoskins can change /proc/version
    Checking if anyone except nahoskins can change /sand
    Checking if anyone except nahoskins can change /scaling_cur_freq
    Checking if anyone except nahoskins can change /scaling_voltages
    Checking if anyone except nahoskins can change /state
    Checking if anyone except nahoskins can change /sys/block/
    Checking if anyone except nahoskins can change /sys/bus/i2c/devices/
    Checking if anyone except nahoskins can change /sys/bus/platform/devices/
    Checking if anyone except nahoskins can change /sys/class/hwmon/
    Checking if anyone except nahoskins can change /sys/class/power_supply
    Checking if anyone except nahoskins can change /sys/devices/platform/sony-laptop
    Checking if anyone except nahoskins can change /sys/devices/system/cpu
    Checking if anyone except nahoskins can change /thermal
    Checking if anyone except nahoskins can change /usr/bin/lua
    Checking if anyone except nahoskins can change /usr/lib/conky
    Checking if anyone except nahoskins can change /usr/libH
    Checking if anyone except nahoskins can change /usr/share/locale
    Checking if anyone except nahoskins can change /volume
    Checking if anyone except nahoskins can change /weather/cc/bar/r
    Checking if anyone except nahoskins can change /weather/cc/hmid
    Checking if anyone except nahoskins can change /weather/cc/icon
    Checking if anyone except nahoskins can change /weather/cc/lsup
    Checking if anyone except nahoskins can change /weather/cc/t
    Checking if anyone except nahoskins can change /weather/cc/tmp
    Checking if anyone except nahoskins can change /weather/cc/wind/d
    Checking if anyone except nahoskins can change /weather/cc/wind/s
    Checking if anyone except nahoskins can change /proc/731/fd/0
[UPC004] WARNING: /proc/731/fd/0 is an open file descriptor for process 731 running as nahoskins. World write is set for /proc/731/fd/0
    Checking if anyone except nahoskins can change /proc/731/fd/1
    Checking if anyone except nahoskins can change /proc/731/fd/2
    Checking if anyone except nahoskins can change /proc/731/fd/3
    Checking if anyone except nahoskins can change /proc/731/fd/4
------------------------
PID:           7648
Owner:         nahoskins
Program path:  /usr/bin/xterm
    Checking if anyone except nahoskins can change /usr/bin/xterm
    Checking if anyone except nahoskins can change /usr/lib/libXft.so.2
    Checking if anyone except nahoskins can change /usr/lib/libfontconfig.so.1
    Checking if anyone except nahoskins can change /usr/lib/libXaw.so.7
    Checking if anyone except nahoskins can change /usr/lib/libXmu.so.6
    Checking if anyone except nahoskins can change /usr/lib/libXt.so.6
    Checking if anyone except nahoskins can change /usr/lib/libX11.so.6
    Checking if anyone except nahoskins can change /usr/lib/libXpm.so.4
    Checking if anyone except nahoskins can change /usr/lib/libICE.so.6
    Checking if anyone except nahoskins can change /usr/lib/libutempter.so.0
    Checking if anyone except nahoskins can change /usr/lib/libncursesw.so.6
    Checking if anyone except nahoskins can change /usr/lib/libc.so.6
    Checking if anyone except nahoskins can change /usr/lib/libfreetype.so.6
    Checking if anyone except nahoskins can change /usr/lib/libXrender.so.1
    Checking if anyone except nahoskins can change /usr/lib/libexpat.so.1
    Checking if anyone except nahoskins can change /usr/lib/libpthread.so.0
    Checking if anyone except nahoskins can change /usr/lib/libXext.so.6
    Checking if anyone except nahoskins can change /usr/lib/libSM.so.6
    Checking if anyone except nahoskins can change /usr/lib/libxcb.so.1
    Checking if anyone except nahoskins can change /usr/lib/libdl.so.2
    Checking if anyone except nahoskins can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except nahoskins can change /usr/lib/libz.so.1
    Checking if anyone except nahoskins can change /usr/lib/libbz2.so.1.0
    Checking if anyone except nahoskins can change /usr/lib/libpng16.so.16
    Checking if anyone except nahoskins can change /usr/lib/libharfbuzz.so.0
    Checking if anyone except nahoskins can change /usr/lib/libuuid.so.1
    Checking if anyone except nahoskins can change /usr/lib/libXau.so.6
    Checking if anyone except nahoskins can change /usr/lib/libXdmcp.so.6
    Checking if anyone except nahoskins can change /usr/lib/libm.so.6
    Checking if anyone except nahoskins can change /usr/lib/libglib-2.0.so.0
    Checking if anyone except nahoskins can change /usr/lib/libgraphite2.so.3
    Checking if anyone except nahoskins can change /usr/lib/libpcre.so.1
    Checking if anyone except nahoskins can change /
    Checking if anyone except nahoskins can change /00/00
    Checking if anyone except nahoskins can change /00/5f
    Checking if anyone except nahoskins can change /00/87
    Checking if anyone except nahoskins can change /00/af
    Checking if anyone except nahoskins can change /00/d7
    Checking if anyone except nahoskins can change /00/ff
    Checking if anyone except nahoskins can change /08/08
    Checking if anyone except nahoskins can change /12/12
    Checking if anyone except nahoskins can change /1c/1c
    Checking if anyone except nahoskins can change /26/26
    Checking if anyone except nahoskins can change /30/30
    Checking if anyone except nahoskins can change /3a/3a
    Checking if anyone except nahoskins can change /44/44
    Checking if anyone except nahoskins can change /4e/4e
    Checking if anyone except nahoskins can change /58/58
    Checking if anyone except nahoskins can change /5c/ff
    Checking if anyone except nahoskins can change /5f/00
    Checking if anyone except nahoskins can change /5f/5f
    Checking if anyone except nahoskins can change /5f/87
    Checking if anyone except nahoskins can change /5f/af
    Checking if anyone except nahoskins can change /5f/d7
    Checking if anyone except nahoskins can change /5f/ff
    Checking if anyone except nahoskins can change /62/62
    Checking if anyone except nahoskins can change /6c/6c
    Checking if anyone except nahoskins can change /76/76
    Checking if anyone except nahoskins can change /80/80
    Checking if anyone except nahoskins can change /87/00
    Checking if anyone except nahoskins can change /87/5f
    Checking if anyone except nahoskins can change /87/87
    Checking if anyone except nahoskins can change /87/af
    Checking if anyone except nahoskins can change /87/d7
    Checking if anyone except nahoskins can change /87/ff
    Checking if anyone except nahoskins can change /8a/8a
    Checking if anyone except nahoskins can change /94/94
    Checking if anyone except nahoskins can change /9e/9e
    Checking if anyone except nahoskins can change /a8/a8
    Checking if anyone except nahoskins can change /af/00
    Checking if anyone except nahoskins can change /af/5f
    Checking if anyone except nahoskins can change /af/87
    Checking if anyone except nahoskins can change /af/af
    Checking if anyone except nahoskins can change /af/d7
    Checking if anyone except nahoskins can change /af/ff
    Checking if anyone except nahoskins can change /allow
    Checking if anyone except nahoskins can change /b2/b2
    Checking if anyone except nahoskins can change /bc/bc
    Checking if anyone except nahoskins can change /bg
    Checking if anyone except nahoskins can change /bin/sh
    Checking if anyone except nahoskins can change /c6/c6
    Checking if anyone except nahoskins can change /d0/d0
    Checking if anyone except nahoskins can change /d7/00
    Checking if anyone except nahoskins can change /d7/5f
    Checking if anyone except nahoskins can change /d7/87
    Checking if anyone except nahoskins can change /d7/af
    Checking if anyone except nahoskins can change /d7/d7
    Checking if anyone except nahoskins can change /d7/ff
    Checking if anyone except nahoskins can change /da/da
    Checking if anyone except nahoskins can change /dev/console
    Checking if anyone except nahoskins can change /dev/pts
    Checking if anyone except nahoskins can change /dev/tty
[UPC004] WARNING: /usr/bin/xterm is currently running as nahoskins. /usr/bin/xterm contains the string /dev/tty. World write is set for /dev/tty
    Checking if anyone except nahoskins can change /E1
    Checking if anyone except nahoskins can change /e4/e4
    Checking if anyone except nahoskins can change /E9
    Checking if anyone except nahoskins can change /ee/ee
    Checking if anyone except nahoskins can change /etc/shells
    Checking if anyone except nahoskins can change /ff/00
    Checking if anyone except nahoskins can change /ff/5f
    Checking if anyone except nahoskins can change /ff/87
    Checking if anyone except nahoskins can change /ff/af
    Checking if anyone except nahoskins can change /ff/d7
    Checking if anyone except nahoskins can change /ff/ff
    Checking if anyone except nahoskins can change /gid
    Checking if anyone except nahoskins can change /L9
    Checking if anyone except nahoskins can change /O
    Checking if anyone except nahoskins can change /off
    Checking if anyone except nahoskins can change /on
    Checking if anyone except nahoskins can change /proc/self/exe
    Checking if anyone except nahoskins can change /usr/bin/luit
    Checking if anyone except nahoskins can change /usr/share/pixmaps/
    Checking if anyone except nahoskins can change /proc/7648/fd/0
[UPC004] WARNING: /proc/7648/fd/0 is an open file descriptor for process 7648 running as nahoskins. World write is set for /proc/7648/fd/0
    Checking if anyone except nahoskins can change /proc/7648/fd/1
    Checking if anyone except nahoskins can change /proc/7648/fd/2
    Checking if anyone except nahoskins can change /proc/7648/fd/3
    Checking if anyone except nahoskins can change /proc/7648/fd/4
[UPC004] WARNING: /proc/7648/fd/4 is an open file descriptor for process 7648 running as nahoskins. World write is set for /proc/7648/fd/4
------------------------
PID:           7650
Owner:         nahoskins
Program path:  /usr/bin/zsh
    Checking if anyone except nahoskins can change /usr/bin/zsh
    Checking if anyone except nahoskins can change /usr/lib/libcap.so.2
    Checking if anyone except nahoskins can change /usr/lib/libdl.so.2
    Checking if anyone except nahoskins can change /usr/lib/libncursesw.so.6
    Checking if anyone except nahoskins can change /usr/lib/libm.so.6
    Checking if anyone except nahoskins can change /usr/lib/libc.so.6
    Checking if anyone except nahoskins can change /usr/lib/libattr.so.1
    Checking if anyone except nahoskins can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except nahoskins can change /
    Checking if anyone except nahoskins can change /A
    Checking if anyone except nahoskins can change /Backends
    Checking if anyone except nahoskins can change /Base
    Checking if anyone except nahoskins can change /bin
    Checking if anyone except nahoskins can change /bin/sh
    Checking if anyone except nahoskins can change /C
    Checking if anyone except nahoskins can change /compctl
    Checking if anyone except nahoskins can change /complete
    Checking if anyone except nahoskins can change /complist
    Checking if anyone except nahoskins can change /computil
    Checking if anyone except nahoskins can change /cur
    Checking if anyone except nahoskins can change /D
    Checking if anyone except nahoskins can change /dev/
    Checking if anyone except nahoskins can change /dev/fd/
    Checking if anyone except nahoskins can change /dev/null
[UPC004] WARNING: /usr/bin/zsh is currently running as nahoskins. /usr/bin/zsh contains the string /dev/null. World write is set for /dev/null
    Checking if anyone except nahoskins can change /dev/tty
[UPC004] WARNING: /usr/bin/zsh is currently running as nahoskins. /usr/bin/zsh contains the string /dev/tty. World write is set for /dev/tty
    Checking if anyone except nahoskins can change /etc/profile
    Checking if anyone except nahoskins can change /etc/suid_profile
    Checking if anyone except nahoskins can change /etc/zsh/zlogin
    Checking if anyone except nahoskins can change /etc/zsh/zlogout
    Checking if anyone except nahoskins can change /etc/zsh/zprofile
    Checking if anyone except nahoskins can change /etc/zsh/zshenv
    Checking if anyone except nahoskins can change /etc/zsh/zshrc
    Checking if anyone except nahoskins can change /H
    Checking if anyone except nahoskins can change /H1U
    Checking if anyone except nahoskins can change /HcD
    Checking if anyone except nahoskins can change /L
    Checking if anyone except nahoskins can change /Linux
    Checking if anyone except nahoskins can change /main
    Checking if anyone except nahoskins can change /new
    Checking if anyone except nahoskins can change /newuser
    Checking if anyone except nahoskins can change /parameter
    Checking if anyone except nahoskins can change /pcre
    Checking if anyone except nahoskins can change /proc/self/fd
    Checking if anyone except nahoskins can change /r
    Checking if anyone except nahoskins can change /regex
    Checking if anyone except nahoskins can change /rlimits
    Checking if anyone except nahoskins can change /sched
    Checking if anyone except nahoskins can change /t
    Checking if anyone except nahoskins can change /t5H
    Checking if anyone except nahoskins can change /t7
    Checking if anyone except nahoskins can change /termcap
    Checking if anyone except nahoskins can change /terminfo
    Checking if anyone except nahoskins can change /tGL
    Checking if anyone except nahoskins can change /tKH
    Checking if anyone except nahoskins can change /tKUSH
    Checking if anyone except nahoskins can change /tM
    Checking if anyone except nahoskins can change /tmp
[UPC003] WARNING: /usr/bin/zsh is currently running as nahoskins. /usr/bin/zsh contains the string /tmp. World write is set for /tmp (but sticky bit set)
    Checking if anyone except nahoskins can change /tmp/zsh
[UPC003] WARNING: /usr/bin/zsh is currently running as nahoskins. /usr/bin/zsh contains the string /tmp/zsh. World write is set for /tmp (but sticky bit set)
    Checking if anyone except nahoskins can change /tqH
    Checking if anyone except nahoskins can change /tyH
    Checking if anyone except nahoskins can change /u
    Checking if anyone except nahoskins can change /uKH
    Checking if anyone except nahoskins can change /Unix
    Checking if anyone except nahoskins can change /usr/bin
    Checking if anyone except nahoskins can change /usr/local/bin
    Checking if anyone except nahoskins can change /usr/local/share/zsh/site-functions
    Checking if anyone except nahoskins can change /usr/share/zsh/functions
    Checking if anyone except nahoskins can change /usr/share/zsh/site-functions
    Checking if anyone except nahoskins can change /usr/ucb
    Checking if anyone except nahoskins can change /uzH
    Checking if anyone except nahoskins can change /value
    Checking if anyone except nahoskins can change /var/log/wtmp
    Checking if anyone except nahoskins can change /var/run/utmp
    Checking if anyone except nahoskins can change /wbH
    Checking if anyone except nahoskins can change /X
    Checking if anyone except nahoskins can change /xJH
    Checking if anyone except nahoskins can change /zle
    Checking if anyone except nahoskins can change /zleparameter
    Checking if anyone except nahoskins can change /Zsh
    Checking if anyone except nahoskins can change /zutil
    Checking if anyone except nahoskins can change /proc/7650/fd/0
    Checking if anyone except nahoskins can change /proc/7650/fd/1
    Checking if anyone except nahoskins can change /proc/7650/fd/10
    Checking if anyone except nahoskins can change /proc/7650/fd/2
------------------------
PID:           77
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           7739
Owner:         nahoskins
Program path:  /usr/bin/w3m
    Checking if anyone except nahoskins can change /usr/bin/w3m
    Checking if anyone except nahoskins can change /usr/lib/libm.so.6
    Checking if anyone except nahoskins can change /usr/lib/libgc.so.1
    Checking if anyone except nahoskins can change /usr/lib/libssl.so.1.0.0
    Checking if anyone except nahoskins can change /usr/lib/libcrypto.so.1.0.0
    Checking if anyone except nahoskins can change /usr/lib/libncursesw.so.6
    Checking if anyone except nahoskins can change /usr/lib/libc.so.6
    Checking if anyone except nahoskins can change /usr/lib/libpthread.so.0
    Checking if anyone except nahoskins can change /usr/lib/libdl.so.2
    Checking if anyone except nahoskins can change /usr/lib/libatomic_ops.so.1
    Checking if anyone except nahoskins can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except nahoskins can change /usr/lib/libz.so.1
    Checking if anyone except nahoskins can change /
    Checking if anyone except nahoskins can change /_
    Checking if anyone except nahoskins can change //
    Checking if anyone except nahoskins can change ///
    Checking if anyone except nahoskins can change /0
    Checking if anyone except nahoskins can change /0123
    Checking if anyone except nahoskins can change /2
    Checking if anyone except nahoskins can change /3
    Checking if anyone except nahoskins can change /4
    Checking if anyone except nahoskins can change /7
    Checking if anyone except nahoskins can change /71yCm4ygm
    Checking if anyone except nahoskins can change /a0a1a2a3a4a5a6a7a8a9a
    Checking if anyone except nahoskins can change /abbr
    Checking if anyone except nahoskins can change /acronym
    Checking if anyone except nahoskins can change /address
    Checking if anyone except nahoskins can change /b
    Checking if anyone except nahoskins can change /b0b1b2b5b6b8b9b
    Checking if anyone except nahoskins can change /basic
    Checking if anyone except nahoskins can change /bdo
    Checking if anyone except nahoskins can change /big
    Checking if anyone except nahoskins can change /bin/sh
    Checking if anyone except nahoskins can change /blockquote
    Checking if anyone except nahoskins can change /body
    Checking if anyone except nahoskins can change /c
    Checking if anyone except nahoskins can change /caption
    Checking if anyone except nahoskins can change /center
    Checking if anyone except nahoskins can change /cgi-bin
    Checking if anyone except nahoskins can change /cgi-bin/
    Checking if anyone except nahoskins can change /cIr
    Checking if anyone except nahoskins can change /cite
    Checking if anyone except nahoskins can change /code
    Checking if anyone except nahoskins can change /colgroup
    Checking if anyone except nahoskins can change /cqU2c
    Checking if anyone except nahoskins can change /cUcBcFcOcIc
    Checking if anyone except nahoskins can change /cXU2cJ
    Checking if anyone except nahoskins can change /d
    Checking if anyone except nahoskins can change /D
    Checking if anyone except nahoskins can change /d7a/
    Checking if anyone except nahoskins can change /d7i/
    Checking if anyone except nahoskins can change /-Dc0-Nc1-Yc3-lc6-
    Checking if anyone except nahoskins can change /deinit
    Checking if anyone except nahoskins can change /del
    Checking if anyone except nahoskins can change /dev/null
[UPC004] WARNING: /usr/bin/w3m is currently running as nahoskins. /usr/bin/w3m contains the string /dev/null. World write is set for /dev/null
    Checking if anyone except nahoskins can change /dev/tty
[UPC004] WARNING: /usr/bin/w3m is currently running as nahoskins. /usr/bin/w3m contains the string /dev/tty. World write is set for /dev/tty
    Checking if anyone except nahoskins can change /dfn
    Checking if anyone except nahoskins can change /dir
    Checking if anyone except nahoskins can change /div
    Checking if anyone except nahoskins can change /div_int
    Checking if anyone except nahoskins can change /e
    Checking if anyone except nahoskins can change /e1T
    Checking if anyone except nahoskins can change /eEE2e7
    Checking if anyone except nahoskins can change /es
    Checking if anyone except nahoskins can change /f
    Checking if anyone except nahoskins can change /f9
    Checking if anyone except nahoskins can change /fA
    Checking if anyone except nahoskins can change /fBf
    Checking if anyone except nahoskins can change /fieldset
    Checking if anyone except nahoskins can change /font
    Checking if anyone except nahoskins can change /form
    Checking if anyone except nahoskins can change /form-data
    Checking if anyone except nahoskins can change /form_int
    Checking if anyone except nahoskins can change /frameset
    Checking if anyone except nahoskins can change /fRQ1fUQ2fn
    Checking if anyone except nahoskins can change /gif
    Checking if anyone except nahoskins can change /guJ1glV4gSF5gd6
    Checking if anyone except nahoskins can change /h
    Checking if anyone except nahoskins can change /H
    Checking if anyone except nahoskins can change /h0h1h4h5h6h
    Checking if anyone except nahoskins can change /H9R2I
    Checking if anyone except nahoskins can change /Hc
    Checking if anyone except nahoskins can change /HcC
    Checking if anyone except nahoskins can change /HcE
    Checking if anyone except nahoskins can change /HcF
    Checking if anyone except nahoskins can change /HcG
    Checking if anyone except nahoskins can change /HcP
    Checking if anyone except nahoskins can change /head
    Checking if anyone except nahoskins can change /hNhDh4h
    Checking if anyone except nahoskins can change /html
    Checking if anyone except nahoskins can change /I
    Checking if anyone except nahoskins can change /i1i2i3i5i6i7i8i
    Checking if anyone except nahoskins can change /IcE
    Checking if anyone except nahoskins can change /IcF
    Checking if anyone except nahoskins can change /IcG
    Checking if anyone except nahoskins can change /img_alt
    Checking if anyone except nahoskins can change /input_alt
    Checking if anyone except nahoskins can change /ins
    Checking if anyone except nahoskins can change /internal
    Checking if anyone except nahoskins can change /j
    Checking if anyone except nahoskins can change /j2
    Checking if anyone except nahoskins can change /Je_
    Checking if anyone except nahoskins can change /jpeg
    Checking if anyone except nahoskins can change /K
    Checking if anyone except nahoskins can change /K9un
    Checking if anyone except nahoskins can change /kbd
    Checking if anyone except nahoskins can change /kJkXklkukzk
    Checking if anyone except nahoskins can change /k-k1k4kmk
    Checking if anyone except nahoskins can change /KR/CN
    Checking if anyone except nahoskins can change /L1RT
    Checking if anyone except nahoskins can change /label
    Checking if anyone except nahoskins can change /legend
    Checking if anyone except nahoskins can change /listing
    Checking if anyone except nahoskins can change //localhost/
    Checking if anyone except nahoskins can change /m0m4m6m7m8m
    Checking if anyone except nahoskins can change /m8G1m9G9m
    Checking if anyone except nahoskins can change /mA
    Checking if anyone except nahoskins can change /map
    Checking if anyone except nahoskins can change /menu
    Checking if anyone except nahoskins can change /mhm
    Checking if anyone except nahoskins can change /mxe0myef
    Checking if anyone except nahoskins can change /n
    Checking if anyone except nahoskins can change /N0N
    Checking if anyone except nahoskins can change /n8
    Checking if anyone except nahoskins can change /Nmv0Nnv1Nov2Nqv3Ntv4N
    Checking if anyone except nahoskins can change /nobr
    Checking if anyone except nahoskins can change /noframes
    Checking if anyone except nahoskins can change /noscript
    Checking if anyone except nahoskins can change /o
    Checking if anyone except nahoskins can change /-o
    Checking if anyone except nahoskins can change /O
    Checking if anyone except nahoskins can change /o6o2pto
    Checking if anyone except nahoskins can change /o6oKoto
    Checking if anyone except nahoskins can change /octet-stream
    Checking if anyone except nahoskins can change /OeRZS
    Checking if anyone except nahoskins can change /OpO
    Checking if anyone except nahoskins can change /optgroup
    Checking if anyone except nahoskins can change /option
    Checking if anyone except nahoskins can change /oQi0oM
    Checking if anyone except nahoskins can change /output
    Checking if anyone except nahoskins can change /p0p1p2p3p4p6p7p8p
    Checking if anyone except nahoskins can change /P1P
    Checking if anyone except nahoskins can change /pdf
    Checking if anyone except nahoskins can change /plain
    Checking if anyone except nahoskins can change /png
    Checking if anyone except nahoskins can change /postscript
    Checking if anyone except nahoskins can change /pPq
    Checking if anyone except nahoskins can change /pre
    Checking if anyone except nahoskins can change /pre_int
    Checking if anyone except nahoskins can change /pre_plain
    Checking if anyone except nahoskins can change /pSr0pWr1pcr2pnr4por5pxr6p
    Checking if anyone except nahoskins can change /q
    Checking if anyone except nahoskins can change /Q0Q1Q2Q3Q4Q5Q6Q7Q8Q9Q
    Checking if anyone except nahoskins can change /q0q1q8qAqEqFqGqJqKqPqRqWqZq
    Checking if anyone except nahoskins can change /q1qsq
    Checking if anyone except nahoskins can change /qVv1q
    Checking if anyone except nahoskins can change /_Q_V_W_Y_a_m_s_w_
    Checking if anyone except nahoskins can change /r2r3r4r
    Checking if anyone except nahoskins can change /r4r8r9rArBrCrErNrOrPrSrUrVrZr
    Checking if anyone except nahoskins can change /R6m
    Checking if anyone except nahoskins can change /rIJ4rJJ8rKJ9rLJArMJBrNJCrOJErPJNrQJOrRJPrSJSrTJUrUJVrVJZrWJ
    Checking if anyone except nahoskins can change /s
    Checking if anyone except nahoskins can change /s0s2s3s5s6s
    Checking if anyone except nahoskins can change /samp
    Checking if anyone except nahoskins can change /script
    Checking if anyone except nahoskins can change /sec
    Checking if anyone except nahoskins can change /select
    Checking if anyone except nahoskins can change /select_int
    Checking if anyone except nahoskins can change /small
    Checking if anyone except nahoskins can change /span
    Checking if anyone except nahoskins can change /strike
    Checking if anyone except nahoskins can change /strong
    Checking if anyone except nahoskins can change /style
    Checking if anyone except nahoskins can change /sub
    Checking if anyone except nahoskins can change /sup
    Checking if anyone except nahoskins can change /symbol
    Checking if anyone except nahoskins can change /_symbol
    Checking if anyone except nahoskins can change /t
    Checking if anyone except nahoskins can change /t0tDtFtGtKtWtbtktmt
    Checking if anyone except nahoskins can change /t1t2t7t8t9t
    Checking if anyone except nahoskins can change /tA
    Checking if anyone except nahoskins can change /table
    Checking if anyone except nahoskins can change /tbody
    Checking if anyone except nahoskins can change /textarea
    Checking if anyone except nahoskins can change /textarea_int
    Checking if anyone except nahoskins can change /tfoot
    Checking if anyone except nahoskins can change /thead
    Checking if anyone except nahoskins can change /title
    Checking if anyone except nahoskins can change /tmp
[UPC003] WARNING: /usr/bin/w3m is currently running as nahoskins. /usr/bin/w3m contains the string /tmp. World write is set for /tmp (but sticky bit set)
    Checking if anyone except nahoskins can change /tOH9
    Checking if anyone except nahoskins can change /TPWA
    Checking if anyone except nahoskins can change /TQY
    Checking if anyone except nahoskins can change /txI
    Checking if anyone except nahoskins can change /type
    Checking if anyone except nahoskins can change /u
    Checking if anyone except nahoskins can change /U
    Checking if anyone except nahoskins can change /u3I
    Checking if anyone except nahoskins can change /uIxouJxyuKx
    Checking if anyone except nahoskins can change /uoulu
    Checking if anyone except nahoskins can change /uouyu
    Checking if anyone except nahoskins can change /UQO
    Checking if anyone except nahoskins can change /USH
    Checking if anyone except nahoskins can change /usr/bin/mail
    Checking if anyone except nahoskins can change /usr/bin/mozilla
    Checking if anyone except nahoskins can change /usr/bin/vi
    Checking if anyone except nahoskins can change /usr/etc
    Checking if anyone except nahoskins can change /usr/etc/w3m
    Checking if anyone except nahoskins can change /usr/lib/w3m
    Checking if anyone except nahoskins can change /usr/lib/w3m/cgi-bin
    Checking if anyone except nahoskins can change /usr/share/locale
    Checking if anyone except nahoskins can change /usr/share/w3m
    Checking if anyone except nahoskins can change /V0V
    Checking if anyone except nahoskins can change /V0V3V5V7V8V
    Checking if anyone except nahoskins can change /v1v2v6v7v9v
    Checking if anyone except nahoskins can change /var
    Checking if anyone except nahoskins can change /vkj0vsj1v
    Checking if anyone except nahoskins can change /VlVjV
    Checking if anyone except nahoskins can change /VQX
    Checking if anyone except nahoskins can change /w
    Checking if anyone except nahoskins can change /W
    Checking if anyone except nahoskins can change /WfG0WbG3WaG4W
    Checking if anyone except nahoskins can change /X
    Checking if anyone except nahoskins can change /X1X2X3X4X6X7X8X9X
    Checking if anyone except nahoskins can change /xA
    Checking if anyone except nahoskins can change /xbm
    Checking if anyone except nahoskins can change /x-bzip
    Checking if anyone except nahoskins can change /x-compress
    Checking if anyone except nahoskins can change /x-deflate
    Checking if anyone except nahoskins can change /xE
    Checking if anyone except nahoskins can change /Xe
    Checking if anyone except nahoskins can change /x-gzip
    Checking if anyone except nahoskins can change /x-lha
    Checking if anyone except nahoskins can change /xmp
    Checking if anyone except nahoskins can change /x-tar
    Checking if anyone except nahoskins can change /x-www-form-urlencoded
    Checking if anyone except nahoskins can change /X-Y
    Checking if anyone except nahoskins can change /x-zip
    Checking if anyone except nahoskins can change /Ymg
    Checking if anyone except nahoskins can change /YR
    Checking if anyone except nahoskins can change /Z
    Checking if anyone except nahoskins can change /z0z1z2z4z5z6z8z
    Checking if anyone except nahoskins can change /Z0Z3Z5Z7Z8Z9Z
    Checking if anyone except nahoskins can change /z0z4z5z8z9z
    Checking if anyone except nahoskins can change /Z6_0
    Checking if anyone except nahoskins can change /z8Q0z9Q4z
    Checking if anyone except nahoskins can change /zN
    Checking if anyone except nahoskins can change /ZN_6XV_
    Checking if anyone except nahoskins can change /proc/7739/fd/0
    Checking if anyone except nahoskins can change /proc/7739/fd/1
    Checking if anyone except nahoskins can change /proc/7739/fd/2
    Checking if anyone except nahoskins can change /proc/7739/fd/3
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
    Checking if anyone except nahoskins can change /usr/lib/libdl.so.2
    Checking if anyone except nahoskins can change /usr/lib/libpthread.so.0
    Checking if anyone except nahoskins can change /usr/lib/libz.so.1
    Checking if anyone except nahoskins can change /usr/lib/libgcc_s.so.1
    Checking if anyone except nahoskins can change /usr/lib/libc.so.6
    Checking if anyone except nahoskins can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except nahoskins can change /
    Checking if anyone except nahoskins can change /0123
    Checking if anyone except nahoskins can change /1
    Checking if anyone except nahoskins can change /9t
    Checking if anyone except nahoskins can change /A
    Checking if anyone except nahoskins can change /Alaska
    Checking if anyone except nahoskins can change /Aleutian
    Checking if anyone except nahoskins can change /Algiers
    Checking if anyone except nahoskins can change /Anadyr
    Checking if anyone except nahoskins can change /Asuncion
    Checking if anyone except nahoskins can change /Athens
    Checking if anyone except nahoskins can change /Atlantic
    Checking if anyone except nahoskins can change /Auckland
    Checking if anyone except nahoskins can change /Azores
    Checking if anyone except nahoskins can change /Baghdad
    Checking if anyone except nahoskins can change /Baku
    Checking if anyone except nahoskins can change /C
    Checking if anyone except nahoskins can change /Casablanca
    Checking if anyone except nahoskins can change /Central
    Checking if anyone except nahoskins can change /Chatham
    Checking if anyone except nahoskins can change /Choibalsan
    Checking if anyone except nahoskins can change /Continental
    Checking if anyone except nahoskins can change /Cuiaba
    Checking if anyone except nahoskins can change /D9D
    Checking if anyone except nahoskins can change /desktop/gnome/interface/accessibility
    Checking if anyone except nahoskins can change /dev/null
[UPC004] WARNING: /usr/lib/vmware/bin/appLoader is currently running as nahoskins. /usr/lib/vmware/bin/appLoader contains the string /dev/null. World write is set for /dev/null
    Checking if anyone except nahoskins can change /dev/urandom
[UPC004] WARNING: /usr/lib/vmware/bin/appLoader is currently running as nahoskins. /usr/lib/vmware/bin/appLoader contains the string /dev/urandom. World write is set for /dev/urandom
    Checking if anyone except nahoskins can change /Dublin
    Checking if anyone except nahoskins can change /East
    Checking if anyone except nahoskins can change /EasterIsland
    Checking if anyone except nahoskins can change /Eastern
    Checking if anyone except nahoskins can change /El_Aaiun
    Checking if anyone except nahoskins can change /etc/annvix-release
    Checking if anyone except nahoskins can change /etc/arch-release
    Checking if anyone except nahoskins can change /etc/arklinux-release
    Checking if anyone except nahoskins can change /etc/aurox-release
    Checking if anyone except nahoskins can change /etc/blackcat-release
    Checking if anyone except nahoskins can change /etc/cobalt-release
    Checking if anyone except nahoskins can change /etc/conectiva-release
    Checking if anyone except nahoskins can change /etc/debian_release
    Checking if anyone except nahoskins can change /etc/debian_version
    Checking if anyone except nahoskins can change /etc/e-smith-release
    Checking if anyone except nahoskins can change /etc/fedora-release
    Checking if anyone except nahoskins can change /etc/gentoo-release
    Checking if anyone except nahoskins can change /etc/immunix-release
    Checking if anyone except nahoskins can change /etc/knoppix_version
    Checking if anyone except nahoskins can change /etc/lfs-release
    Checking if anyone except nahoskins can change /etc/linuxppc-release
    Checking if anyone except nahoskins can change /etc/localtime
    Checking if anyone except nahoskins can change /etc/lsb-release
    Checking if anyone except nahoskins can change /etc/mandrakelinux-release
    Checking if anyone except nahoskins can change /etc/mandrake-release
    Checking if anyone except nahoskins can change /etc/mandriva-release
    Checking if anyone except nahoskins can change /etc/mklinux-release
    Checking if anyone except nahoskins can change /etc/mtab
    Checking if anyone except nahoskins can change /etc/nld-release
    Checking if anyone except nahoskins can change /etc/novell-release
    Checking if anyone except nahoskins can change /etc/oracle-release
    Checking if anyone except nahoskins can change /etc/pld-release
    Checking if anyone except nahoskins can change /etc/redhat-release
    Checking if anyone except nahoskins can change /etc/redhat_version
    Checking if anyone except nahoskins can change /etc/release
    Checking if anyone except nahoskins can change /etc/slackware-release
    Checking if anyone except nahoskins can change /etc/slackware-version
    Checking if anyone except nahoskins can change /etc/sles-release
    Checking if anyone except nahoskins can change /etc/sun-release
    Checking if anyone except nahoskins can change /etc/SuSE-release
    Checking if anyone except nahoskins can change /etc/tinysofa-release
    Checking if anyone except nahoskins can change /etc/turbolinux-release
    Checking if anyone except nahoskins can change /etc/ultrapenguin-release
    Checking if anyone except nahoskins can change /etc/UnitedLinux-release
    Checking if anyone except nahoskins can change /etc/va-release
    Checking if anyone except nahoskins can change /etc/vmware
    Checking if anyone except nahoskins can change /etc/vmware/config
    Checking if anyone except nahoskins can change /etc/yellowdog-release
    Checking if anyone except nahoskins can change /Eucla
    Checking if anyone except nahoskins can change /fonts
    Checking if anyone except nahoskins can change /Godthab
    Checking if anyone except nahoskins can change /Guatemala
    Checking if anyone except nahoskins can change /H
    Checking if anyone except nahoskins can change /H9
    Checking if anyone except nahoskins can change /Havana
    Checking if anyone except nahoskins can change /Hovd
    Checking if anyone except nahoskins can change /icu
    Checking if anyone except nahoskins can change /Irkutsk
    Checking if anyone except nahoskins can change /Jerusalem
    Checking if anyone except nahoskins can change /Kamchatka
    Checking if anyone except nahoskins can change /Krasnoyarsk
    Checking if anyone except nahoskins can change /L
    Checking if anyone except nahoskins can change /L9
    Checking if anyone except nahoskins can change /lib/gio/modules
    Checking if anyone except nahoskins can change /London
    Checking if anyone except nahoskins can change /Lord_Howe
    Checking if anyone except nahoskins can change /Magadan
    Checking if anyone except nahoskins can change /messages
    Checking if anyone except nahoskins can change /Miquelon
    Checking if anyone except nahoskins can change /Montevideo
    Checking if anyone except nahoskins can change /Moscow
    Checking if anyone except nahoskins can change /Mountain
    Checking if anyone except nahoskins can change /Novosibirsk
    Checking if anyone except nahoskins can change /Omsk
    Checking if anyone except nahoskins can change /Pacific
    Checking if anyone except nahoskins can change /pango/pangorc
    Checking if anyone except nahoskins can change /Pitcairn
    Checking if anyone except nahoskins can change /proc/cpuinfo
    Checking if anyone except nahoskins can change /proc/meminfo
    Checking if anyone except nahoskins can change /proc/self/exe
    Checking if anyone except nahoskins can change /proc/self/statm
    Checking if anyone except nahoskins can change /proc/sys/kernel/core_pattern
    Checking if anyone except nahoskins can change /proc/sys/kernel/core_uses_pid
    Checking if anyone except nahoskins can change /proc/uptime
    Checking if anyone except nahoskins can change /Sakhalin
    Checking if anyone except nahoskins can change /Samara
    Checking if anyone except nahoskins can change /Saskatchewan
    Checking if anyone except nahoskins can change /Scoresbysund
    Checking if anyone except nahoskins can change /South
    Checking if anyone except nahoskins can change /Stanley
    Checking if anyone except nahoskins can change /St_Johns
    Checking if anyone except nahoskins can change /Sydney
    Checking if anyone except nahoskins can change /tmp
[UPC003] WARNING: /usr/lib/vmware/bin/appLoader is currently running as nahoskins. /usr/lib/vmware/bin/appLoader contains the string /tmp. World write is set for /tmp (but sticky bit set)
    Checking if anyone except nahoskins can change //TRANSLIT
    Checking if anyone except nahoskins can change /Tripoli
    Checking if anyone except nahoskins can change /u
    Checking if anyone except nahoskins can change /Ulaanbaatar
    Checking if anyone except nahoskins can change /uSH
    Checking if anyone except nahoskins can change /usr/bin/lsb_release
    Checking if anyone except nahoskins can change /usr/lib32
    Checking if anyone except nahoskins can change /usr/lib/vmware
    Checking if anyone except nahoskins can change /usr/share/zoneinfo/
    Checking if anyone except nahoskins can change /var/lock
    Checking if anyone except nahoskins can change /var/log/vmware
    Checking if anyone except nahoskins can change /Vladivostok
    Checking if anyone except nahoskins can change /Volgograd
    Checking if anyone except nahoskins can change /W
    Checking if anyone except nahoskins can change /West
    Checking if anyone except nahoskins can change /wHH
    Checking if anyone except nahoskins can change /Windhoek
    Checking if anyone except nahoskins can change /Yakutsk
    Checking if anyone except nahoskins can change /Yekaterinburg
    Checking if anyone except nahoskins can change /Yerevan
    Checking if anyone except nahoskins can change /proc/809/fd/0
[UPC004] WARNING: /proc/809/fd/0 is an open file descriptor for process 809 running as nahoskins. World write is set for /proc/809/fd/0
    Checking if anyone except nahoskins can change /proc/809/fd/1
    Checking if anyone except nahoskins can change /proc/809/fd/10
    Checking if anyone except nahoskins can change /proc/809/fd/11
    Checking if anyone except nahoskins can change /proc/809/fd/12
    Checking if anyone except nahoskins can change /proc/809/fd/13
    Checking if anyone except nahoskins can change /proc/809/fd/14
    Checking if anyone except nahoskins can change /proc/809/fd/15
    Checking if anyone except nahoskins can change /proc/809/fd/16
    Checking if anyone except nahoskins can change /proc/809/fd/17
    Checking if anyone except nahoskins can change /proc/809/fd/18
    Checking if anyone except nahoskins can change /proc/809/fd/19
    Checking if anyone except nahoskins can change /proc/809/fd/2
    Checking if anyone except nahoskins can change /proc/809/fd/20
    Checking if anyone except nahoskins can change /proc/809/fd/21
    Checking if anyone except nahoskins can change /proc/809/fd/22
    Checking if anyone except nahoskins can change /proc/809/fd/23
    Checking if anyone except nahoskins can change /proc/809/fd/24
    Checking if anyone except nahoskins can change /proc/809/fd/25
    Checking if anyone except nahoskins can change /proc/809/fd/26
    Checking if anyone except nahoskins can change /proc/809/fd/27
    Checking if anyone except nahoskins can change /proc/809/fd/28
    Checking if anyone except nahoskins can change /proc/809/fd/3
    Checking if anyone except nahoskins can change /proc/809/fd/30
    Checking if anyone except nahoskins can change /proc/809/fd/31
    Checking if anyone except nahoskins can change /proc/809/fd/32
    Checking if anyone except nahoskins can change /proc/809/fd/34
    Checking if anyone except nahoskins can change /proc/809/fd/4
    Checking if anyone except nahoskins can change /proc/809/fd/5
    Checking if anyone except nahoskins can change /proc/809/fd/6
    Checking if anyone except nahoskins can change /proc/809/fd/7
    Checking if anyone except nahoskins can change /proc/809/fd/8
    Checking if anyone except nahoskins can change /proc/809/fd/9
------------------------
PID:           82
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           852
Owner:         nahoskins
Program path:  /usr/lib/GConf/gconfd-2
    Checking if anyone except nahoskins can change /usr/lib/GConf/gconfd-2
    Checking if anyone except nahoskins can change /usr/lib/libgconf-2.so.4
    Checking if anyone except nahoskins can change /usr/lib/libdbus-glib-1.so.2
    Checking if anyone except nahoskins can change /usr/lib/libdbus-1.so.3
    Checking if anyone except nahoskins can change /usr/lib/libglib-2.0.so.0
    Checking if anyone except nahoskins can change /usr/lib/libpthread.so.0
    Checking if anyone except nahoskins can change /usr/lib/libc.so.6
    Checking if anyone except nahoskins can change /usr/lib/libgio-2.0.so.0
    Checking if anyone except nahoskins can change /usr/lib/libgthread-2.0.so.0
    Checking if anyone except nahoskins can change /usr/lib/libgmodule-2.0.so.0
    Checking if anyone except nahoskins can change /usr/lib/libgobject-2.0.so.0
    Checking if anyone except nahoskins can change /usr/lib/libsystemd.so.0
    Checking if anyone except nahoskins can change /usr/lib/libpcre.so.1
    Checking if anyone except nahoskins can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except nahoskins can change /usr/lib/libffi.so.6
    Checking if anyone except nahoskins can change /usr/lib/libdl.so.2
    Checking if anyone except nahoskins can change /usr/lib/libz.so.1
    Checking if anyone except nahoskins can change /usr/lib/libresolv.so.2
    Checking if anyone except nahoskins can change /usr/lib/librt.so.1
    Checking if anyone except nahoskins can change /usr/lib/libm.so.6
    Checking if anyone except nahoskins can change /usr/lib/liblzma.so.5
    Checking if anyone except nahoskins can change /usr/lib/liblz4.so.1
    Checking if anyone except nahoskins can change /usr/lib/libgcrypt.so.20
    Checking if anyone except nahoskins can change /usr/lib/libgpg-error.so.0
    Checking if anyone except nahoskins can change /usr/lib/libcap.so.2
    Checking if anyone except nahoskins can change /usr/lib/libattr.so.1
    Checking if anyone except nahoskins can change /dev/null
[UPC004] WARNING: /usr/lib/GConf/gconfd-2 is currently running as nahoskins. /usr/lib/GConf/gconfd-2 contains the string /dev/null. World write is set for /dev/null
    Checking if anyone except nahoskins can change /etc/gconf/2
    Checking if anyone except nahoskins can change /gconf
    Checking if anyone except nahoskins can change /org/gnome/GConf/Client
    Checking if anyone except nahoskins can change /org/gnome/GConf/Database
    Checking if anyone except nahoskins can change /org/gnome/GConf/Server
    Checking if anyone except nahoskins can change /path
    Checking if anyone except nahoskins can change /proc/852/fd/0
[UPC004] WARNING: /proc/852/fd/0 is an open file descriptor for process 852 running as nahoskins. World write is set for /proc/852/fd/0
    Checking if anyone except nahoskins can change /proc/852/fd/1
[UPC004] WARNING: /proc/852/fd/1 is an open file descriptor for process 852 running as nahoskins. World write is set for /proc/852/fd/1
    Checking if anyone except nahoskins can change /proc/852/fd/2
[UPC004] WARNING: /proc/852/fd/2 is an open file descriptor for process 852 running as nahoskins. World write is set for /proc/852/fd/2
    Checking if anyone except nahoskins can change /proc/852/fd/3
[UPC004] WARNING: /proc/852/fd/3 is an open file descriptor for process 852 running as nahoskins. World write is set for /proc/852/fd/3
    Checking if anyone except nahoskins can change /proc/852/fd/4
    Checking if anyone except nahoskins can change /proc/852/fd/5
    Checking if anyone except nahoskins can change /proc/852/fd/6
------------------------
PID:           9
ERROR: Can't find full path of running program: 
Owner:         root
------------------------
PID:           974
Owner:         nahoskins
Program path:  /usr/lib/gvfs/gvfsd
    Checking if anyone except nahoskins can change /usr/lib/gvfs/gvfsd
    Checking if anyone except nahoskins can change /usr/lib/gvfs/libgvfsdaemon.so
    Checking if anyone except nahoskins can change /usr/lib/gvfs/libgvfscommon.so
    Checking if anyone except nahoskins can change /usr/lib/libgio-2.0.so.0
    Checking if anyone except nahoskins can change /usr/lib/libgobject-2.0.so.0
    Checking if anyone except nahoskins can change /usr/lib/libglib-2.0.so.0
    Checking if anyone except nahoskins can change /usr/lib/libpthread.so.0
    Checking if anyone except nahoskins can change /usr/lib/libc.so.6
    Checking if anyone except nahoskins can change /usr/lib/libgmodule-2.0.so.0
    Checking if anyone except nahoskins can change /usr/lib/libsecret-1.so.0
    Checking if anyone except nahoskins can change /usr/lib/libgcr-base-3.so.1
    Checking if anyone except nahoskins can change /usr/lib/libgck-1.so.0
    Checking if anyone except nahoskins can change /usr/lib/libp11-kit.so.0
    Checking if anyone except nahoskins can change /usr/lib/libutil.so.1
    Checking if anyone except nahoskins can change /usr/lib/libffi.so.6
    Checking if anyone except nahoskins can change /usr/lib/libdl.so.2
    Checking if anyone except nahoskins can change /usr/lib/libpcre.so.1
    Checking if anyone except nahoskins can change /usr/lib/libz.so.1
    Checking if anyone except nahoskins can change /usr/lib/libresolv.so.2
    Checking if anyone except nahoskins can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except nahoskins can change /usr/lib/libgcrypt.so.20
    Checking if anyone except nahoskins can change /usr/lib/libgpg-error.so.0
    Checking if anyone except nahoskins can change /usr/lib/libgthread-2.0.so.0
    Checking if anyone except nahoskins can change /org/gtk/vfs/mountable
    Checking if anyone except nahoskins can change /org/gtk/vfs/mounttracker
    Checking if anyone except nahoskins can change /tHH
    Checking if anyone except nahoskins can change /usr/lib/gvfs
    Checking if anyone except nahoskins can change /usr/lib/gvfs/gvfsd-fuse
    Checking if anyone except nahoskins can change /usr/share/gvfs/mounts
    Checking if anyone except nahoskins can change /usr/share/locale
    Checking if anyone except nahoskins can change /proc/974/fd/0
[UPC004] WARNING: /proc/974/fd/0 is an open file descriptor for process 974 running as nahoskins. World write is set for /proc/974/fd/0
    Checking if anyone except nahoskins can change /proc/974/fd/1
    Checking if anyone except nahoskins can change /proc/974/fd/2
    Checking if anyone except nahoskins can change /proc/974/fd/3
    Checking if anyone except nahoskins can change /proc/974/fd/4
    Checking if anyone except nahoskins can change /proc/974/fd/5
    Checking if anyone except nahoskins can change /proc/974/fd/6
    Checking if anyone except nahoskins can change /proc/974/fd/7
    Checking if anyone except nahoskins can change /proc/974/fd/8
------------------------
PID:           994
Owner:         nahoskins
Program path:  /usr/lib/gvfs/gvfsd-fuse
    Checking if anyone except nahoskins can change /usr/lib/gvfs/gvfsd-fuse
    Checking if anyone except nahoskins can change /usr/lib/gvfs/libgvfscommon.so
    Checking if anyone except nahoskins can change /usr/lib/libgio-2.0.so.0
    Checking if anyone except nahoskins can change /usr/lib/libgobject-2.0.so.0
    Checking if anyone except nahoskins can change /usr/lib/libglib-2.0.so.0
    Checking if anyone except nahoskins can change /usr/lib/libfuse.so.2
    Checking if anyone except nahoskins can change /usr/lib/libpthread.so.0
    Checking if anyone except nahoskins can change /usr/lib/libc.so.6
    Checking if anyone except nahoskins can change /usr/lib/libgmodule-2.0.so.0
    Checking if anyone except nahoskins can change /usr/lib/libutil.so.1
    Checking if anyone except nahoskins can change /usr/lib/libffi.so.6
    Checking if anyone except nahoskins can change /usr/lib/libdl.so.2
    Checking if anyone except nahoskins can change /usr/lib/libpcre.so.1
    Checking if anyone except nahoskins can change /usr/lib/libz.so.1
    Checking if anyone except nahoskins can change /usr/lib/libresolv.so.2
    Checking if anyone except nahoskins can change /lib64/ld-linux-x86-64.so.2
    Checking if anyone except nahoskins can change /org/gtk/vfs/mounttracker
    Checking if anyone except nahoskins can change /usr/lib/gvfs
    Checking if anyone except nahoskins can change /proc/994/fd/0
[UPC004] WARNING: /proc/994/fd/0 is an open file descriptor for process 994 running as nahoskins. World write is set for /proc/994/fd/0
    Checking if anyone except nahoskins can change /proc/994/fd/1
[UPC004] WARNING: /proc/994/fd/1 is an open file descriptor for process 994 running as nahoskins. World write is set for /proc/994/fd/1
    Checking if anyone except nahoskins can change /proc/994/fd/2
[UPC004] WARNING: /proc/994/fd/2 is an open file descriptor for process 994 running as nahoskins. World write is set for /proc/994/fd/2
    Checking if anyone except nahoskins can change /proc/994/fd/3
[UPC004] WARNING: /proc/994/fd/3 is an open file descriptor for process 994 running as nahoskins. World write is set for /proc/994/fd/3
    Checking if anyone except nahoskins can change /proc/994/fd/4
    Checking if anyone except nahoskins can change /proc/994/fd/5
    Checking if anyone except nahoskins can change /proc/994/fd/6
    Checking if anyone except nahoskins can change /proc/994/fd/7

############################################
Checking exploit mitigation
############################################
[UPC039] WARNING: SELinux does not enforce
------------------------
PID:           1
Program path: /sbin/init
[UPC041] WARNING: SSP not enabled
------------------------
PID:           10
ERROR: Can't find full path of running program: 
------------------------
PID:           103
ERROR: Can't find full path of running program: 
------------------------
PID:           104
ERROR: Can't find full path of running program: 
------------------------
PID:           10599
ERROR: Can't find full path of running program: 
------------------------
PID:           11
ERROR: Can't find full path of running program: 
------------------------
PID:           112
ERROR: Can't find full path of running program: 
------------------------
PID:           113
ERROR: Can't find full path of running program: 
------------------------
PID:           114
ERROR: Can't find full path of running program: 
------------------------
PID:           115
ERROR: Can't find full path of running program: 
------------------------
PID:           11623
Program path: /usr/bin/xterm
------------------------
PID:           11625
Program path: /usr/bin/zsh
------------------------
PID:           11668
Program path: /usr/bin/python3.5
[UPC041] WARNING: SSP not enabled
------------------------
PID:           11768
ERROR: Can't find full path of running program: 
------------------------
PID:           11992
Program path: /usr/bin/zsh
------------------------
PID:           12
ERROR: Can't find full path of running program: 
------------------------
PID:           122
ERROR: Can't find full path of running program: 
------------------------
PID:           123
ERROR: Can't find full path of running program: 
------------------------
PID:           124
ERROR: Can't find full path of running program: 
------------------------
PID:           13
ERROR: Can't find full path of running program: 
------------------------
PID:           13604
ERROR: Can't find full path of running program: 
------------------------
PID:           14
ERROR: Can't find full path of running program: 
------------------------
PID:           144
ERROR: Can't find full path of running program: 
------------------------
PID:           145
ERROR: Can't find full path of running program: 
------------------------
PID:           1519
Program path: /usr/lib/vmware/bin/vmware-vmx
[UPC041] WARNING: SSP not enabled
------------------------
PID:           16
ERROR: Can't find full path of running program: 
------------------------
PID:           165
Program path: /usr/lib/systemd/systemd-journald
[UPC041] WARNING: SSP not enabled
------------------------
PID:           17
ERROR: Can't find full path of running program: 
------------------------
PID:           17639
ERROR: Can't find full path of running program: 
------------------------
PID:           18
ERROR: Can't find full path of running program: 
------------------------
PID:           19
ERROR: Can't find full path of running program: 
------------------------
PID:           2
ERROR: Can't find full path of running program: 
------------------------
PID:           204
Program path: /usr/lib/systemd/systemd-udevd
[UPC041] WARNING: SSP not enabled
------------------------
PID:           21
ERROR: Can't find full path of running program: 
------------------------
PID:           22
ERROR: Can't find full path of running program: 
------------------------
PID:           23
ERROR: Can't find full path of running program: 
------------------------
PID:           24
ERROR: Can't find full path of running program: 
------------------------
PID:           250
ERROR: Can't find full path of running program: 
------------------------
PID:           25133
ERROR: Can't find full path of running program: 
------------------------
PID:           26
ERROR: Can't find full path of running program: 
------------------------
PID:           26742
Program path: /usr/bin/bash
------------------------
PID:           27
ERROR: Can't find full path of running program: 
------------------------
PID:           28
ERROR: Can't find full path of running program: 
------------------------
PID:           28135
ERROR: Can't find full path of running program: wpa_supplicant-q-B-P/run/wpa_supplicant_wireless0.pid-iwireless0-Dnl80211,wext-c/run/network/wpa_supplicant_wireless0.conf
------------------------
PID:           28282
ERROR: Can't find full path of running program: 
------------------------
PID:           28371
ERROR: Can't find full path of running program: dhcpcd-4-q-t30-Lwireless0
------------------------
PID:           29
ERROR: Can't find full path of running program: 
------------------------
PID:           29074
Program path: /usr/bin/xflux
[UPC041] WARNING: SSP not enabled
------------------------
PID:           291
ERROR: Can't find full path of running program: 
------------------------
PID:           29527
ERROR: Can't find full path of running program: 
------------------------
PID:           297
ERROR: Can't find full path of running program: 
------------------------
PID:           29700
ERROR: Can't find full path of running program: 
------------------------
PID:           3
ERROR: Can't find full path of running program: 
------------------------
PID:           30
ERROR: Can't find full path of running program: 
------------------------
PID:           30708
ERROR: Can't find full path of running program: 
------------------------
PID:           3096
ERROR: Can't find full path of running program: 
------------------------
PID:           31
ERROR: Can't find full path of running program: 
------------------------
PID:           31878
ERROR: Can't find full path of running program: 
------------------------
PID:           319
ERROR: Can't find full path of running program: 
------------------------
PID:           32
ERROR: Can't find full path of running program: 
------------------------
PID:           320
ERROR: Can't find full path of running program: 
------------------------
PID:           322
ERROR: Can't find full path of running program: 
------------------------
PID:           323
ERROR: Can't find full path of running program: 
------------------------
PID:           325
ERROR: Can't find full path of running program: 
------------------------
PID:           326
ERROR: Can't find full path of running program: 
------------------------
PID:           33
ERROR: Can't find full path of running program: 
------------------------
PID:           334
ERROR: Can't find full path of running program: 
------------------------
PID:           335
ERROR: Can't find full path of running program: 
------------------------
PID:           336
ERROR: Can't find full path of running program: 
------------------------
PID:           337
ERROR: Can't find full path of running program: 
------------------------
PID:           34
ERROR: Can't find full path of running program: 
------------------------
PID:           3400
ERROR: Can't find full path of running program: 
------------------------
PID:           35
ERROR: Can't find full path of running program: 
------------------------
PID:           358
Program path: /usr/lib/systemd/systemd-logind
[UPC041] WARNING: SSP not enabled
------------------------
PID:           36
ERROR: Can't find full path of running program: 
------------------------
PID:           361
Program path: /usr/bin/mpd
[UPC041] WARNING: SSP not enabled
------------------------
PID:           362
Program path: /usr/bin/dbus-daemon
[UPC041] WARNING: SSP not enabled
------------------------
PID:           364
Program path: /usr/bin/bitlbee
[UPC041] WARNING: SSP not enabled
------------------------
PID:           365
Program path: /usr/lib/bluetooth/bluetoothd
[UPC041] WARNING: SSP not enabled
------------------------
PID:           367
Program path: /usr/bin/pommed
[UPC041] WARNING: SSP not enabled
------------------------
PID:           37
ERROR: Can't find full path of running program: 
------------------------
PID:           371
Program path: /sbin/agetty
[UPC041] WARNING: SSP not enabled
------------------------
PID:           38
ERROR: Can't find full path of running program: 
------------------------
PID:           380
Program path: /usr/bin/vmware-usbarbitrator
[UPC041] WARNING: SSP not enabled
------------------------
PID:           3975
Program path: /usr/lib/polkit-1/polkitd
[UPC041] WARNING: SSP not enabled
------------------------
PID:           40
ERROR: Can't find full path of running program: 
------------------------
PID:           41
ERROR: Can't find full path of running program: 
------------------------
PID:           42
ERROR: Can't find full path of running program: 
------------------------
PID:           47
ERROR: Can't find full path of running program: 
------------------------
PID:           478
Program path: /usr/lib/vmware/bin/vmware-vmblock-fuse
[UPC041] WARNING: SSP not enabled
------------------------
PID:           5
ERROR: Can't find full path of running program: 
------------------------
PID:           51
ERROR: Can't find full path of running program: 
------------------------
PID:           52
ERROR: Can't find full path of running program: 
------------------------
PID:           535
Program path: /usr/bin/vmnet-bridge
[UPC041] WARNING: SSP not enabled
------------------------
PID:           543
Program path: /usr/bin/vmnet-netifup
[UPC041] WARNING: SSP not enabled
------------------------
PID:           548
Program path: /usr/bin/vmnet-dhcpd
[UPC041] WARNING: SSP not enabled
------------------------
PID:           551
Program path: /usr/bin/vmnet-natd
[UPC041] WARNING: SSP not enabled
------------------------
PID:           553
Program path: /usr/bin/vmnet-netifup
[UPC041] WARNING: SSP not enabled
------------------------
PID:           558
Program path: /usr/bin/vmnet-dhcpd
[UPC041] WARNING: SSP not enabled
------------------------
PID:           570
Program path: /usr/sbin/vmware-authdlauncher
[UPC041] WARNING: SSP not enabled
------------------------
PID:           574
ERROR: Can't find full path of running program: login -- nahoskins
------------------------
PID:           577
ERROR: Can't find full path of running program: avahi-daemon: running [nahoskins.local]
------------------------
PID:           578
ERROR: Can't find full path of running program: avahi-daemon: chroot helper
------------------------
PID:           584
Program path: /usr/lib/systemd/systemd
------------------------
PID:           586
ERROR: Can't find full path of running program: (sd-pam)
------------------------
PID:           589
Program path: /usr/bin/zsh
------------------------
PID:           617
Program path: /usr/bin/bash
------------------------
PID:           639
Program path: /usr/bin/xinit
------------------------
PID:           640
Program path: /usr/lib/xorg-server/Xorg
[UPC041] WARNING: SSP not enabled
------------------------
PID:           650
Program path: /usr/bin/awesome
------------------------
PID:           656
Program path: /usr/bin/dbus-daemon
------------------------
PID:           6759
ERROR: Can't find full path of running program: 
------------------------
PID:           7
ERROR: Can't find full path of running program: 
------------------------
PID:           70
ERROR: Can't find full path of running program: 
------------------------
PID:           7035
ERROR: Can't find full path of running program: 
------------------------
PID:           713
Program path: /usr/bin/compton
------------------------
PID:           731
Program path: /usr/bin/conky
------------------------
PID:           7648
Program path: /usr/bin/xterm
------------------------
PID:           7650
Program path: /usr/bin/zsh
------------------------
PID:           77
ERROR: Can't find full path of running program: 
------------------------
PID:           7739
Program path: /usr/bin/w3m
------------------------
PID:           78
ERROR: Can't find full path of running program: 
------------------------
PID:           8
ERROR: Can't find full path of running program: 
------------------------
PID:           80
ERROR: Can't find full path of running program: 
------------------------
PID:           809
Program path: /usr/lib/vmware/bin/appLoader
------------------------
PID:           82
ERROR: Can't find full path of running program: 
------------------------
PID:           8406
ERROR: Can't find full path of running program: 
------------------------
PID:           852
Program path: /usr/lib/GConf/gconfd-2
[UPC041] WARNING: SSP not enabled
------------------------
PID:           9
ERROR: Can't find full path of running program: 
------------------------
PID:           974
Program path: /usr/lib/gvfs/gvfsd
------------------------
PID:           994
Program path: /usr/lib/gvfs/gvfsd-fuse
Program path: /mnt/arch_root/usr/bin/ksu
-rwsr-xr-x 1 root root 52192 Feb 12  2015 /mnt/arch_root/usr/bin/ksu
Program path: /opt/google/chrome-beta/chrome-sandbox
-rwsr-xr-x 1 root root 14544 Apr  7  2015 /opt/google/chrome-beta/chrome-sandbox
Program path: /usr/bin/ksu
-rwsr-xr-x 1 root root 52176 Jul  7 02:34 /usr/bin/ksu
Program path: /usr/bin/expiry
-rwsr-xr-x 1 root root 23584 Mar 15  2015 /usr/bin/expiry
Program path: /usr/bin/weston-launch
-rwsr-xr-x 1 root root 19008 Sep 22 17:10 /usr/bin/weston-launch
Program path: /usr/bin/locate
-rwxr-sr-x 1 root locate 39520 Dec 14  2014 /usr/bin/locate
Program path: /usr/bin/vmware-mount
-rwsr-xr-x 1 root root 799704 Nov 23 21:36 /usr/bin/vmware-mount
Program path: /usr/bin/fusermount
-rwsr-xr-x 1 root root 31344 May 22  2015 /usr/bin/fusermount
Program path: /usr/bin/nvidia-modprobe
-rwsr-xr-x 1 root root 25432 Sep  3 23:25 /usr/bin/nvidia-modprobe
[UPC042] WARNING: SSP not enabled
Program path: /usr/bin/sg
-rwsr-xr-x 1 root root 36888 Mar 15  2015 /usr/bin/sg
Program path: /usr/bin/kismet_capture
-r-sr-x--- 1 root kismet 737936 Sep  6 13:53 /usr/bin/kismet_capture
[UPC042] WARNING: SSP not enabled
Program path: /usr/bin/sudo
-rwsr-xr-x 1 root root 122048 Jul 22 11:52 /usr/bin/sudo
Program path: /usr/bin/mount
-rwsr-xr-x 1 root root 40144 Oct  7 18:30 /usr/bin/mount
Program path: /usr/bin/newgrp
-rwsr-xr-x 1 root root 14808 Oct  7 18:30 /usr/bin/newgrp
Program path: /usr/bin/vmware-authd
-rwsr-xr-x 1 root root 1047904 Nov 23 21:35 /usr/bin/vmware-authd
Program path: /usr/bin/newgidmap
-rwsr-xr-x 1 root root 33904 Mar 15  2015 /usr/bin/newgidmap
Program path: /usr/bin/su
-rwsr-xr-x 1 root root 31728 Oct  7 18:30 /usr/bin/su
Program path: /usr/bin/newuidmap
-rwsr-xr-x 1 root root 33904 Mar 15  2015 /usr/bin/newuidmap
Program path: /usr/bin/write
-rwxr-sr-x 1 root tty 14928 Oct  7 18:30 /usr/bin/write
Program path: /usr/bin/gpasswd
-rwsr-xr-x 1 root root 68528 Mar 15  2015 /usr/bin/gpasswd
Program path: /usr/bin/chsh
-rwsr-xr-x 1 root root 23384 Oct  7 18:30 /usr/bin/chsh
Program path: /usr/bin/chage
-rwsr-xr-x 1 root root 55288 Mar 15  2015 /usr/bin/chage
Program path: /usr/bin/pkexec
-rwsr-xr-x 1 root root 23296 Aug 12 01:06 /usr/bin/pkexec
Program path: /usr/bin/chfn
-rwsr-xr-x 1 root root 27568 Oct  7 18:30 /usr/bin/chfn
Program path: /usr/bin/wall
-rwxr-sr-x 1 root tty 27360 Oct  7 18:30 /usr/bin/wall
Program path: /usr/bin/unix_chkpwd
-rwsr-sr-x 1 root root 31328 Jul 18 14:54 /usr/bin/unix_chkpwd
Program path: /usr/bin/passwd
-rwsr-xr-x 1 root root 47224 Mar 15  2015 /usr/bin/passwd
Program path: /usr/bin/umount
-rwsr-xr-x 1 root root 27608 Oct  7 18:30 /usr/bin/umount
Program path: /usr/bin/mount.cifs
-rwsr-sr-x 1 root root 35616 Jan 13  2015 /usr/bin/mount.cifs
Program path: /usr/lib/vmware/bin/vmware-vmx-debug
-rwsr-xr-x 1 root root 28154400 Nov 23 21:35 /usr/lib/vmware/bin/vmware-vmx-debug
Program path: /usr/lib/vmware/bin/vmware-vmx-stats
-rwsr-xr-x 1 root root 24554168 Nov 23 21:35 /usr/lib/vmware/bin/vmware-vmx-stats
Program path: /usr/lib/vmware/bin/vmware-vmx
-rwsr-xr-x 1 root root 21329896 Nov 23 21:35 /usr/lib/vmware/bin/vmware-vmx
Program path: /usr/lib/utempter/utempter
-rwxr-sr-x 1 root utmp 10192 Oct 24  2013 /usr/lib/utempter/utempter
Program path: /usr/lib/chromium/chrome-sandbox
-rwsr-xr-x 1 root root 18376 Oct 13 20:29 /usr/lib/chromium/chrome-sandbox
Program path: /usr/lib/polkit-1/polkit-agent-helper-1
-rwsr-xr-x 1 root root 14784 Aug 12 01:06 /usr/lib/polkit-1/polkit-agent-helper-1
Program path: /usr/lib/ssh/ssh-keysign
-rws--x--x 1 root root 424032 Aug 21 04:38 /usr/lib/ssh/ssh-keysign
[UPC042] WARNING: SSP not enabled
Program path: /usr/lib/dbus-1.0/dbus-daemon-launch-helper
-rwsr-x--- 1 root dbus 56768 Sep  8 14:52 /usr/lib/dbus-1.0/dbus-daemon-launch-helper
[UPC042] WARNING: SSP not enabled
Program path: /usr/lib/mail-privsep
-r-sr-xr-x 1 root root 14072 Sep  5 19:27 /usr/lib/mail-privsep
Program path: /usr/lib/xf86-video-intel-backlight-helper
-rwsr-xr-x 1 root root 6280 Oct 10 04:03 /usr/lib/xf86-video-intel-backlight-helper
Program path: /usr/lib/xorg-server/Xorg.wrap
-rwsr-xr-x 1 root root 10472 Jul 17 14:39 /usr/lib/xorg-server/Xorg.wrap
[UPC042] WARNING: SSP not enabled
Program path: /usr/bin/rlogin
/usr/bin/rlogin = cap_net_bind_service+ep
Program path: /usr/bin/rsh
/usr/bin/rsh = cap_net_bind_service+ep
Program path: /usr/bin/ping6
/usr/bin/ping6 = cap_net_raw+ep
Program path: /usr/bin/ping
/usr/bin/ping = cap_net_raw+ep
Program path: /usr/bin/rcp
/usr/bin/rcp = cap_net_bind_service+ep
Program path: /usr/bin/dumpcap
/usr/bin/dumpcap = cap_net_admin,cap_net_raw+eip
