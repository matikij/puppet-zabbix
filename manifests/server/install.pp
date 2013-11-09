class zabbix::server::install {
  include zabbix::repo

  package { 'zabbix-server':
    ensure  => present,
    require => Apt::Source['zabbix'],
  }
}
