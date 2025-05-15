class peachy::hera_purple::init {
  $directories = ['/tmp/peachy/hera_purple/config','/tmp/peachy/hera_purple/logs','/tmp/peachy/hera_purple/junk']

  File {
    ensure => directory,
    owner  => peachy,
    group  => someusers,
    mode   => '0644',
  }

  file {
    '/tmp/peachy/hera_purple':
      require => [File['/tmp/peachy'], User['peachy']];

    $directories:
      require => [File['/tmp/peachy/hera_purple'], User['peachy']];

  }
}
