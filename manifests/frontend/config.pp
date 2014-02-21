class zabbix::frontend::config () {
  file { '/etc/zabbix/web/zabbix.conf.php':
    require => Class['zabbix::frontend::install'],
    replace => true,
    content => template('zabbix/frontend/zabbix.conf.php.erb'),
  }
}
