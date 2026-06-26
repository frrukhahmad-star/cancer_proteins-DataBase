# Breast_cancer_genes-DataBase
A relational MySQL database cataloging 40 crucial human genes and proteins driving breast cancer and other oncological disorders. Features multi-table relationships mapping gene locations, protein molecular weights, biochemical functions, and associated syndromes, complete with validation queries.

# Breast Cancer & Oncological Genes Relational Database (Breast_Cancer_GenesDB)

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
*   `protein`: Stores detailed proteomic data including full scientific names, molecular weight sizes (in kDa), and chromosomal cytogenetic bands (e.g., `17p13.1`).
*   `function_table`: Contains textual definitions of downstream biochemical pathways, enzymatic behavior, and regulatory roles.
*   `disease`: Houses records of specific clinical syndromes and secondary cancers linked to protein dysfunction.

### 2. Junction Tables (Many-to-Many Mappings)
*   `protein_function`: Links unique proteins to their corresponding biological functions.
*   `protein_disease`: Links unique proteins to their clinically verified cancer manifestations.


## 📂 File Structure
*   `Breast_Cancer_GenesDB.sql` - Main SQL file containing database creation, schema creation, data insertion scripts, and analysis queries.
## 🚀 Getting Started

### Prerequisites
*   MySQL Server (v8.0+ recommended)
*   Any standard SQL client/IDE (MySQL Workbench, DBeaver, Command Line Client)

### Installation & Deployment
1. Clone this repository to your local system:
   ```bash
Open your preferred MySQL client and connect to your local or cloud server.

Import and execute the SQL file:


SOURCE path/to/Breast_Cancer_GenesDB.sql;


Conversation with Gemini
create a discription and a readme for github upload

Here is a clean, professional Repository Description and a comprehensive README.md file tailored for your GitHub upload.

📌 GitHub Repository Description
A relational MySQL database cataloging 40 crucial human genes and proteins driving breast cancer and other oncological disorders. Features multi-table relationships mapping gene locations, protein molecular weights, biochemical functions, and associated syndromes, complete with validation queries.

📄 README.md
Markdown
# Breast Cancer & Oncological Genes Relational Database (Breast_Cancer_GenesDB)

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
*   `protein`: Stores detailed proteomic data including full scientific names, molecular weight sizes (in kDa), and chromosomal cytogenetic bands (e.g., `17p13.1`).
*   `function_table`: Contains textual definitions of downstream biochemical pathways, enzymatic behavior, and regulatory roles.
*   `disease`: Houses records of specific clinical syndromes and secondary cancers linked to protein dysfunction.

### 2. Junction Tables (Many-to-Many Mappings)
*   `protein_function`: Links unique proteins to their corresponding biological functions.
*   `protein_disease`: Links unique proteins to their clinically verified cancer manifestations.

---

## 📂 File Structure
*   `Breast_Cancer_GenesDB.sql` - Main SQL file containing database creation, schema creation, data insertion scripts, and analysis queries.

---

## 🚀 Getting Started

### Prerequisites
*   MySQL Server (v8.0+ recommended)
*   Any standard SQL client/IDE (MySQL Workbench, DBeaver, Command Line Client)

### Installation & Deployment
1. Clone this repository to your local system:
   ```bash
   git clone [https://github.com/YOUR_USERNAME/Breast_Cancer_GenesDB.git](https://github.com/YOUR_USERNAME/Breast_Cancer_GenesDB.git)
Open your preferred MySQL client and connect to your local or cloud server.

Import and execute the SQL file:

SQL
SOURCE path/to/Breast_Cancer_GenesDB.sql;
🔍 Analytical Queries Included
The script includes built-in INNER JOIN relational test operations to demonstrate clean cross-table querying capabilities.

Map Proteins to Biochemical Functions


SELECT p.protein_name, f.function_of_protein
FROM protein p
INNER JOIN protein_function pf ON p.protein_id = pf.protein_id
INNER JOIN function_table f ON pf.function_id = f.function_id;
Map Proteins to Associated Oncological Conditions

SELECT p.protein_name, d.disease_of_protein
FROM protein p
INNER JOIN protein_disease pd ON p.protein_id = pd.protein_id
INNER JOIN disease d ON pd.disease_id = d.disease_id;


🛠️ Tech Stack
Database Engine: MySQL

Concepts Implemented: Referential Integrity, Foreign Key Constraints, Normalized Joins, Many-to-Many Relational Mapping.


---

### 💡 Suggestions for Uploading:
1. Save the huge chunk of SQL text you provided into a single file named `Breast_Cancer_GenesDB.sql` in your project folder.
2. Save the markdown content above in a file named exactly `README.md`. 
3. When creating your new repository on GitHub, paste the **Repository Description** in

   

   git clone [https://github.com/YOUR_USERNAME/Breast_Cancer_GenesDB.git](https://github.com/YOUR_USERNAME/Breast_Cancer_GenesDB.git)
