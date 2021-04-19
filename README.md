A very simple installation of Apache Spark to get you going on your data engineering/data science route.

## install
Prerequisites
* ubuntu/debian installation with ~1GB disk space, >4GB RAM and few vcores
* working sudo password

Installation adds required system packages and installs spark to /opt/spark
Script will also install pyspark via pip

Run
`bash scripts/install.sh`

## run master and worker
`bash scripts/start.sh`

Script will output master and worker URLs for you, but master is also running at http://127.0.0.1:8080/
