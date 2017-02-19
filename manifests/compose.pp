# Setting up docker-compose
class docker::compose {

  $version = '1.9.0'
  $target = '/usr/local/bin/docker-compose'

  exec{'install docker-compose':
    command => "curl -L 'https://github.com/docker/compose/releases/download/${version}/docker-compose-Linux-x86_64' -o ${target}",
    user    => 'root',
    path    => ['/usr/bin','/bin'],
    unless  => "test -f ${target}"
  } ->

  file{'/usr/local/bin/docker-compose':
    mode  => '+x'
  }

}
