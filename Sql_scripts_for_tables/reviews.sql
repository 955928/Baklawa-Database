CREATE TABLE IF NOT EXISTS Reviews (
    review_id TEXT PRIMARY KEY,
    order_id TEXT FOREIGN KEY,
    review_score INTEGER,
    review_comment_message TEXT,
    review_criation_date TEXT,
    review_answer_timstamp TEXT,
    timestamp_feild_7 TEXT,
     
);
