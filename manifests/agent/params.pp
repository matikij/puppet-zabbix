# Class: zabbix::agent::params
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
class zabbix::agent::params {
  $pidFile              = $zabbix::agent::pidFile
  $logFile              = $zabbix::agent::logFile
  $logFileSize          = $zabbix::agent::logFileSize
  $debugLevel           = $zabbix::agent::debugLevel
  $sourceIP             = $zabbix::agent::sourceIP
  $enableRemoteCommands = $zabbix::agent::enableRemoteCommands
  $logRemoteCommands    = $zabbix::agent::logRemoteCommands
  $server               = $zabbix::agent::server
  $listenPort           = $zabbix::agent::listenPort
  $listenIP             = $zabbix::agent::listenIP
  $startAgents          = $zabbix::agent::startAgents
  $serverActive         = $zabbix::agent::serverActive
  $hostname             = $zabbix::agent::hostname
  $hostnameItem         = $zabbix::agent::hostnameItem
  $refreshActiveChecks  = $zabbix::agent::refreshActiveChecks
  $bufferSend           = $zabbix::agent::bufferSend
  $bufferSize           = $zabbix::agent::bufferSize
  $maxLinesPerSecond    = $zabbix::agent::maxLinesPerSecond
  $allowRoot            = $zabbix::agent::allowRoot
  $alias                = $zabbix::agent::alias
  $timeout              = $zabbix::agent::timeout
  $include              = $zabbix::agent::include
}
