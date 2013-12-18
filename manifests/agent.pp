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
  $alias                = $zabbix::agent::params::alias,
  $timeout              = $zabbix::agent::params::timeout,
  $include              = $zabbix::agent::params::include) inherits zabbix::agent::params {
  include zabbix
  include zabbix::agent::install
  include zabbix::agent::service
  include zabbix::agent::config
}
