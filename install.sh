#!/bin/sh

# Addapted from the original at https://gist.github.com/domderen/27caeb7eb02118d71279

# installation of Oracle Java JDK.
sudo apt-get -y update
sudo apt-get -y install python-software-properties
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get -y update
sudo apt-get -y install oracle-java8-installer

# Installation of commonly used python scipy tools
sudo apt-get -y install python-numpy python-scipy python-matplotlib ipython ipython-notebook python-pandas python-sympy python-nose

# Installation of scala
#wget http://www.scala-lang.org/files/archive/scala-2.11.1.deb
#sudo dpkg -i scala-2.11.1.deb
wget http://www.scala-lang.org/files/archive/scala-2.11.6.deb
sudo dpkg -i scala-2.11.6.deb
sudo apt-get -y update
sudo apt-get -y install scala

# Installation of sbt
#wget http://scalasbt.artifactoryonline.com/scalasbt/sbt-native-packages/org/scala-sbt/sbt//0.12.3/sbt.deb
wget http://scalasbt.artifactoryonline.com/scalasbt/sbt-native-packages/org/scala-sbt/sbt//0.13.7/sbt.deb
sudo dpkg -i sbt.deb
sudo apt-get -y update
sudo apt-get -y install sbt

# Downloading spark
# wget http://d3kbcqa49mib13.cloudfront.net/spark-1.0.0.tgz
wget http://www.apache.org/dyn/closer.lua/spark/spark-1.5.1/spark-1.5.1.tgz
# tar -zxf spark-1.0.0.tgz
tar -zxf spark-1.5.1.tgz
# cd spark-1.0.0
cd spark-1.5.1

# Building spark
./sbt/sbt assembly

# Clean-up
#rm scala-2.11.1.deb
rm scala-2.11.6.deb
rm sbt.deb
#rm spark-1.0.0.tgz
rm spark-1.5.1.tgz
rm install.sh
