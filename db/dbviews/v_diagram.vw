CREATE OR REPLACE FORCE EDITIONABLE VIEW "V_DIAGRAM" ("OPERATION", "COUNT_OPERATION") AS 
  select operation operation, count(operation) count_operation from audit_trail group by operation
/
