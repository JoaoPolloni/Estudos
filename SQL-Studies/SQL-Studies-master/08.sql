CREATE OR REPLACE FUNCTION quantidade_total_vendas (
    v_codigo_produto IN NUMBER
) RETURN NUMBER
AS
    v_total_vendas NUMBER := 0;
BEGIN
    SELECT SUM(quantity)
    INTO v_total_vendas
    FROM order_items
    WHERE product_id = v_codigo_produto;

    RETURN v_total_vendas;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 0;
END;

SELECT quantidade_total_vendas(1) from dual;