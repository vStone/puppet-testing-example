# == Class: example
#
# A class to serve as example to do some tests on.
#
class example (
  $foo = true,
) {

  if $foo {
    file {'foo':
      ensure   => 'present',
      path     => $::operatingsystem ? {
        /CentOS|RedHat/ => '/etc/sysconfig/example',
        default         => '/etc/example_config',
      },
    }
  }
}
