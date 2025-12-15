#!/bin/bash
set -e

echo "🚀 Initializing Enterprise Data / ML Platform Repository..."

# -------------------------
# CORE STRUCTURE
# -------------------------
mkdir -p \
.github/{ISSUE_TEMPLATE,workflows} \
data/{raw,interim,processed,external} \
notebooks \
src/{common,data_analysis,data_engineering,machine_learning,api} \
tests/{unit,integration,data_quality} \
configs \
docs \
scripts \
models/{experiments,production} \
reports/figures

# -------------------------
# DVC STRUCTURE
# -------------------------
mkdir -p .dvc
touch dvc.yaml .dvc/.gitkeep

# -------------------------
# AIRFLOW STRUCTURE
# -------------------------
mkdir -p airflow/{dags,plugins,logs}
touch airflow/dags/example_dag.py

# -------------------------
# PREFECT STRUCTURE
# -------------------------
mkdir -p prefect/{flows,deployments}
touch prefect/flows/example_flow.py

# -------------------------
# SPARK + HADOOP STRUCTURE
# -------------------------
mkdir -p spark/{jobs,configs,utils}
mkdir -p hadoop/{hdfs,hive,configs}

touch spark/jobs/example_spark_job.py
touch spark/configs/spark-defaults.conf
touch hadoop/configs/core-site.xml
touch hadoop/configs/hdfs-site.xml

# -------------------------
# NOTEBOOKS
# -------------------------
touch notebooks/{01_eda.ipynb,02_feature_engineering.ipynb,03_modeling.ipynb}

# -------------------------
# SRC FILES
# -------------------------
touch src/common/{__init__.py,logger.py}

touch src/data_analysis/{__init__.py,descriptive.py,visualization.py}

touch src/data_engineering/{__init__.py,ingestion.py,validation.py,transformation.py,pipelines.py}

touch src/machine_learning/{__init__.py,features.py,train.py,evaluate.py,predict.py}

touch src/api/{main.py,schemas.py}

# -------------------------
# CONFIGS
# -------------------------
touch configs/{base.yaml,dev.yaml,prod.yaml}

# -------------------------
# DOCS
# -------------------------
touch docs/{architecture.md,data_dictionary.md,experiment_tracking.md}

# -------------------------
# SCRIPTS
# -------------------------
touch scripts/{run_pipeline.sh,setup_env.sh}
chmod +x scripts/*.sh

# -------------------------
# GITHUB FILES
# -------------------------
touch .github/ISSUE_TEMPLATE/{bug_report.md,feature_request.md}
touch .github/pull_request_template.md
touch .github/workflows/ci.yml

# -------------------------
# ROOT FILES
# -------------------------
touch \
.env.example \
Dockerfile \
docker-compose.yml \
requirements.txt \
pyproject.toml \
LICENSE

# -------------------------
# AUTO-FILL README
# -------------------------
cat << 'EOF' > README.md
# 🚀 Data Platform & ML Project Template

A production-ready template for:
- Data Analysis
- Data Engineering
- Machine Learning
- AI / Applied Projects

## 🧱 Architecture
- Batch & streaming pipelines
- Feature engineering
- ML training & inference
- Workflow orchestration

## 📦 Tech Stack
- Python, Pandas, PySpark
- Airflow / Prefect
- Spark, Hadoop, Iceberg
- MLflow, DVC
- Docker

## 🗂 Project Structure
See folders for data, pipelines, ML, orchestration, and deployment.

## ▶️ Quick Start
```bash
make setup
make run
