class fluffy::zeus::init {
  $directories = ['/tmp/fluffy/zeus/config','/tmp/fluffy/zeus/logs','/tmp/fluffy/zeus/junk']

  File {
    ensure => directory,
    owner  => fluffy,
    group  => someusers,
    mode   => '0644',
  }

  file {
    '/tmp/fluffy/zeus':
      require => [File['/tmp/fluffy'], User['fluffy']];

    $directories:
      require => [File['/tmp/fluffy/zeus'], User['fluffy']];

  }
}
