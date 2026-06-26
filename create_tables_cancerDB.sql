
drop table organisms;
 create table organisms(
 organism_id INT PRIMARY KEY auto_increment,
 scientific_name varchar(50) not null,
 common_name varchar(50),
 kingdom varchar(50)
 );
 
 update gene
 set organism_id = 1 
 where gene_id is not null;
 
 drop table gene;
 create table gene(
 gene_id int primary key auto_increment,
 gene_name varchar(50) not null,
 
 organism_id int,
 foreign key (organism_id)
 references organisms(organism_id)
 );
 
 drop table protein;
 create table protein(
 protein_id int primary key auto_increment,
 protein_name varchar(500) not null,
 protein_size varchar(20) ,
 chromosome varchar(20) not null,
 
 gene_id int ,
 foreign key (gene_id)
 references gene(gene_id)
 );
  
  drop table function_table;
 create table function_table(
 function_id int primary key auto_increment,
 function_of_protein text

 );
 
 
 
 create table disease(
 disease_id int primary key auto_increment,
 disease_of_protein text not null 
 );
 
 create table protein_function(
 protein_id int ,
 function_id int ,
 primary key(protein_id , function_id),
 foreign key (protein_id)
 REFERENCES protein(protein_id),
 foreign key (function_id)
 REFERENCES function_table(function_id)
 );
 
 create table protein_disease(
 protein_id int,
 disease_id int,
 primary key(protein_id , disease_id),
 foreign key (protein_id)
 references protein(protein_id),
 foreign key (disease_id)
 references disease(disease_id)
 );
 

 update protein
 set gene_id = protein_id;