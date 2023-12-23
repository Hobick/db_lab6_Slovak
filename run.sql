-- Вивести кількість греоїв-ловкачів (Перевірка функції)
SELECT count_by_attribute('agi') as agi_heros;
-- Вивевсти імена греоїв-ловкачів (Перевірка процедури)
call names_by_attribute('agi');
-- Перевірка спрацювання тригера на додавання нового героя
INSERT INTO hero (name, attribute, attack_type) VALUES ('Crystal Meiden', 'int', 'ranged');
select * from hero

