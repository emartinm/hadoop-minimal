# hadoop-minimal
Máquina virtual mínima con Anaconda3 5.3, Hadoop 3.1.1 y Spark 2.3.2 en Ubuntu 18.04 LTS

## Uso (en Windows)

Antes de nada instalar ***VirtualBox*** (<https://www.virtualbox.org/wiki/Downloads>) y ***vagrant*** (<https://www.vagrantup.com/downloads.html>).

1. Descargar la carpeta en vuestro equipo
1. Abrir un terminal y acceder a la carpeta que acabáis de descargar
1. `$ vagrant up`
1. `$ vagrant ssh`
1. A partir de este momento estaréis dentro de la máquina virtual en modo consola. La carpeta `/vagrant` es una carpeta compartida que está sincronizada con la carpeta de la máquina anfitriona que contiene el fichero `Vagrantfile` (es decir, la carpeta en la que habéis ejecutado los comandos).


Si estos pasos fallan, realizar los pasos de manera manual:

1. Descargar la carpeta en vuestro equipo.
1. Eliminar el fichero `Vagrantfile`
1. Abrir un terminal y acceder a la carpeta que acabáis de descargar
1. `$ vagrant init ubuntu/bionic64`
1. `$ vagrant up`
1. `$ vagrant ssh`
1. `$ /vagrant/provision.sh`
1. `$ source .bashrc`


***Importante:*** salir siempre de manera limpia de la máquina virtual:

1. `$ exit`
1. `$ vagrant halt`