class zabbix::agent::service {
  service { 'zabbix-agent':
    ensure     => running,
    hasstatus  => true,
    hasrestart => true,
    require    => Package['zabbix-agent'],
  }
}
