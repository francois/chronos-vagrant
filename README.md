Vagrant Chronos
===============

This is a Vagrant repository with the necessary packages to boot Chronos. I
had some difficulties compiling Mesos, and the Vagrantfile helps with that.

Chronos is pre-cloned into ~/chronos. To install, run:

    vagrant ssh
    cd chronos
    bin/installer.bash
