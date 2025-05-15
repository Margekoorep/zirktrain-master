class peachy::zeus_blue::init {
  $directories = ['/tmp/peachy/zeus_blue/config','/tmp/peachy/zeus_blue/logs','/tmp/peachy/zeus_blue/junk']

  File {
    ensure => directory,
    owner  => peachy,
    group  => someusers,
    mode   => '0644',
  }

  file {
    '/tmp/peachy/zeus_blue':
      require => [File['/tmp/peachy'], User['peachy']];

    $directories:
      require => [File['/tmp/peachy/zeus_blue'], User['peachy']];

  }
}
