class peachy::athena_red::init {
  $directories = ['/tmp/peachy/athena_red/config','/tmp/peachy/athena_red/logs','/tmp/peachy/athena_red/junk']

  File {
    ensure => directory,
    owner  => peachy,
    group  => someusers,
    mode   => '0644',
  }

  file {
    '/tmp/peachy/athena_red':
      require => [File['/tmp/peachy'], User['peachy']];

    $directories:
      require => [File['/tmp/peachy/athena_red'], User['peachy']];

  }
}
