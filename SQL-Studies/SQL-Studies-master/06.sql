CREATE OR REPLACE FUNCTION calcular_media (
    v_parametros IN NUMBER
) RETURN NUMBER
AS
    v_soma NUMBER := 0;
    v_qtde_parametros NUMBER := 0;
BEGIN
    FOR i IN 1..v_parametros.COUNT LOOP
        v_soma := v_soma + v_parametros(i);
        v_qtde_parametros := v_qtde_parametros + 1;
    END LOOP;

    IF v_qtde_parametros > 0 THEN
        RETURN v_soma / v_qtde_parametros;
    ELSE
        RETURN NULL;
    END IF;
END;


SELECT calcular_media(4, 6, 8, 10) FROM dual;