Information and Scripts for the MiniMunc cluster
================================================

Machines:
 - munctional0
 - munctional1
 - munctional2


Partitioning:
  10G usr
  500G home


Installation
------------

1. Boot from squeeze netboot iso burned to USB stick using instructions lifted from Ubuntu on OSX

2. Use guided partitioning option with different partitions for home, usr, tmp, var.  I've noticed that after installation the var partition (3G) is soon full, but it hasn't caused a visible problem yet.

2.1. Use dhcp temporarily for the installation.

3. Software:
   - un-check the desktop software option
   - check off ssh server

4. Rebooting into system from internal hd

5. Log in as root:
  $ apt-get install git
  $ git clone http:github.com/jaberg/minimunc
  $ cd minimunc
  $ bash setup0.sh

6. Later, just run setup1.sh, which refreshes the package list and upgrades all of the base software without doing a dist-upgrade.


Networking
----------

Alan assigned ip addresses 10.161.3.5{0,1,2} for these machines. So the /etc/network/interfaces file has a stanza that looks like:

    # The primary network interface
    auto eth0
    iface eth0 inet static
	 address 10.161.3.50
	 netmask 255.224.0.0
	 gateway 10.160.0.1

The nameservers are 10.160.0.{2,3}, put those in resolv.conf. (Probably the lines are already there because of the dhcp we were using.)

