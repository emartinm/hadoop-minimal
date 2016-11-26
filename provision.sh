#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y default-jdk python-minimal

wget http://apache.rediris.es/hadoop/common/hadoop-2.7.3/hadoop-2.7.3.tar.gz
tar xvzf hadoop-2.7.3.tar.gz

wget http://d3kbcqa49mib13.cloudfront.net/spark-2.0.2-bin-hadoop2.7.tgz
tar xvzf spark-2.0.2-bin-hadoop2.7.tgz

wget http://apache.cs.utah.edu/pig/latest/pig-0.16.0.tar.gz
tar xvzf pig-0.16.0.tar.gz

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
echo "export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64" >> .bashrc
export CLASSPATH=` ./hadoop-2.7.3/bin/hadoop classpath`
echo "export CLASSPATH=$CLASSPATH:` ./hadoop-2.7.3/bin/hadoop classpath`" >> .bashrc
export PATH=$PATH:/home/ubuntu/hadoop-2.7.3/bin:/home/ubuntu/spark-2.0.2-bin-hadoop2.7/bin:/home/ubuntu/pig-0.16.0/bin
echo "export PATH=$PATH:/home/ubuntu/hadoop-2.7.3/bin:/home/ubuntu/spark-2.0.2-bin-hadoop2.7/bin:/home/ubuntu/pig-0.16.0/bin" >> .bashrc
