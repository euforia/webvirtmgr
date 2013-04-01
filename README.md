webvirtmgr
==========

This aims to simplify the install process of retspen's webvirtmgr by providing a RPM for the web interface as well as a RPM to configure the hypervisor along with a script to add SASL users to the hypervisor.  It also provides some enhancements to auto-configure hypervisors.

These RPM's should work under CentOS, RHEL, Fedora, Oracle Linux 6.

## webvirtmgr-1.6-1.el6.x86_64.rpm
 
### Description:
   * Installs pre-requisites: httpd git Django python-virtinst httpd mod_python mod_wsgi python-websockify python-setuptools
   * Installs webvirtmgr under /var/www/.
   * Install hypervisor configuration rpm so it can be downloaded directly from the manager.
   * Provides a default webvirtmgr.conf (VirtualHost) with the webroot set to /var/www/webvirtmgr and installs it under /etc/httpd/conf.d
   * Creates a default admin account.  The credentials can be found in the 'configs/DEFAULTS' file.
     * To change the default admin password you can issue the following commands:
        * $ cd /var/www/webvirtmgr && ./manage.py changepassword admin
  
### Installation:
   * $ yum localinstall /path/to/webvirtmgr/rpms/webvirtmgr-1.6-1.el6.x86_64.rpm


## webvirtmgr-hyp-1.6-1.el6.x86_64.rpm

### Description:
This package is to be deployed on the hypervisor.  It's only job is to change the configuration files below to be as non-invasive as possible.  This is also the RPM that gets install if auto configuration is selected.
More on auto configuration below.

   * Installs pre-requisites: kvm libvirt
   * Configures /etc/sysconfig/libvirtd
   * Configures /etc/libvirt/qemu.conf
   * Configures /etc/libvirt/libvirtd.conf
   * Creates a default 'webvirtmgr' libvirt SASL user. The credentials can be found in the 'configs/DEFAULTS' file. 

### Installation:
   * $ yum localinstall /path/to/webvirtmgr/rpms/webvirtmgr-hyp-1.6-1.el6.x86_64.rpm


** Notes: 
 * Currently the hypervisor RPM does not create SASL credentials.  'add_sasl_user.sh' is a temporary resolution.
 * The epel repo may also be required.
