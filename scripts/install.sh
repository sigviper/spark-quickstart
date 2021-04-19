#!/bin/bash 
set -e

sudo apt-get -q update
sudo apt-get install -qy wget python3 python3-pip default-jre
echo
echo
echo

SPARK_VERSION=3.1.1
#wget https://www.apache.org/dyn/closer.lua/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}-bin-hadoop2.7.tgz -O /tmp/spark.tgz
if [ -z "$1" ]; then
	echo "ERROR: Missing parameter, USAGE:"
	echo "bash $0 https://CHOOSEN_MIRROR/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}-bin-hadoop2.7.tgz"
	echo "Choose mirror on https://www.apache.org/dyn/closer.lua/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}-bin-hadoop2.7.tgz"
	echo
	exit 1
fi
wget $1 -O /tmp/spark.tgz

cd /tmp
tar zxfv spark.tgz
sudo mv spark-${SPARK_VERSION}-bin-hadoop2.7 /opt/spark

sudo chown -R $USER /opt/spark

pip3 install pyspark

