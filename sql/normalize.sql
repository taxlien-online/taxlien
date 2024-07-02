    
UPDATE "auctionArchiveResults"
    SET
    "bidderName" = REPLACE(REPLACE("bidderName", ', LLC', ' LLC'), ', INC', ' INC');
    
UPDATE "auctionArchiveResults"
    SET
    "bidderName" = REPLACE(REPLACE("bidderName", ',  LLC', ' LLC'), ',  INC', ' INC');
    
    
    
/*UPDATE "auctionArchiveResults"
SET
    "parcel" = REPLACE(parcel, '-', ''),
    "bidderName" = UPPER(
        CASE
            WHEN RIGHT("bidderName", 1) = '.' THEN LEFT("bidderName", LENGTH("bidderName") - 1)
            ELSE "bidderName"
        END
    );
    */
