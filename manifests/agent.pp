# Class: zabbix::agent
#
# This sets up the Zabbix Agent on systems.
#
# Parameters:
#   [*pidFile*]
#
#   [*logFile*]
#
#   [*logFileSize*]
#
#   [*debugLevel*]
#
#   [*sourceIP*]
#
#   [*enableRemoteCommands*]
#
#   [*logRemoteCommands*]
#
#   [*server*]
#
#   [*listenPort*]
#
#   [*listenIP*]
#
#   [*startAgents*]
#
#   [*serverActive*]
#
#   [*hostname*]
#
#   [*hostnameItem*]
#
#   [*hostMetadata*]
#
#   [*hostMetadataItem*]
#
#   [*refreshActiveChecks*]
#
#   [*bufferSend*]
#
#   [*bufferSize*]
#
#   [*maxLinesPerSecond*]
#
#   [*allowRoot*]
#
#   [*zabbix_alias*]
#
#   [*timeout*]
#
#   [*include*]
#
#   [*unsafeUserParameters*]
#
#   [*userParameter*]
#
#
# Actions:
#   This sets up the Zabbix Agent on systems.
#
# Requires:
#
# Sample Usage:
# 	class { 'zabbix::agent':
# 	  pidFile              => '/var/run/zabbix/zabbix_agentd.pid',
# 	  logFile              => '/var/log/zabbix/zabbix_agentd.log',
# 	  logFileSize          => undef,
# 	  debugLevel           => undef,
# 	  sourceIP             => undef,
# 	  enableRemoteCommands => '1',
# 	  logRemoteCommands    => undef,
# 	  server               => 'zabbix.example.com',
# 	  listenPort           => undef,
# 	  listenIP             => undef,
# 	  startAgents          => undef,
# 	  serverActive         => undef,
# 	  hostname             => undef,
# 	  hostnameItem         => undef,
# 	  hostMetadata         => undef,
# 	  hostMetadataItem     => undef,
# 	  refreshActiveChecks  => undef,
# 	  bufferSend           => undef,
# 	  bufferSize           => undef,
# 	  maxLinesPerSecond    => undef,
# 	  allowRoot            => undef,
# 	  zabbix_alias         => undef,
# 	  timeout              => undef,
# 	  include              => undef,
# 	  unsafeUserParameters => undef,
# 	  userParameter        => [],
# 	}
#
class zabbix::agent (
  $ensure               = $zabbix::agent::params::ensure,
  $pidFile              = $zabbix::agent::params::pidFile,
  $logFile              = $zabbix::agent::params::logFile,
  $logFileSize          = $zabbix::agent::params::logFileSize,
  $debugLevel           = $zabbix::agent::params::debugLevel,
  $sourceIP             = $zabbix::agent::params::sourceIP,
  $enableRemoteCommands = $zabbix::agent::params::enableRemoteCommands,
  $logRemoteCommands    = $zabbix::agent::params::logRemoteCommands,
  $server               = $zabbix::agent::params::server,
  $listenPort           = $zabbix::agent::params::listenPort,
  $listenIP             = $zabbix::agent::params::listenIP,
  $startAgents          = $zabbix::agent::params::startAgents,
  $serverActive         = $zabbix::agent::params::serverActive,
  $hostname             = $zabbix::agent::params::hostname,
  $hostnameItem         = $zabbix::agent::params::hostnameItem,
  $hostMetadata         = $zabbix::agent::params::hostMetadata,
  $hostMetadataItem     = $zabbix::agent::params::hostMetadataItem,
  $refreshActiveChecks  = $zabbix::agent::params::refreshActiveChecks,
  $bufferSend           = $zabbix::agent::params::bufferSend,
  $bufferSize           = $zabbix::agent::params::bufferSize,
  $maxLinesPerSecond    = $zabbix::agent::params::maxLinesPerSecond,
  $allowRoot            = $zabbix::agent::params::allowRoot,
  $zabbix_alias         = $zabbix::agent::params::zabbix_alias,
  $timeout              = $zabbix::agent::params::timeout,
  $include              = $zabbix::agent::params::include,
  $unsafeUserParameters = $zabbix::agent::params::unsafeUserParameters,
  $userParameter        = $zabbix::agent::params::userParameter,) inherits zabbix::agent::params {
  include zabbix::agent::install
  include zabbix::agent::service
  include zabbix::agent::config
}
