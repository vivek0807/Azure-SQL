DECLARE @Hash TABLE(CHECKSUM BIGINT)
 
INSERT INTO @Hash 
SELECT DISTINCT CHECKSUM(*) AS CHECKSUM FROM Production.Product;

DECLARE @Hashrow TABLE(ROW INT, CHECKSUM BIGINT) 

INSERT INTO @Hashrow
SELECT ROW_NUMBER() OVER(ORDER BY CHECKSUM DESC) ROW, CHECKSUM FROM @Hash 

DECLARE @COUNTER INT
SET @COUNTER = 1

WHILE (@COUNTER <= 1840)
BEGIN
    DECLARE @CHECK BIGINT 
	SET @CHECK = (select checksum from @Hashrow where row = @COUNTER)

	DECLARE @COUNT_ROWS INT
	SET @COUNT_ROWS = (SELECT COUNT(*) FROM DBO.SCHEMATRACKER_STG WHERE CHECKSUM(*) = @CHECK)

	--PRINT(@COUNT_ROWS)

	IF @COUNT_ROWS > 1
	BEGIN
	SET  @COUNT_ROWS =  @COUNT_ROWS - 1
	DELETE TOP(@COUNT_ROWS) FROM DBO.SCHEMATRACKER_STG  WHERE CHECKSUM(*) = @CHECK
	END

    SET @COUNTER  = @COUNTER  + 1
END