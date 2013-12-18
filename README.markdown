puppet-zabbix
=============

Build Status information
------------------------
[![Build Status](https://travis-ci.org/ericsysmin/puppet-zabbix.png)](https://travis-ci.org/ericsysmin/puppet-zabbix)

Description
-----------
This module is to permit the ability to manage Zabbix Agent and Zabbix Server implementations. Currently this module is under construction and has been tested on Ubuntu only. zabbix::agent is the only class currently functional as I am still building the support of zabbix::server.

How to use:
-----------
```ruby
  class { 'zabbix::agent':
    pidFile			     => '/var/run/zabbix/zabbix_agentd.pid', #optional
    logFile              => '/var/log/zabbix/zabbix_agentd.log', #optional
    logFileSize          => '', #optional
    debugLevel           => '', #optional
    sourceIP             => '', #optional
    enableRemoteCommands => '1', #optional
    logRemoteCommands    => '', #optional
    server               => 'zabbix.example.com', #mandatory
    serverActive         => 'zabbix.example.com', #optional
    hostMetadata         => 'tat', #optional
    allowRoot            => '1', #optional
  }
```