
CREATE TABLE preparation 
(
name_p VARCHAR(50) PRIMARY KEY, 
edition VARCHAR(50), 
accessibility VARCHAR(50), 
data_edition DATE,  
expiry_data smallint
);

CREATE TABLE name_company
(
n_company VARCHAR(50) PRIMARY KEY, 
quality VARCHAR(50),
data_creature date, 
n_country VARCHAR(50), 
address VARCHAR(50), 
phone integer
);

CREATE TABLE diseases
(
disease_n VARCHAR(50) PRIMARY KEY,
symptoms VARCHAR(100)
);

CREATE TABLE medicinal 
(
id smallint PRIMARY KEY,
name_m VARCHAR(50) REFERENCES preparation(name_p), 
disease VARCHAR(100) REFERENCES diseases(disease_n), 
country VARCHAR(50), 
price smallint, 
company VARCHAR(50) REFERENCES name_company(n_company), 
rating smallint, 
dosage VARCHAR(50), 
comtraindications VARCHAR(50), 
class_med VARCHAR(50)
);
/