COPY public.tax24 FROM '/var/lib/postgresql/local/polk24.csv' DELIMITER ',' CSV HEADER;
COPY public.tax24 FROM '/var/lib/postgresql/local/dixi24.csv' DELIMITER ',' CSV HEADER;
COPY public.tax24 FROM '/var/lib/postgresql/local/putn24.csv' DELIMITER ',' CSV HEADER;