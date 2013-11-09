class zabbix::server::service {
  service { 'zabbix-server':
    ensure  => 'running',
    require => Package['zabbix-server']
  }
}
