class zabbix::server::install {
  include zabbix::repo

  package { "zabbix-server-${zabbix::server::dbType}":
    ensure  => present,
    require => Apt::Source['zabbix'],
  }
}
