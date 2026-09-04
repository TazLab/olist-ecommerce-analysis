-- create
CREATE TABLE customers (
    customer_id VARCHAR(50),
    customer_unique_id VARCHAR(50),
    customer_zip_code_prefix INT,
    customer_city VARCHAR(100),
    customer_state VARCHAR(10)
);
SELECT COUNT(*) FROM customers;


CREATE TABLE orders (
    order_id VARCHAR(50),
    customer_id VARCHAR(50),
    order_status VARCHAR(30),
    order_purchase_timestamp TIMESTAMP,
    order_approved_at TIMESTAMP,
    order_delivered_carrier_date TIMESTAMP,
    order_delivered_customer_date TIMESTAMP,
    order_estimated_delivery_date TIMESTAMP
);
SELECT COUNT(*) FROM orders;


CREATE TABLE order_items (
    order_id VARCHAR(50),
    order_item_id INT,
    product_id VARCHAR(50),
    seller_id VARCHAR(50),
    shipping_limit_date TIMESTAMP,
    price DECIMAL(10,2),
    freight_value DECIMAL(10,2)
);
SELECT COUNT(*) FROM order_items;


CREATE TABLE order_payments (
    order_id VARCHAR(50),
    payment_sequential INT,
    payment_type VARCHAR(50),
    payment_installments INT,
    payment_value DECIMAL(10,2)
);
SELECT COUNT(*) FROM order_payments;


CREATE TABLE order_reviews (
    review_id VARCHAR(50),
    order_id VARCHAR(50),
    review_score INT,
    review_comment_title VARCHAR(255),
    review_comment_message TEXT,
    review_creation_date TIMESTAMP,
    review_answer_timestamp TIMESTAMP
);
SELECT COUNT(*) FROM order_reviews;


CREATE TABLE products (
    product_id VARCHAR(50),
    product_category_name VARCHAR(100),
    product_name_length INT,
    product_description_length INT,
    product_photos_qty INT,
    product_weight_g INT,
    product_length_cm INT,
    product_height_cm INT,
    product_width_cm INT
);
SELECT COUNT(*) FROM products;


CREATE TABLE sellers (
    seller_id VARCHAR(50),
    seller_zip_code_prefix INT,
    seller_city VARCHAR(100),
    seller_state VARCHAR(10)
);
SELECT COUNT(*) FROM sellers;


CREATE TABLE product_category_translation (
    product_category_name VARCHAR(100),
    product_category_name_english VARCHAR(100)
);
SELECT COUNT(*) FROM product_category_translation;


CREATE TABLE geolocation (
    geolocation_zip_code_prefix INT,
    geolocation_lat DECIMAL(10,8),
    geolocation_lng DECIMAL(11,8),
    geolocation_city VARCHAR(100),
    geolocation_state VARCHAR(10)
);
SELECT COUNT(*) FROM geolocation;

-- view 11: state_geo_sales
-- purpose: combines state revenue with average lat/long for map visual
-- includes state, revenue, total_orders, latitude, longitude
-- used for: overview dashboard map (fixes USA/Brazil geocoding issue)
create view state_geo_sales as
select
    s.state,
    s.revenue,
    s.total_orders,
    g.latitude,
    g.longitude
from state_sales_analysis s
join (
    select
        geolocation_state as state,
        avg(geolocation_lat) as latitude,
        avg(geolocation_lng) as longitude
    from geolocation
    group by geolocation_state
) g
on s.state = g.state;

-- test
select * from state_geo_sales;



