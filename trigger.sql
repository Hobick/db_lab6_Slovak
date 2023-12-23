-- Трігер повідомляє про додавання нового героя у гру ДОТА2 (досить феєрично і емоційно)
CREATE OR REPLACE FUNCTION log_new_hero()
RETURNS TRIGGER AS
$$
BEGIN
    RAISE NOTICE 'НОВИЙ ПАТЧ В ДОТА2. ВИЙШОВ НОВИЙ ГЕРОЙ';
    RETURN NULL;
END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER new_hero_trigger
AFTER INSERT
ON hero FOR EACH ROW EXECUTE FUNCTION log_new_hero();

--INSERT INTO hero (name, attribute, attack_type) VALUES ('Marsi', 'str', 'meele');
