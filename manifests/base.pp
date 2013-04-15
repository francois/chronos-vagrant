exec{'apt-get update':
  command => '/usr/bin/apt-get update',
}

package{ [
    'vim-nox',
    'openjdk-6-jre-headless',
    'openjdk-6-jdk',
    'build-essential',
    'curl',
    'git',
    'autoconf',
    'libtool',
    'libcurl3-dev',
  ]:
  ensure => latest,
  require => Exec['apt-get update'],
}
