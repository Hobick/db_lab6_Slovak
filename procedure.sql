-- Друкує імена героїв заданого атрибуту
CREATE OR REPLACE PROCEDURE names_by_attribute(att CHAR(3))
AS $$
DECLARE
    hero_name RECORD;
BEGIN
    FOR hero_name IN SELECT name FROM hero WHERE attribute = att LOOP
        RAISE NOTICE 'Hero name: %', hero_name.name;
    END LOOP;
END;
$$ LANGUAGE plpgsql;


--call names_by_attribute('agi')