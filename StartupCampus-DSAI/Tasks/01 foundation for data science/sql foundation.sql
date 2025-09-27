-- CASE 1
SELECT
  users.gender,
  COUNT(DISTINCT users.id) AS users_amount,
  COUNT(DISTINCT CASE WHEN order_items.status = 'Complete' THEN order_items.order_id END) AS orders_amount,
  COUNT(DISTINCT CASE WHEN order_items.status = 'Complete' THEN order_items.order_id END)/COUNT(DISTINCT users.id) AS avg_orders_per_user,
  SUM(CASE WHEN order_items.status = 'Complete' THEN products.retail_price END) AS money_spent,
  SUM(CASE WHEN order_items.status = 'Complete' THEN products.retail_price END)/COUNT(DISTINCT users.id) AS avg_money_spent_per_user
FROM
  bigquery-public-data.thelook_ecommerce.order_items AS order_items
INNER JOIN
  bigquery-public-data.thelook_ecommerce.products AS products
  ON order_items.product_id = products.id
INNER JOIN
  bigquery-public-data.thelook_ecommerce.users AS users
  ON order_items.user_id = users.id
GROUP BY
  users.gender
ORDER BY
  users.gender DESC

-- CASE 2
SELECT
  products.category,
  COUNT(CASE WHEN order_items.status = 'Complete' THEN order_items.order_id END) AS orders_amount,
FROM
  bigquery-public-data.thelook_ecommerce.products AS products
INNER JOIN
  bigquery-public-data.thelook_ecommerce.order_items AS order_items
  ON products.id = order_items.product_id
WHERE
  order_items.status = 'Complete'
GROUP BY
  products.category
ORDER BY
  orders_amount
LIMIT 5