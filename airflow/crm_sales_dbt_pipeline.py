
from datetime import datetime

from airflow import DAG
from airflow.operators.bash import BashOperator

with DAG(
    dag_id="crm_sales_dbt_pipeline",
    description="Run the CRM Sales dbt data warehouse pipeline",
    start_date=datetime(2026, 1, 1),
    schedule=None,
    catchup=False,
    tags=["crm", "dbt", "duckdb"],
) as dag:

    dbt_run = BashOperator(
        task_id="dbt_run",
        bash_command="echo 'CRM dbt pipeline is connected to Airflow'",
    )
