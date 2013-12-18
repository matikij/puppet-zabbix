puppet-zabbix
=============

Build Status Information
------------------------
[![Build Status](https://travis-ci.org/ericsysmin/puppet-zabbix.png)](https://travis-ci.org/ericsysmin/puppet-zabbix)

Description
-----------
This module is to permit the ability to manage Zabbix Agent and Zabbix Server implementations. Currently this module is under construction and has been tested on Ubuntu only. zabbix::agent is the only class currently functional as I am still building the support of zabbix::server.

How to use:
-----------


```ruby
  class { 'zabbix::agent':
    pidFile			     => '/var/run/zabbix/zabbix_agentd.pid',	#optional
    logFile              => '/var/log/zabbix/zabbix_agentd.log',	#optional
    logFileSize          => '', 									#optional
    debugLevel           => '',										#optional
    sourceIP             => '',										#optional
    enableRemoteCommands => '1',									#optional
    logRemoteCommands    => '',										#optional
    server               => 'zabbix.example.com',					#MANDATORY
    listenPort		     => '',										#optional
	listenIP			 => '',										#optional
	startAgents		     => '',										#optional
	serverActive		 => '',										#optional
	hostname			 => '',										#optional
	hostnameItem         => '',										#optional
	hostMetadata	     => '',										#optional
	hostMetadataItem	 => '',										#optional
	refreshActiveChecks	 => '',										#optional
	bufferSend	         => '',										#optional
	bufferSize	         => '',										#optional
	maxLinesPerSecond	 => '',										#optional
	allowRoot            => '',										#optional
	alias                => '',										#optional
	timeout              => '',										#optional
	include              => '',										#optional
    serverActive         => 'zabbix.example.com',					#optional
    hostMetadata         => 'metadata',								#optional
    allowRoot            => '1',									#optional
  }
```