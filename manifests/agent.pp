# Class: zabbix::agent
#
# This class manages Zabbix Agent parameters
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class zabbix::agent (
  $pidFile              = '/var/run/zabbix/zabbix_agentd.pid',
  $logFile              = '/var/log/zabbix/zabbix_agentd.log',
  $logFileSize          = undef,
  $debugLevel           = undef,
  $sourceIP             = undef,
  $enableRemoteCommands = undef,
  $logRemoteCommands    = undef,
  $server               = '127.0.0.1',
  $listenPort           = undef,
  $listenIP             = undef,
  $startAgents          = undef,
  $serverActive         = '127.0.0.1',
  $hostname             = undef
  $hostnameItem         = undef,
  $hostMetadata         = undef,
  $hostMetadataItem     = undef,
  $refreshActiveChecks  = undef,
  $bufferSend           = undef,
  $bufferSize           = undef,
  $maxLinesPerSecond    = undef,
  $allowRoot            = undef,
  $alias                = undef,
  $timeout              = undef,
  $include              = undef,) {
  include zabbix
  include zabbix::agent::install
  include zabbix::agent::service

  file { '/etc/zabbix/zabbix_agentd.conf':
    notify  => Service['zabbix-agent'],
    require => Package['zabbix-agent'],
    replace => true,
    content => template('zabbix/agent/zabbix_agentd.conf.erb'),
  }
}
