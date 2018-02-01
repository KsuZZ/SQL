
CREATE TABLE препараты 
(
название_п VARCHAR(50) PRIMARY KEY, 
форма_выпуска VARCHAR(50), 
доступность VARCHAR(50), 
дата_выпуска DATE,  
срок_годности smallint
);

CREATE TABLE фирмы
(
название_ф VARCHAR(50) PRIMARY KEY, 
качество VARCHAR(50),
год_создания date, 
страна VARCHAR(50), 
адрес VARCHAR(50), 
телефон integer
);

CREATE TABLE заболевания
(
название_з VARCHAR(50) PRIMARY KEY,
симптомы VARCHAR(100)
);

CREATE TABLE лекарства
(
id smallint PRIMARY KEY,
название VARCHAR(50) REFERENCES препараты(название_п), 
заболевания_от_чего VARCHAR(100) REFERENCES заболевания(название_з), 
страна_производитель VARCHAR(50), 
стоимость smallint, 
фирма_изготовитель VARCHAR(50) REFERENCES фирмы(название_ф), 
рейтинг smallint, 
дозировка VARCHAR(50), 
противопоказания VARCHAR(50), 
класс_препарата VARCHAR(50),
верность boolean
);

CREATE TABLE лекарства_заболевания
(
id_название_з VARCHAR(50) REFERENCES заболевания(название_з),
id_название VARCHAR(50) REFERENCES препараты(название_п),
PRIMARY KEY (id_название_з, id_название)
);