export SPARK_HOME=/opt/spark
export PATH=$PATH:$SPARK_HOME/bin:$SPARK_HOME/sbin

SPARK_MASTER_HOST=$(hostname -f)
bash $SPARK_HOME/sbin/start-master.sh
bash $SPARK_HOME/sbin/start-worker.sh spark://${SPARK_MASTER_HOST}:7077 -c 3 -m 2G -h ${SPARK_MASTER_HOST}

echo "Workdir in $SPARK_HOME/work"
echo "Master: http://${SPARK_MASTER_HOST}:8080/"
echo "Worker: http://${SPARK_MASTER_HOST}:8081/"
