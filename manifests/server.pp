# Class: zabbix::server
#
# This class manages Zabbix Server parameters
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class zabbix::server (
  $nodeID                  = $zabbix::server::params::nodeID,
  $listenPort              = $zabbix::server::params::listenPort,
  $sourceIP                = $zabbix::server::params::sourceIP,
  $logFile                 = $zabbix::server::params::logFile,
  $logFileSize             = $zabbix::server::params::logFileSize,
  $debugLevel              = $zabbix::server::params::debugLevel,
  $pidFile                 = $zabbix::server::params::pidFile,
  $dbHost                  = $zabbix::server::params::dbHost,
  $dbName                  = $zabbix::server::params::dbName,
  $dbSchema                = $zabbix::server::params::dbSchema,
  $dbUser                  = $zabbix::server::params::dbUser,
  $dbPassword              = $zabbix::server::params::dbPassword,
  $dbSocket                = $zabbix::server::params::dbSocket,
  $dbPort                  = $zabbix::server::params::dbPort,
  $startPollers            = $zabbix::server::params::startPollers,
  $startIPMIPollers        = $zabbix::server::params::startIPMIPollers,
  $startPollersUnreachable = $zabbix::server::params::startPollersUnreachable,
  $startTrappers           = $zabbix::server::params::startTrappers,
  $startPingers            = $zabbix::server::params::startPingers,
  $startDiscoverers        = $zabbix::server::params::startDiscoverers,
  $startHTTPPollers        = $zabbix::server::params::startHTTPPollers,
  $startTimers             = $zabbix::server::params::startTimers,
  $javaGateway             = $zabbix::server::params::javaGateway,
  $javaGatewayPort         = $zabbix::server::params::javaGatewayPort,
  $startJavaPollers        = $zabbix::server::params::startJavaPollers,
  $startVMwareCollectors   = $zabbix::server::params::startVMwareCollectors,
  $vmwareFrequency         = $zabbix::server::params::vmwareFrequency,
  $vmwareCacheSize         = $zabbix::server::params::vmwareCacheSize,
  $snmpTrapperFile         = $zabbix::server::params::snmpTrapperFile,
  $startSNMPTrapper        = $zabbix::server::params::startSNMPTrapper,
  $listenIP                = $zabbix::server::params::listenIP,
  $housekeepingFrequency   = $zabbix::server::params::housekeepingFrequency,
  $maxHousekeeperDelete    = $zabbix::server::params::maxHousekeeperDelete,
  $senderFrequency         = $zabbix::server::params::senderFrequency,
  $cacheSize               = $zabbix::server::params::cacheSize,
  $cacheUpdateFrequency    = $zabbix::server::params::cacheUpdateFrequency,
  $startDBSyncers          = $zabbix::server::params::startDBSyncers,
  $historyCacheSize        = $zabbix::server::params::historyCacheSize,
  $trendCacheSize          = $zabbix::server::params::trendCacheSize,
  $historyTextCacheSize    = $zabbix::server::params::historyTextCacheSize,
  $valueCacheSize          = $zabbix::server::params::valueCacheSize,
  $nodeNoEvents            = $zabbix::server::params::nodeNoEvents,
  $nodeNoHistory           = $zabbix::server::params::nodeNoHistory,
  $timeout                 = $zabbix::server::params::timeout,
  $trapperTimeout          = $zabbix::server::params::trapperTimeout,
  $unreachablePeriod       = $zabbix::server::params::unreachablePeriod,
  $unavailableDelay        = $zabbix::server::params::unavailableDelay,
  $unreachableDelay        = $zabbix::server::params::unreachableDelay,
  $alertScriptsPath        = $zabbix::server::params::alertScriptsPath,
  $externalScripts         = $zabbix::server::params::externalScripts,
  $fpingLocation           = $zabbix::server::params::fpingLocation,
  $fping6Location          = $zabbix::server::params::fping6Location,
  $sshKeyLocation          = $zabbix::server::params::sshKeyLocation,
  $logSlowQueries          = $zabbix::server::params::logSlowQueries,
  $tmpDir                  = $zabbix::server::params::tmpDir,
  $startProxyPollers       = $zabbix::server::params::startProxyPollers,
  $proxyConfigFrequency    = $zabbix::server::params::proxyConfigFrequency,
  $proxyDataFrequency      = $zabbix::server::params::proxyDataFrequency,
  $allowRoot               = $zabbix::server::params::allowRoot,
  $include                 = $zabbix::server::params::include,
  $loadModulePath          = $zabbix::server::params::loadModulePath,
  $loadModule              = $zabbix::server::params::loadModule,) inherits zabbix::server::params {
  include zabbix::server::install
  include zabbix::server::service
}
