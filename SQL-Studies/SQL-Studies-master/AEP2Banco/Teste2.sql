-- CURSOR ---------------------------------------------------------------------------------------------------------------------------
DECLARE   
    CURSOR c_product   
    IS   
    SELECT   
    	product_name, list_price  
    FROM   
    	products   
    ORDER BY   
    	list_price DESC;   
BEGIN   
    FOR r_product IN (   
    	SELECT product_name, list_price   
    	FROM products   
   	 	ORDER BY list_price DESC   
    )   
    LOOP   
    	dbms_output.put_line( r_product.product_name || ': $' || r_product.list_price );   
	END LOOP;   
END;  
 
 
 
-- STORED PROCEDURE ----------------------------------------------------------------------------------------------------------------- 
CREATE OR REPLACE PROCEDURE print_contact( in_customer_id NUMBER )   
	IS   
    r_contact contacts%ROWTYPE;   
BEGIN   
	SELECT * INTO r_contact FROM contacts   
	WHERE customer_id = in_customer_id;  
	dbms_output.put_line( r_contact.first_name || ' ' || r_contact.last_name || '<' || r_contact.email ||'>' );  
  
EXCEPTION   
    WHEN OTHERS THEN   
    dbms_output.put_line( SQLERRM );   
END; 
 
EXEC print_contact(100); 
 
 
-- FUNCTION ------------------------------------------------------------------------------------------------------------------------- 
CREATE OR REPLACE FUNCTION get_total_sales( in_year PLS_INTEGER )   
    RETURN NUMBER   
    IS l_total_sales NUMBER := 0;   
  
BEGIN   
    SELECT SUM(unit_price * quantity) INTO l_total_sales FROM order_items INNER JOIN orders USING (order_id)  
	WHERE status = 'Shipped' GROUP BY EXTRACT(YEAR FROM order_date) HAVING EXTRACT(YEAR FROM order_date) = in_year;   
  
RETURN l_total_sales;   
END; 
 
SELECT get_total_sales(2017) FROM dual;

