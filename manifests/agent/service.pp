class zabbix::agent::service {
  service { 'zabbix-agent':
    ensure     => present,
    hasstatus  => true,
    hasrestart => true,
    require    => Package['zabbix-agent'],
  }
}
