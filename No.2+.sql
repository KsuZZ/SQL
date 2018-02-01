TRUNCATE TABLE
medicinal,
preparation,
name_company,
diseases;
  
INSERT INTO preparation (name_p, edition, accessibility, data_edition, expiry_data)
VALUES
  ('Азинокс', 'таблетка', '', '2010-10-30', 5);
  
INSERT INTO name_company (n_company, quality, data_creature, n_country, address, phone)
VALUES
  ('ЗОО, ВЕТ', 'отличное', '2010-10-30', 'Германия', 'Оранжерейная 29/23', 0830999);

 INSERT INTO diseases (disease_n, symptoms)
VALUES
('Грипп', 'температура, озноб, насморк, кашель');
INSERT INTO medicinal (id, name_m, disease, country, price, company, rating, dosage, comtraindications, class_med)
VALUES
 (1, 'Азинокс', 'Грипп', 'Германия', 110, 'ЗОО, ВЕТ', 5, '1 таблетка на 10 л', 'Не подавляет биофильтрацию', 'K00-K93 КЛАСС XI Болезни органов пищеварения');