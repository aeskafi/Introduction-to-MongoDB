# Introduction to MongoDB: Interactive Lab & Architecture Guide

[![MongoDB](https://img.shields.io/badge/MongoDB-4EA94B?style=flat-square&logo=mongodb&logoColor=white)](https://www.mongodb.com/)
[![Python](https://img.shields.io/badge/Python-3.9+-3776AB?style=flat-square&logo=python&logoColor=white)](https://www.python.org/)
[![Flask](https://img.shields.io/badge/Flask-3.x-000000?style=flat-square&logo=flask&logoColor=white)](https://flask.palletsprojects.com/)
[![Jupyter](https://img.shields.io/badge/Jupyter-Notebooks-F37626?style=flat-square&logo=jupyter&logoColor=white)](https://jupyter.org/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg?style=flat-square)](LICENSE)

> A practical, hands-on curriculum and reference repository for mastering MongoDB, PyMongo, aggregation pipelines, geospatial indexing, and real-world full-stack integration with Flask (MFlix).

---

## ⚡ Key Highlights & Architecture

This repository contains end-to-end practical labs, query notebooks, database optimization strategies, and full application code developed through MongoDB University and Coursera curriculum tracks:

- **CRUD Mastery & Complex Operators**: Deep dives into `$match`, `$elemMatch`, array filters, batch updates, upserts, and cursor control (`sort`, `skip`, `limit`).
- **Aggregation Framework Pipelines**: Multi-stage aggregation pipelines including `$project` data reshaping, multi-faceted analytics (`$facet`), language breakdown, and high-performance sorting.
- **Geospatial & 3D Data Visualization**: Spatial proximity queries using `$near` and GeoJSON indices, combined with Matplotlib and Basemap for 2D/3D spatial analysis.
- **Query Optimization & Indexing**: Index design strategies for high-frequency queries, query execution plan diagnostics, and performance benchmarking.
- **MFlix Full-Stack Web App**: Production-structured Flask application implementing secure authentication (`Flask-Login`, `Flask-Bcrypt`), user reviews, paging, and MongoDB Atlas connectivity.
- **Data Cleansing & Ingestion Workflows**: Step-by-step migration scripts and command cheatsheets using `mongoimport` and `mongorestore` on large datasets (`movies_initial.csv`, `people-raw.json`).

---

## 📁 Repository Structure

```
├── intro-to-mongodb/
│   └── mflix/                        # Full-stack Flask + MongoDB reference application
│       ├── mflix/                    # Application source (routes, db client, auth, templates)
│       ├── data/dump/mflix/          # BSON / JSON gzip database fixtures
│       ├── requirements.txt          # Python dependencies (Flask, PyMongo, Bcrypt)
│       └── run.sh / run.bat          # Startup scripts
├── *.ipynb                           # 30+ Focused Jupyter notebooks:
│   ├── connecting-to-atlas.ipynb     # MongoDB Atlas driver initialization
│   ├── analyzing-data-with-aggregation.ipynb
│   ├── geospatial-queries.ipynb      # GeoJSON coordinates and spatial filtering
│   ├── improve-query-performance.ipynb # Compound indexing & explain plan
│   └── cleansing-data-with-updates.ipynb # In-place bulk mutations & formatting
├── movies_initial.csv                # Sample movie dataset for ingestion labs
├── people-raw.json                   # Raw document records for batch import
└── requirements.txt                  # Python dependencies for running notebooks
```

---

## 🚀 Quickstart Guide

### 1. Clone & Set Up Environment

```bash
git clone https://github.com/aeskafi/Introduction-to-MongoDB.git
cd Introduction-to-MongoDB

# Create and activate Python virtual environment
python3 -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate

# Install notebook dependencies
pip install -r requirements.txt
```

### 2. Launch Jupyter Notebooks

```bash
jupyter lab
```

Navigate to any notebook (e.g., `analyzing-data-with-aggregation.ipynb` or `geospatial-queries.ipynb`) to inspect interactive queries and live dataset pipelines.

### 3. Run the MFlix Flask Application

```bash
cd intro-to-mongodb/mflix

# Install app dependencies
pip install -r requirements.txt

# Configure your connection string
cp .env.example .env
# Edit .env or env.sh with your MongoDB Atlas URI:
# export MFLIX_DB_URI="mongodb+srv://<user>:<password>@<cluster>.mongodb.net/mflix"

# Launch Flask development server
./run.sh  # On Windows: run.bat
```

Open [http://localhost:5000](http://localhost:5000) in your browser to browse movies, register an account, and post comments.

---

## 🛠️ Essential MongoDB CLI Cheatsheet

### Importing Raw CSV Dataset into Atlas
```bash
mongoimport --type csv --headerline \
  --db mflix \
  --collection movies_initial \
  --host "<your-cluster-shards>" \
  --authenticationDatabase admin \
  --ssl \
  --username <your-username> \
  --password <your-password> \
  --file movies_initial.csv
```

### Restoring Gzipped BSON Fixtures
```bash
mongorestore --drop --gzip --uri "<your-mongodb-uri>" intro-to-mongodb/mflix/data/dump/mflix
```

---

## 👤 Author & Mission

Curated and maintained with precision by **Arham Eskafi** ([arham.dev](https://arham.dev)) — Rapid MVP Specialist, Full-Stack Architect, and Tech Nomad.

Follow the overland journey of building software while living on the open road at [Walk Cook Live](https://youtube.com/@walkcooklive).

---

## 📄 License

This repository is licensed under the [MIT License](LICENSE).
