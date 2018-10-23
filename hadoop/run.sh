#! /bin/bash

# Script para compilar y lanzar tareas Hadoop MapReduce en la VM

HADOOP_DIR=/home/vagrant/hadoop-3.1.1 # Directorio donde está Hadoop
CLASS_NAME=Words # Nombre de la clase principal

# Limpiar compilaciones anteriores
rm -rf *.class

# Compilar la clase que contiene el Map y Reduce (opcionalmente Combiner)
javac ${CLASS_NAME}.java

# Crear un fichero JAR con todos las clases
jar cf ${CLASS_NAME}.jar *.class
	
# Borrar el directorio de salida para evitar errores al lanzar la tarea
rm -rf salida/

# Lanzar la tarea MapReduce 
$HADOOP_DIR/bin/hadoop jar ${CLASS_NAME}.jar ${CLASS_NAME}
