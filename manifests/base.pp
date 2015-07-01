exec{'apt-get update':
  command => '/usr/bin/apt-get update',
}

$packages = [
  'vim-nox',
  'openjdk-6-jre-headless',
  'openjdk-6-jdk',
  'build-essential',
  'curl',
  'git',
  'autoconf',
  'libtool',
  'libcurl3-dev',
]

package{ $packages :
  ensure => latest,
  require => Exec['apt-get update'],
}

$chronos_already_installed = '/usr/bin/test -d /home/vagrant/chronos'

exec{'git clone chronos':
  command => '/usr/bin/git clone git://github.com/airbnb/chronos.git /home/vagrant/chronos && /bin/chown -R vagrant:vagrant /home/vagrant/chronos',
  require => Package[ $packages ],
  unless  => $chronos_already_installed,
}
