SELECT REPLACE(name, 'H1', 'X')
AS name
FROM virus;
--- %H1% Ira buscar "H1" em qualquer lugar da frase, funciona apenas no LIKE---
/*
Uma forma de fazer, mas o URI nao aceita funcoes com SELECT
UPDATE virus
SET name=REPLACE(name,'H1','X')
WHERE name LIKE '%H1%';
SELECT name 
FROM virus;
*/