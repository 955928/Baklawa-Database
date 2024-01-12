CREATE TABLE IF NOT EXISTS Geolocalisation (
    uniq_id PRIMARY KEY,
    id_state TEXT FOREIGN KEY,
    geolocation_zip INTEGER,
    geolocation_lat FLOAT,
    geolocation_long FLOAT,
    geolocation_city TEXT,
    geolocation_state TEXT,
);
