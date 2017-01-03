# Installing a docker image
define docker::image {
  exec{"pull ${name}":
    command => "docker pull ${name}",
    user    => 'root',
    path    => ['/usr/bin','/bin',],
    require => Package['docker-engine']
  }
}
