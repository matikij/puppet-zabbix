# Class: zabbix::repo
#
# This class installed the Zabbix Repository
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class zabbix::repo {
  apt::source { 'zabbix':
    location   => 'http://repo.zabbix.com/zabbix/2.0/ubuntu/',
    release    => 'precise',
    repos      => 'main',
    key        => '79EA5ED4',
    key_source => 'http://repo.zabbix.com/zabbix-official-repo.key',
  }
}

