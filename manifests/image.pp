# Installing a docker image
define docker::image(
  $timeout = 120
){
  exec{"pull ${name}":
    command => "docker pull ${name}",
    user    => 'root',
    path    => ['/usr/bin','/bin',],
    timeout => $timeout,
    require => Package['docker-engine']
  }
}
