class fluffy::props {

  $app_name = 'fluffy'
  $app_user = 'fluffy'
  $app_desc = 'fluffy fluffy fluffy'
  $app_config = '$HOMY/config/fluffyconfig.toml'

  if $env == 'qa' {
    $fluffy_primes = '2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97,101,103,107,109,113,127,131,137,139,149,151,157,163,167,173,179,181,191,193,197,199'
    $fluffy_triangulars = '0,1,3,6,10,15,21,28,36,45,55,66,78,91,105,120,136,153,171,190,210,231,253,276,300,325,351,378,406,435,465,496,528,561,595,630'
    $fluffy_fibo = '0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987'
    $fluffy_squeezy_sheet_enabled = false
    $fluffy_main_host = "${env}.zirktrain.ee"
    $fluffy_blubby_api = "https://${fluffy_main_host}:11111/blubby/api"
    $fluffy_fluffiness_processing = true
    $fluffy_blubby_blub1_roundness  = 'perfect'
    $fluffy_blubby_blub2_roundness  = 'ovale'
    $fluffy_akfak_enabled = true
    $fluffy_failure_accepted = true
    $jarfile = '$HOMY/fluffy.jar'
    $jdk = '/var/lib/jdk11'
  }

  elsif $env == 'stage' {
    $fluffy_primes = '2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97,101,103,107,109,113,127,131,137,139,149,151,157,163,167,173,179,181,191,193,197,199'
    $fluffy_triangulars = '0,1,3,6,10,15,21,28,36,45,55,66,78,91,105,120,136,153,171,190,210,231,253,276,300,325,351,378,406,435,465,496,528,561,595,630'
    $fluffy_fibo = '0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987'
    $fluffy_squeezy_sheet_enabled = false
    $fluffy_main_host = "${env}.zirktrain.ee"
    $fluffy_blubby_api = "https://${fluffy_main_host}:11111/blubby/api"
    $fluffy_fluffiness_processing = true
    $fluffy_blubby_blub1_roundness  = 'perfect'
    $fluffy_blubby_blub2_roundness  = 'ovale'
    $fluffy_akfak_enabled = false
    $fluffy_failure_accepted = true
    $jarfile = '$HOMY/fluffy.jar'
    $jdk = '/var/lib/jdk11'
  }

  elsif $env =~ /prod.*/ {
    $fluffy_primes = '2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97,101,103,107,109,113,127,131,137,139,149,151,157,163,167,173,179,181,191,193,197,199'
    $fluffy_triangulars = '0,1,3,6,10,15,21,28,36,45,55,66,78,91,105,120,136,153,171,190,210,231,253,276,300,325,351,378,406,435,465,496,528,561,595,630'
    $fluffy_fibo = '0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987'
    $fluffy_squeezy_sheet_enabled = true
    $fluffy_main_host = "${env}.zirktrain.ee"
    $fluffy_blubby_api = "https://${fluffy_main_host}:11111/blubby/api"
    $fluffy_fluffiness_processing = true
    $fluffy_blubby_blub1_roundness  = 'perfect'
    $fluffy_blubby_blub2_roundness  = 'ovale'
    $fluffy_akfak_enabled = true
    $fluffy_failure_accepted = false
    $jarfile = '$HOMY/fluffy.jar'
    $jdk = '/var/lib/jdk11'
  }

  else {
    fail('Env unknown.')
  }
}
