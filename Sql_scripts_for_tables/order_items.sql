CREATE TABLE IF NOT EXISTS order_items (
    order_item_id TEXT PRIMARY KEY,
    FOREIGN KEY (order_id) REFERENCES Order(order_id)
    
    order_status TEXT,
    order_purchased_time TEXT,
    order_APPROVED_time TEXT,
    order_delevired_carrier TEXT,
    order_delevired_customers TEXT,
    order_estimate_delivery TEXT,
    
);
CREATE TABLE IF NOT EXISTS customers_table (
    customer id TEXT PRIMARY KEY,
    FOREIGN KEY (customer_uniq_id ) REFERENCES Order(order_id)
    customer_uniq_id TEXT FOREIGN KEY,
    order_status TEXT,
    zip_code TEXT,
    city TEXT,
    state TEXT,
     
);
CREATE TABLE IF NOT EXISTS State_Name (
    id-state TEXT PRIMARY KEY,
    state_name TEXT,
     
);
CREATE TABLE IF NOT EXISTS Geolocalisation (
    uniq_id PRIMARY KEY,
    id_state TEXT FOREIGN KEY,
    geolocation_zip INTEGER,
    geolocation_lat FLOAT,
    geolocation_long FLOAT,
    geolocation_city TEXT,
    geolocation_state TEXT,
);
CREATE TABLE IF NOT EXISTS Reviews (
    review_id TEXT PRIMARY KEY,
    order_id TEXT FOREIGN KEY,
    review_score INTEGER,
    review_comment_message TEXT,
    review_criation_date TEXT,
    review_answer_timstamp TEXT,
    timestamp_feild_7 TEXT,
     
);

