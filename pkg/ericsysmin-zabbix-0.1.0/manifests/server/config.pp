class zabbix::server::config {
  file { '/etc/zabbix/zabbix_server.conf':
    notify  => Service['zabbix-server'],
    require => Class['zabbix::server::install'],
    replace => true,
    content => template('zabbix/agent/zabbix_server.conf.erb'),
  }
}
