class zabbix::agent::config {
  file { '/etc/zabbix/zabbix_agentd.conf':
    notify  => Service['zabbix-agent'],
    require => Class['zabbix::agent::install'],
    replace => true,
    content => template('zabbix/agent/zabbix_agentd.conf.erb'),
  }
}
