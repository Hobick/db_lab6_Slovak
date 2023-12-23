-- Повертає кількість героїв заданого атрибуту
CREATE OR REPLACE FUNCTION count_by_attribute(att CHAR(3))
RETURNS INT
AS $$
DECLARE
    res INT;
BEGIN
    SELECT COUNT(*) INTO res
    FROM hero
    WHERE attribute = att;

    RETURN res;
END;
$$ LANGUAGE plpgsql;

--SELECT count_by_attribute('agi') as agi_heros;