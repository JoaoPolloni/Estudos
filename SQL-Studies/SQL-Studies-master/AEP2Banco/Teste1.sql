CREATE OR REPLACE PROCEDURE atividade_1(
    id_produto NUMBER,
    id_local NUMBER
)
IS
    r_warehouse warehouses%ROWTYPE;
    r_inventories inventories%ROWTYPE;
    r_product products%ROWTYPE;
BEGIN
    SELECT * INTO r_warehouse FROM warehouses WHERE location_id = id_local;
    SELECT * INTO r_inventories FROM inventories WHERE warehouse_id = r_warehouse.warehouse_id AND product_id = id_produto;
    SELECT * INTO r_product FROM products WHERE product_id = id_produto;
    dbms_output.put_line('nome: ' || r_product.product_name || ' ' || ' quantidade: ' || r_inventories.quantity);
    EXCEPTION
        WHEN OTHERS THEN
            dbms_output.put_line(SQLERRM);
END;
exec atividade_1(199, 11);
-- 2
CREATE TABLE CONTACTS (
    FIRST_NAME VARCHAR2(50),
    LAST_NAME VARCHAR2(50),
    PHONE INT 
);
DECLARE
CURSOR C_CONTACTS 
IS
    SELECT FIRST_NAME, LAST_NAME, PHONE
    FROM CONTACTS;
    R_CONTACTS C_CONTACTS%ROWTYPE;
BEGIN
INSERT INTO CONTACTS VALUES ('Nome1', '1', 1); INSERT
INSERT INTO CONTACTS VALUES ('Nome2', '2', 22);
INSERT INTO CONTACTS VALUES ('Nome3', '3', 333);
INSERT INTO CONTACTS VALUES ('Nome4', '4', 4444);
OPEN C_CONTACTS;
FETCH C_CONTACTS INTO R_CONTACTS;
WHILE C_CONTACTS%FOUND LOOP
DBMS_OUTPUT.put_line('NOME: '|| R_CONTACTS.FIRST_NAME);
DBMS_OUTPUT.put_line('SOBRENOME: '|| R_CONTACTS.LAST_NAME);
DBMS_OUTPUT.put_line('TEELFONE: '|| R_CONTACTS.PHONE);
END LOOP;
CLOSE C_CONTACTS;
END;
SELECT * FROM CONTACTS;
-- 3
CREATE OR REPLACE FUNCTION atividade_8(p_product_code IN VARCHAR2)
    RETURN NUMBER
IS 
    v_total_sales NUMBER := 0;
BEGIN 
    SELECT SUM(quantity)
    INTO v_total_sales
    FROM order_items oi
    JOIN products p using(product_id)
    WHERE p.product_id = p_product_code;
    RETURN v_total_sales;
END;
select atividade_8(32) FROM DUAL;