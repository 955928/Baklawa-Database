CREATE TABLE IF NOT EXISTS customers_table (
    customer id TEXT PRIMARY KEY,
    customer_uniq_id TEXT FOREIGN KEY,
    order_status TEXT,
    zip_code TEXT,
    city TEXT,
    state TEXT,
     
);
