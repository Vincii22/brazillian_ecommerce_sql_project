CREATE TABLE customers (
	customer_id VARCHAR(255),
	customer_unique_id VARCHAR(255),
	customer_zip_code_prefix INT,
	customer_city VARCHAR(50),
	customer_state CHAR(3)
);

CREATE TABLE payments (
	order_id VARCHAR(255),
	payment_sequential INT,
	payment_type VARCHAR(255),
	payment_installments INT,
	payment_value NUMERIC
)

CREATE TABLE geolocation (
	geolocation_zip_code_prefix INT,
	geolocation_lat NUMERIC,
	geolocation_lng NUMERIC,
	geolocation_city VARCHAR(50),
	geolocation_state VARCHAR(50)
);

CREATE TABLE order_items (
	order_id VARCHAR(255),
	order_item_id INT,
	product_id VARCHAR(255),
	seller_id VARCHAR(255),
	shipping_limit_date TIMESTAMP,
	price NUMERIC,
	freight_value NUMERIC
);

CREATE TABLE order_reviews (
	review_id VARCHAR(255),
	order_id VARCHAR(255),
	review_score INT,
	review_comment_title VARCHAR(255),
	review_comment_message VARCHAR(255),
	review_creation_date TIMESTAMP,
	review_answer_timestamp TIMESTAMP
);

CREATE TABLE products (
	product_id VARCHAR(50),
	product_category_name VARCHAR(50),
	product_name_length INT,
	product_description_length INT,
	product_photos_qty INT,
	product_weight_g INT,
	product_length_cm INT,
	product_height_cm INT, 
	product_width_cm INT
);

CREATE TABLE sellers (
	seller_id VARCHAR(50),
	seller_zip_code_prefix INT,
	seller_city VARCHAR(50),
	seller_state VARCHAR(50)
);

CREATE TABLE category_name (
	product_category_name VARCHAR(50),
	product_category_name_english VARCHAR(50)
);

CREATE TABLE orders (
	order_id VARCHAR(50),
	customer_id VARCHAR(50),
	order_status VARCHAR(50),
	order_purchase_timestamp TIMESTAMP,
	order_approved_at TIMESTAMP,
	order_delivered_carrier_date TIMESTAMP,
	order_delivered_customer_date TIMESTAMP,
	order_estimated_delivery_date TIMESTAMP
);
