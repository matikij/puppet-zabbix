class zabbix::frontend::install () {
  include zabbix::repo

  package { 'zabbix-frontend-php':
    ensure  => present,
    require => Class['zabbix::repo'],
  }
}
