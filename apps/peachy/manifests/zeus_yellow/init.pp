class peachy::zeus_yellow::init {
  $directories = ['/tmp/peachy/zeus_yellow/config','/tmp/peachy/zeus_yellow/logs','/tmp/peachy/zeus_yellow/junk']

  File {
    ensure => directory,
    owner  => peachy,
    group  => someusers,
    mode   => '0644',
  }

  file {
    '/tmp/peachy/zeus_yellow':
      require => [File['/tmp/peachy'], User['peachy']];

    $directories:
      require => [File['/tmp/peachy/zeus_yellow'], User['peachy']];

  }
}
