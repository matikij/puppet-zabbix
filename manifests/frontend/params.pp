# Class: zabbix::frontend::params
#
# This class manages the parameters for the Zabbix frontend.
#
# Parameters:
#   [*dbType*]
#
#   [*dbServer*]
#
#   [*dbPort*]
#
#   [*dbDatabase*]
#
#   [*dbUser*]
#
#   [*dbPassword*]
#
#   [*dbSchema*]
#
#   [*zbxServer*]
#
#   [*zbxServerPort*]
#
#   [*zbxServerName*]
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class zabbix::frontend::params (
  $dbType        = 'MYSQL',
  $dbServer      = 'localhost',
  $dbPort        = '3306',
  $dbDatabase    = 'zabbix',
  $dbUser        = 'zabbix',
  $dbPassword    = '',
  $dbSchema      = undef,
  $zbxServer     = 'localhost',
  $zbxServerPort = '10051',
  $zbxServerName = '') {
}
