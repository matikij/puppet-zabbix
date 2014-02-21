class zabbix::frontend::config () {
  file { '/etc/zabbix/web/zabbix.conf.php':
    require => Class['zabbix::frontend::install'],
    replace => true,
    mode => 0640,
    owner => 'root',
    group => 'www-data',
    content => template('zabbix/frontend/zabbix.conf.php.erb'),
  }
}
