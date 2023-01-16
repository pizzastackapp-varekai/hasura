CREATE OR REPLACE FUNCTION sum_by_order(orders_row orders)
RETURNS NUMERIC AS $$
  SELECT SUM(m.price * om.amount)
  FROM orders_menu as om 
  JOIN menu as m ON om.menu_id=m.id
  WHERE order_id='1b92ee63-2e42-4a62-839e-3848e90715b0'
$$ LANGUAGE sql STABLE;
