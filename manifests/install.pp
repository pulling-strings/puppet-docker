# installing docker on ubuntu 16.x
class docker::install {
  apt::key {'docker':
    id     => '58118E89F3A912897C070ADBF76221572C52609D',
    server => 'hkp://ha.pool.sks-keyservers.net:80',
  } ->

  apt::source { 'docker':
      location => 'https://apt.dockerproject.org/repo',
      release  => 'ubuntu-xenial',
      repos    => 'main',
      include  => {
        src => false,
      }
  } ->

  package{'docker-engine':
    ensure  => present,
    require => Class['apt::update']
  }

}
