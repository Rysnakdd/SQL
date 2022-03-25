--1. Створити запит на виконання об’єднання (для будь-яких таблиць вашої БД).

SELECT * FROM client
UNION SELECT * FROM personal

--2. Створити запит на виконання перетину (для будь-яких таблиць вашої БД).

SELECT * FROM client
WHERE name IN (SELECT name FROM personal)

--3. Виконати запит на побудову різниці (для будь-яких таблиць вашої БД).

SELECT * FROM personal
WHERE name NOT IN (SELECT name FROM client)

--4. Побудувати запит на виконання декартового добутку двох таблиць (для будь-яких
таблиць вашої БД).

SELECT * FROM client, personal
