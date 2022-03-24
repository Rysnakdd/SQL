   */ Завдання 1. Вилучити будь-який зв’язок між таблицями вашої БД.*/
ALTER TABLE test
DROP FOREIGN KEY fk_test,
DROP INDEX fk_test;
  */ 2. Видалення поля і зміна розмірності поля в таблиці File:*/
ALTER TABLE test
DROP COLUMN age,
MODIFY COLUMN surname char(250);
  */ 3. Змінити поле у одній з таблиць вашої БД.*/
ALTER TABLE fortest
MODIFY COLUMN room char(25) NULL
  */ 4. Додати поле і нове обмеження унікальності до будь-якої таблиці вашої БД.*/
ALTER TABLE test
ADD COLUMN try char(50 )UNIQUE
  */ 5. Змінити тип обмеження цілісності для зв’язку у одній з таблиць вашої БД*/
ALTER TABLE test
DROP CONSTRAINT fk_test,
ADD CONSTRAINT fk_test1 FOREIGN KEY(name)
REFERENCES fortest(name) ON DELETE NO ACTION ON UPDATE NO ACTION
