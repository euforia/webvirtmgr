webvirtmgr
==========

This aims to simplify the install process of retspen's webvirtmgr by providing an RPM for the install.  It provides a default webvirtmgr.conf apache configuration file and installs pre-requisites/dependencies.

Here is the overall flow of the RPM:

  * Grab the latest copy of webvirtmgr from https://github.com/retspen/webvirtmgr
  * Copies webvirtmgr.conf -- to --> /etc/httpd/conf.d
  * Copies project files to /var/www/webvirtmgr
  * Restarts apache

** Note: The epel repo may also be required.
