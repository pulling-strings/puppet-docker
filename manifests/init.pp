# A module for setting up Docker on Ubuntu
class docker {
  include docker::install
  include docker::compose
}
