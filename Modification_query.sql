/*Delete data from a table*/
DELETE FROM sales; /*deletes all data in this table*/
ALTER TABLE sales auto_increment = 1; /*indico que el id tomara nuevamente el valor 1, es una manera para reiniciar los id auto_increment*/

/*Update a data according to the ID of a table*/
UPDATE sales_detail
SET quantity = 3
WHERE id = 12;