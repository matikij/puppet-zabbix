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
class zabbix::server ($pidFile = '/var/run/zabbix/zabbix_agentd.pid', $logFile = '/var/log/zabbix/zabbix_server.log',) inherits 
zabbix {
  include zabbix::server::install
  include zabbix::server::service
}
