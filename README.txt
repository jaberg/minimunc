Information and Scripts for the MiniMunc cluster
================================================

Machines:
 - munctional0
 - munctional1
 - munctional2


Partitioning:
  10G usr
  500G home


Setup
-----

1. Boot from squeeze netboot iso burned to USB stick using instructions lifted from Ubuntu on OSX
2. Use guided partitioning option with different partitions for home, usr, tmp, var
3. Software:
   - un-check the desktop software option
   - check off ssh server

4. Rebooting into system from internal hd
5. Log in as root:
  $ apt-get install git
  $ git clone minimunc
  $ cd minimunc
  $ bash setup0.sh

