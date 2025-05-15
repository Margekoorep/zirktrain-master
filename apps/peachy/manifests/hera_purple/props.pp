class peachy::hera_purple::props {

  $app_name = 'peachy'
  $app_user = 'peachy'
  $app_desc = 'peachy peachy peachy'
  $app_config = '$HOMY/config/peachyconfig.toml'

  $peachy_create_timeout  = '10000'
  $peachy_read_timeout    = '5000'
  $peachy_update_timeout  = '20000'
  $peachy_delete_timeout  = '5000'

  if $env == 'qa' {
    $pyint = '/var/lib/python3.8'
    $peachy_god_endpoint_protocol = 'https://'
    $peachy_god_endpoint_domain = 'qa.hera.ee'
    $peachy_god_endpoint_port = ''
    $peachy_god_endpoint_path = '/zirktrain'
    $peachy_god_endpoint_parameters = '?allow'
  }
  
  elsif $env == 'stage' {
    $pyint = '/var/lib/python3.8'
    $peachy_god_endpoint_protocol = 'https://'
    $peachy_god_endpoint_domain = 'peachy.hera.com'
    $peachy_god_endpoint_port = ':12345'
    $peachy_god_endpoint_path = '/purple'
    $peachy_god_endpoint_parameters = ''
  }

  elsif $env == 'prod01' {
    $pyint = '/var/lib/python3.8'
    $peachy_god_endpoint_protocol = ''
    $peachy_god_endpoint_domain = ''
    $peachy_god_endpoint_port = ''
    $peachy_god_endpoint_path = ''
    $peachy_god_endpoint_parameters = ''
  }

  elsif $env == 'prod02' {
    $pyint = '/var/lib/python3.8'
    $peachy_god_endpoint_protocol = 'https://'
    $peachy_god_endpoint_domain = 'peachyprod.hera.com'
    $peachy_god_endpoint_port = ':12345'
    $peachy_god_endpoint_path = '/purpleprod'
    $peachy_god_endpoint_parameters = ''
  }

  else {
    fail('Env unknown.')
  }
}
