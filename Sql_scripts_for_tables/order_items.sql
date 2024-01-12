CREATE TABLE IF NOT EXISTS order_items (
    order_item_id TEXT PRIMARY KEY,
    order_id TEXT FOREIGN KEY,
    order_status TEXT,
    order_purchased_time TEXT,
    order_APPROVED_time TEXT,
     order_delevired_carrier TEXT,
     order_delevired_customers TEXT,
     order_estimate_delivery TEXT,
);
