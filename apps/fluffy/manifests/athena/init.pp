class fluffy::athena::init {
  $directories = ['/tmp/fluffy/athena/config','/tmp/fluffy/athena/logs','/tmp/fluffy/athena/junk']

  File {
    ensure => directory,
    owner  => fluffy,
    group  => someusers,
    mode   => '0644',
  }

  file {
    '/tmp/fluffy/athena':
      require => [File['/tmp/fluffy'], User['fluffy']];

    $directories:
      require => [File['/tmp/fluffy/athena'], User['fluffy']];

  }
}
