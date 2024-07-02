DELETE FROM bidders;

INSERT INTO bidders
SELECT "bidderId" as "id",'' as "name", count(*) as "total_count", sum("faceAmount") as "total_amount", sum("faceAmount"*(18-"winningBid")) as "total_bonus", 0 as "avg_bid" FROM public."auctionArchiveResults"
GROUP BY "bidderId";

/*
INSERT INTO bidders
SELECT "bidderName" as "name" FROM public."auctionArchiveResults"
ON DUPLICATE KEY UPDATE
GROUP BY "bidderName";


INSERT INTO bidders (name)
SELECT "bidderId" as "id", "bidderName" as "name"
FROM public."auctionArchiveResults"
GROUP BY "bidderName"
ON CONFLICT (name) 
DO UPDATE SET "name" = "bidderName";
*/


UPDATE bidders SET
    "avg_apr"="total_bonus"::numeric/"total_amount";


UPDATE bidders
SET "name" = "bidderName"
FROM public."auctionArchiveResults" 
WHERE bidders."id" = "auctionArchiveResults"."bidderId";