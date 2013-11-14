class zabbix::server::install {
  include zabbix::repo

  case $operatingsystem {
    centos  : { include zabbix::server::install::centos }
    redhat  : { include zabbix::server::install::redhat }
    debian  : { include zabbix::server::install::debian }
    ubuntu  : { include zabbix::server::install::ubuntu }
    default : { fail("Unrecognized operating system for webserver") }
  }

  class zabbix::server::install::centos {

  }

  class zabbix::server::install::redhat {

  }

  class zabbix::server::install::debian {
    package { 'zabbix-server':
      ensure  => present,
      require => Apt::Source['zabbix'],
    }
  }

  class zabbix::server::install::ubuntu {
    package { 'zabbix-server':
      ensure  => present,
      require => Apt::Source['zabbix'],
    }
  }

}
