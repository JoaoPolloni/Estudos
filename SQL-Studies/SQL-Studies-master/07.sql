CREATE OR REPLACE FUNCTION total_vendas_30_dias (
    v_product_id IN NUMBER
) RETURN NUMBER
AS
    v_total_vendas NUMBER := 0;
BEGIN
    SELECT SUM(oi.quantity)
    INTO v_total_vendas
    FROM orders o
    INNER JOIN order_items oi ON o.order_id = oi.order_id
    WHERE oi.product_id = v_product_id
    AND o.order_date >= SYSDATE - 30;

    RETURN v_total_vendas;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 0;
END;

SELECT total_vendas_30_dias(1) FROM dual;
