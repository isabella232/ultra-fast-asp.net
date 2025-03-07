﻿CHECKPOINT
DBCC DROPCLEANBUFFERS
GO

SELECT v1, v2
	FROM ind
	WHERE v2 BETWEEN 1001 AND 1100
GO

CREATE UNIQUE NONCLUSTERED INDEX IndV2IX ON ind(v2)
	INCLUDE (v3)
	WITH (DROP_EXISTING = ON)
GO

DBCC SHOWCONTIG (ind) WITH ALL_INDEXES
GO