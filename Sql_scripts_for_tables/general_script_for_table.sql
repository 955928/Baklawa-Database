CREATE TABLE IF NOT EXISTS P_Name_Translation(
    id_products_category_name TEXT PRIMARY KEY,
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    products_category_name TEXT,
    products_category_name TEXT

);

CREATE TABLE IF NOT EXISTS Products(
    product_id TEXT PRIMARY KEY,
    
    product_category_name TEXT,
    product_name_length INTEGER,
    product_description_length TEXT,
    product_photos_qty INTEGER,
    product_weight_g TEXT,
    product_length_cm INTEGER,
    product_height_cm INTEGER,
    product_width_com INTEGER

);

CREATE TABLE IF NOT EXISTS Order_items (
    order_item_id TEXT PRIMARY KEY,
    FOREIGN KEY (order_id) REFERENCES Order(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    order_status TEXT,
    order_purchased_time TEXT,
    order_APPROVED_time TEXT,
    order_delevired_carrier TEXT,
    order_delevired_customers TEXT,
    order_estimate_delivery TEXT
    
);

CREATE TABLE IF NOT EXISTS Sellers(
    id_sellers TEXT PRIMARY KEY,
    FOREIGN KEY (order_id) REFERENCES order_items(order_id),
    seller_zip_code INTEGER,
    seller_city TEXT,
    seller_State TEXT

);

CREATE TABLE IF NOT EXISTS Geolocalisation (
    uniq_id PRIMARY KEY,
    FOREIGN KEY (id_state) REFERENCES Sate_Name(id_state),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    geolocation_zip INTEGER,
    geolocation_lat FLOAT,
    geolocation_long FLOAT,
    geolocation_city TEXT,
    geolocation_state TEXT
);

CREATE TABLE IF NOT EXISTS Customer(
    customer id TEXT PRIMARY KEY,
    customer_uniq_id TEXT FOREIGN KEY,
    order_status TEXT,
    zip_code TEXT,
    city TEXT,
    state TEXT
     
);

CREATE TABLE IF NOT EXISTS Order(
    order_id TEXT PRIMARY KEY,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    order_purchased_time TEXT,
    order_approved_time TEXT,
    order_delivered_carrier TEXT,
    order_delivered_customer TEXT,
    order_estimate_delivery TEXT
    

);

CREATE TABLE IF NOT EXISTS Reviews(
    review_id TEXT PRIMARY KEY,
    FOREIGN KEY (order_id) REFERENCES Order(order_id),
    review_score INTEGER,
    review_comment_message TEXT,
    review_criation_date TEXT,
    review_answer_timstamp TEXT,
    timestamp_feild_7 TEXT
     
);

CREATE TABLE IF NOT EXISTS Payments(
    order_id TEXT PRIMARY KEY,
    payment_sequential INTEGER,
    payment_type TEXT,
    payment_installments INTEGER,
    payment_value FLOAT

);

CREATE TABLE IF NOT EXISTS State_Name(
    id_state TEXT PRIMARY KEY,
    state_name TEXT
     
);