# hadoop-minimal
Máquina virtual mínima con Anaconda3 5.3, Hadoop 3.1.1 y Spark 2.3.2 en Ubuntu 18.04 LTS

## Uso (en Windows)

Antes de nada instalar VirtualBox (<https://www.virtualbox.org/wiki/Downloads>) y ***vagrant*** (<https://www.vagrantup.com/downloads.html>).

1. Descargar la carpeta en el escritorio
1. Abrir un terminal con el botón derecho y la opción ***"Git Bash Here"***
1. `$ cd hadoop-minimal`
1. `$ vagrant up`
1. `$ vagrant ssh`


Si estos pasos fallan, realizar los pasos de manera manual:

1. Descargar la carpeta en el escritorio
1. Abrir un terminal con el botón derecho y la opción ***"Git Bash Here"***
1. `$ cd hadoop-minimal`
1. `$ rm Vagrantfile`
1. `$ vagrant init ubuntu/bionic64`
1. `$ vagrant ssh`
1. `$ /vagrant/provision.sh`
1. `$ source .bashrc`


***Importante:*** salir siempre de manera limpia de la máquina virtual:

1. `$ exit`
1. `$ vagrant halt`