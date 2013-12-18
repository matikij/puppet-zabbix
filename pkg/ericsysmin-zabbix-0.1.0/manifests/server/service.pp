class zabbix::server::service {
  service { 'zabbix-server':
    ensure     => present,
    hasstatus  => true,
    hasrestart => true,
    require    => Package['zabbix-server'],
  }
}
