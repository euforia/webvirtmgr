webvirtmgr
==========

Contains the RPM for webvirtmgr (under rpms) created by retspen.  It provides a default webvirtmgr.conf and takes care of the required pre-requisites.

Here is the overall flow of the RPM:

  * Grab the latest copy of webvirtmgr from https://github.com/retspen/webvirtmgr
  * Copies webvirtmgr.conf -- to --> /etc/httpd/conf.d
  * Copies project files to /var/www/webvirtmgr
  * Restarts apache

** Note: The epel repo may also be required.
