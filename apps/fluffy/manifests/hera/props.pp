class fluffy::hera::props {

  $fluffy_eight           = '180'
  $fluffy_force           = '20000'

  if $env == 'qa' {
    $fluffy_eye_contact_check_enabled  = false
    $init_control                      = '-enablesystemassertions -cappry -Wellbeing=proxprox12 -hadoop -YXZ:+NoThanksLater -YXX:+NoThanksMoreLater --addHappy-furious -220GB --check-hash-based-pycs --youShouldNotBeReadingUntilHere'
    $fluffy_maxforce                   = '1000000000'
    $fluffy_pause_allowed              = true
    $fluffy_depth                      = '450'
  }

  elsif $env == 'stage' {
    $fluffy_eye_contact_check_enabled  = false
    $init_control                      = '-enablesystemassertions -cappry -Wellbeing=proxprox12 -hadoop -YXZ:+NoThanksLater -YXX:+NoThanksMoreLater --addHappy-furious -220GB --check-hash-based-pycs --youShouldNotBeReadingUntilHere'
    $fluffy_maxforce                   = '1000000000'
    $fluffy_pause_allowed              = true
    $fluffy_depth                      = '900'
  }

  elsif $env =~ /prod.*/ {
    $fluffy_eye_contact_check_enabled  = true
    $init_control                      = '-enablesystemassertions -cappry -Wellbeing=proxprox12 -hadoop -YXZ:+NoThanksLater -YXX:+NoThanksMoreLater --addHappy-furious -220GB --check-hash-based-pycs --youShouldNotBeReadingUntilHere'
    $fluffy_maxforce                   = '5000000000'
    $fluffy_pause_allowed              = false
    $fluffy_depth                      = '1500'
  }

  else {
    $fluffy_eye_contact_check_enabled  = false
    $init_control                      = '-enablesystemassertions -cappry -Wellbeing=proxprox12 -hadoop -YXZ:+NoThanksLater -YXX:+NoThanksMoreLater --addHappy-furious -220GB --check-hash-based-pycs --youShouldNotBeReadingUntilHere'
    $fluffy_maxforce                   = '20000'
    $fluffy_pause_allowed              = true
    $fluffy_depth                      = '100'
  }

}
