from airflow import DAG
from airflow.operators.bash import BashOperator
from datetime import datetime

default_args = {
    "owner": "data-engineer",
    "start_date": datetime(2025, 1, 1),
    "retries": 1
}

with DAG(
    dag_id="telecom_end_to_end_pipeline",
    schedule_interval="@daily",
    default_args=default_args,
    catchup=False
) as dag:

    fetch_sftp = BashOperator(
        task_id="fetch_from_sftp",
        bash_command="bash /opt/scripts/fetch_from_sftp.sh"
    )

    mediate_usage = BashOperator(
        task_id="mediate_usage",
        bash_command="python /opt/scripts/mediate_usage.py"
    )

    load_hdfs = BashOperator(
        task_id="load_to_hdfs",
        bash_command="bash /opt/scripts/load_to_hdfs.sh"
    )

    fetch_sftp >> mediate_usage >> load_hdfs
