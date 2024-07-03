-- Создаем временную таблицу для загрузки данных из CSV
CREATE TEMP TABLE temp_auction_data (
    advNum INTEGER,
    certificateNumber TEXT,
    parcel TEXT,
    winningBid NUMERIC,
    faceAmount TEXT,
    bidderId INTEGER,
    bidderName TEXT
);

-- Копируем данные из CSV файла в временную таблицу
COPY temp_auction_data
FROM :v1
WITH (FORMAT csv, HEADER true);

-- Вставляем данные из временной таблицы в целевую таблицу с добавлением недостающих полей
INSERT INTO public."auctionArchiveResults" (
    county, year, "advNum", "certificateNumber", parcel, "winningBid", "faceAmount", "bidderId", "bidderName"
)
SELECT
    :v2 AS county,
    :v3 AS year,
    advNum,
    CASE 
        WHEN certificateNumber = 'NULL' THEN NULL
        ELSE CAST(certificateNumber AS INTEGER)
    END AS certificateNumber,
    REPLACE(parcel, '-', ''),
    winningBid,
    REPLACE(REPLACE(faceAmount, '$', ''), ',', '')::NUMERIC,
    bidderId,
    UPPER(
        CASE 
            WHEN RIGHT(bidderName, 1) = '.' THEN LEFT(bidderName, LENGTH(bidderName) - 1)
            ELSE bidderName
        END
    ) AS bidderName
FROM temp_auction_data;

-- Удаляем временную таблицу
DROP TABLE temp_auction_data;