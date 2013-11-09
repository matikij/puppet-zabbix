class zabbix::agent::service {
  service { 'zabbix-agent':
    ensure  => 'running',
    require => Package['zabbix-agent']
  }
}
