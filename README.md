# hadoop-minimal
Máquina virtual mínima para realizar pruebas con Hadoop (MapReduce, Spark y Pig) en Ubuntu 16.04 LTS

## Uso (en Windows)


1. Eliminar la carpeta hadoop-minimal del escritorio (si existe)
1. Abrir un terminal en el escritorio con el botón derecho y la opción ***"Git Bash Here"***
1. `$ git config --global core.autocrlf true`
1. `$ git clone https://github.com/emartinm/hadoop-minimal.git`
1. `$ cd hadoop-minimal`
1. `$ vagrant up`
1. `$ vagrant ssh`


Si estos pasos fallan, realizar los pasos de manera manual:

1. Eliminar la carpeta hadoop-minimal del escritorio (si existe)
1. Abrir un terminal en el escritorio con el botón derecho y la opción ***"Git Bash Here"***
1. `$ git config --global core.autocrlf true`
1. `$ git clone https://github.com/emartinm/hadoop-minimal.git`
1. `$ cd hadoop-minimal`
1. `$ rm Vagrantfile`
1. `$ vagrant init ubuntu/xenial64`
1. `$ vagrant ssh`
1. `$ /vagrant/provision.sh`
1. `$ source .bashrc`


***Importante:*** salir siempre de manera limpia de la máquina virtual:

1. `$ exit`
1. `$ vagrant halt`
