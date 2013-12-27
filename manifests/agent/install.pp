class zabbix::agent::install {
  include zabbix::repo

  package { 'zabbix-agent':
    ensure  => present,
    require => Apt::Source['zabbix'],
  }
}
