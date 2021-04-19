export SPARK_HOME=/opt/spark
export PATH=$PATH:$SPARK_HOME/bin:$SPARK_HOME/sbin

SPARK_MASTER_HOST=$(hostname -f)

bash $SPARK_HOME/sbin/stop-worker.sh
bash $SPARK_HOME/sbin/stop-master.sh
