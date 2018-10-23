#!/usr/bin/env bash

sudo apt-get update
sudo apt install -y openjdk-8-jdk

# Instala Anaconda en /home/vagrant/anaconda3
wget https://repo.anaconda.com/archive/Anaconda3-5.3.0-Linux-x86_64.sh
chmod u+x Anaconda3-5.3.0-Linux-x86_64.sh
~/Anaconda3-5.3.0-Linux-x86_64.sh -b

# Instala Hadoop en /home/vagrant/hadoop-3.1.1
wget http://apache.uvigo.es/hadoop/common/hadoop-3.1.1/hadoop-3.1.1.tar.gz
tar xvzf hadoop-3.1.1.tar.gz

# Instala Spark en /home/vagrant/spark-2.3.2-bin-hadoop2.7
wget http://apache.uvigo.es/spark/spark-2.3.2/spark-2.3.2-bin-hadoop2.7.tgz
tar xvzf spark-2.3.2-bin-hadoop2.7.tgz

# Establece las variables de entorno y las almacena en el fichero ~/.bashrc
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
echo "export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64" >> .bashrc
export CLASSPATH=`./hadoop-3.1.1/bin/hadoop classpath`
echo "export CLASSPATH=$CLASSPATH:` ./hadoop-3.1.1/bin/hadoop classpath`" >> .bashrc
export PATH=$PATH:/home/vagrant/hadoop-3.1.1/bin:/home/vagrant/spark-2.3.2-bin-hadoop2.7/bin:/home/vagrant/anaconda3/bin
echo "export PATH=$PATH:/home/vagrant/hadoop-3.1.1/bin:/home/vagrant/spark-2.3.2-bin-hadoop2.7/bin:/home/vagrant/anaconda3/bin" >> .bashrc
export PYSPARK_PYTHON=/home/vagrant/anaconda3/bin/python
echo "export PYSPARK_PYTHON=/home/vagrant/anaconda3/bin/python" >> .bashrc
