CREATE MATERIALIZED VIEW IF NOT EXISTS "product_info_m-view" AS
SELECT product.product_name, product.product_description, product_type.product_category
FROM product
JOIN product_type
ON product.product_type_id = product_type.product_type_id;