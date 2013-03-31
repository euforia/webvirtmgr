webvirtmgr
==========

Contains the RPM's for webvirtmgr (under rpms) created by retspen.  It also provides the default webvirtmgr.conf which the RPM puts under /etc/httpd/conf.d/.

Here is the overall flow of the RPM:

  * Grab the latest copy of webvirtmgr from https://github.com/retspen/webvirtmgr
  * Copies webvirtmgr.conf -- to --> /etc/httpd/conf.d
  * Copies project files to /var/www/webvirtmgr
  * Restarts apache
