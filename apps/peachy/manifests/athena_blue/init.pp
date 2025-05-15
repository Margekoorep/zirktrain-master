class peachy::athena_blue::init {
  $directories = ['/tmp/peachy/athena_blue/config','/tmp/peachy/athena_blue/logs','/tmp/peachy/athena_blue/junk']

  File {
    ensure => directory,
    owner  => peachy,
    group  => someusers,
    mode   => '0644',
  }

  file {
    '/tmp/peachy/athena_blue':
      require => [File['/tmp/peachy'], User['peachy']];

    $directories:
      require => [File['/tmp/peachy/athena_blue'], User['peachy']];

  }
}
