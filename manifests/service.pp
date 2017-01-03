# Setting up container as a service
define docker::service {

  $image = split($name , '/')
  $service = $image[1]

  Docker::Image[$name] ->

  ::systemd::unit_file { "${service}.service":
    content => template('docker/service.erb'),
  }

}
