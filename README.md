webvirtmgr
==========

This aims to simplify the install process of retspen's webvirtmgr by providing a RPM for the web interface as well as a RPM to configure the hypervisor.  


webvirtmgr-1.6-1.el6.x86_64.rpm
 
 * Description
   * Installs pre-requisites (if necessary): httpd git Django python-virtinst httpd mod_python mod_wsgi python-websockify python-setuptools
   * Installs webvirtmgr under /var/www/ with appropriate permissions and ownership.
   * Provides a default webvirtmgr.conf with the webroot set to /var/www/webvirtmgr and installs it under /etc/httpd/conf.d
 
 * Installation
   * $ yum localinstall /path/to/webvirtmgr/rpms/webvirtmgr-1.6-1.el6.x86_64.rpm


webvirtmgr-hyp-1.6-1.el6.x86_64.rpm

 * Description
   * Installs pre-requisites (if necessary): kvm libvirt
   * Configures /etc/sysconfig/libvirtd
   * Configures /etc/libvirt/qemu.conf
   * Configures /etc/libvirt/libvirtd.conf

 * Installation
   * $ yum localinstall /path/to/webvirtmgr/rpms/webvirtmgr-hyp-1.6-1.el6.x86_64.rpm


** Note: The epel repo may also be required.
