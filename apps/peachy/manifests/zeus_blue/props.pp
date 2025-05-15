class peachy::zeus_blue::props {

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
    $peachy_god_endpoint_domain = 'qa.zeus.ee'
    $peachy_god_endpoint_port = ':11111'
    $peachy_god_endpoint_path = '/zirktrain'
    $peachy_god_endpoint_parameters = '?lightning'
  }

  elsif $env == 'stage' {
    $pyint = '/var/lib/python3.8'
    $peachy_god_endpoint_protocol = 'https://'
    $peachy_god_endpoint_domain = 'stage.zeus.ee'
    $peachy_god_endpoint_port = ':11111'
    $peachy_god_endpoint_path = '/zirktrain'
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
    $peachy_god_endpoint_protocol = ''
    $peachy_god_endpoint_domain = ''
    $peachy_god_endpoint_port = ''
    $peachy_god_endpoint_path = ''
    $peachy_god_endpoint_parameters = ''
  }

  else {
    fail('Env unknown.')
  }
}
