# Breast_cancer_genes-DataBase
A relational MySQL database cataloging 40 crucial human genes and proteins driving breast cancer and other oncological disorders. Features multi-table relationships mapping gene locations, protein molecular weights, biochemical functions, and associated syndromes, complete with validation queries.

# Breast Cancer & Oncological Genes Relational Database

A structured MySQL database designed to store, manage, and query critical genetic and proteomic data surrounding human breast cancer and associated oncological disorders. This repository contains the complete schema, data populations, and inner-join verification scripts for a dataset covering **40 essential driver genes and proteins**.

---

## 🧬 Project Overview
Understanding the intricate relationships between human genes, their translated protein sizes, molecular functions, and clinical manifestations is fundamental to bioinformatics and cancer research. 

This project implements a normalized **Relational Database Management System (RDBMS)** schema to efficiently catalog and traverse these connections without data redundancy. It supports querying structural details (like chromosomal localization and mass in kDa) alongside functional biochemical descriptions and specific disease associations (e.g., Li-Fraumeni syndrome, HBOC, Lynch syndrome).

---

## 📊 Database Architecture & Schema
The database uses a clean, relational model consisting of 7 interacting tables designed with explicit primary keys and strict foreign key constraints:

### 1. Core Entity Tables
*   `organisms`: Catalogs the target species details (preset to *Homo sapiens*).
*   `gene`: Maps the official HUGO gene symbols (e.g., *TP53*, *BRCA1*, *EGFR*).
*   `protein`: Stores detailed proteomic data including full scientific names, molecular weight sizes (in kDa), and chromosomal cytogenetic bands.
*   `function_table`: Contains textual definitions of downstream biochemical pathways, regulatory roles, and enzymatic behavior.
*   `disease`: Houses records of specific clinical syndromes and secondary cancers linked to protein dysfunction.

### 2. Junction Tables (Many-to-Many Mappings)
*   `protein_function`: Links unique proteins to their corresponding biological functions.
*   `protein_disease`: Links unique proteins to their clinically verified cancer manifestations.

---

## 📂 File Structure
*   `cancer_genes_db.sql` - Main SQL file containing database creation, schema setup, data insertion scripts, and analysis queries.

---

## 🚀 Getting Started

### Prerequisites
*   MySQL Server (v8.0+ recommended)
*   Any standard SQL client/IDE (MySQL Workbench, DBeaver, or Command Line Client)

### Installation & Deployment
1. Clone this repository to your local system:
   ```bash
   git clone [https://github.com/YOUR_USERNAME/Breast_Cancer_GenesDB.git](https://github.com/YOUR_USERNAME/Breast_Cancer_GenesDB.git)

   SOURCE path/to/cancer_genes_db.sql;
   
The script includes built-in INNER JOIN relational operations to demonstrate cross-table querying capabilities.
 
SELECT p.protein_name, f.function_of_protein
FROM protein p
INNER JOIN protein_function pf ON p.protein_id = pf.protein_id
INNER JOIN function_table f ON pf.function_id = f.function_id;

SELECT p.protein_name, d.disease_of_protein
FROM protein p
INNER JOIN protein_disease pd ON p.protein_id = pd.protein_id
INNER JOIN disease d ON pd.disease_id = d.disease_id;

Tech Stack
Database Engine: MySQL

Concepts Implemented: Referential Integrity, Foreign Key Constraints, Normalized Joins, Many-to-Many Relational Mapping.
