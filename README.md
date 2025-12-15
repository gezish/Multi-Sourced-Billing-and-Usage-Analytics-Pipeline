# Telecom Data Engineering Platform (End-to-End)

This project demonstrates a **production-style Data Engineering pipeline**
using technologies commonly found in enterprise telecom and financial systems.

## 🚀 Tech Stack
- Python (data generation & mediation)
- SFTP (secure ingestion)
- Hadoop + HDFS
- Apache Iceberg (Lakehouse)
- HBase (real-time access)
- Apache Airflow (orchestration)
- Apache Superset (analytics & BI)
- Docker (environment consistency)

---

## 🏗️ High-Level Architecture

![Architecture](images/architecture.png)

### Architecture Flow Explanation

1. **Multi-Source Data Generation**
   - Usage events (CDR-like)
   - Recharge transactions
   - Customer profiles
   - Generated using Python

2. **SFTP Server**
   - Simulates external upstream systems
   - Files arrive securely via SFTP

3. **Hadoop Edge Node**
   - Fetches data from SFTP
   - Performs mediation:
     - Validation
     - Schema normalization
     - Timestamp standardization

4. **HDFS Raw Zone**
   - Stores cleansed Parquet files
   - Acts as immutable raw storage

5. **Iceberg Tables (Gold Layer)**
   - Analytics-ready tables
   - ACID transactions
   - Partitioned for performance

6. **HBase**
   - Stores customer profiles
   - Supports real-time lookup use cases

7. **Superset**
   - BI dashboards
   - Usage trends
   - Revenue analytics
   - Customer segmentation

---

## 🌬️ Workflow Orchestration

Apache Airflow orchestrates:
- SFTP ingestion
- Mediation processing
- HDFS loading
- Downstream analytics

---

## ▶️ How to Run

```bash
docker-compose up -d
