-- a coluna "prc" calcula a porcentagem usando a coluna data_lenght e data_free
-- se tiver acima de 30% esta bem fragmentada 

SELECT 
ENGINE, 
TABLE_SCHEMA, 
TABLE_NAME, 
TABLE_ROWS, 
 Round( DATA_LENGTH/1024/1024) as data_length , 
 round(INDEX_LENGTH/1024/1024) as index_length,
round(DATA_FREE/ 1024/1024) as data_free,
(DATA_FREE*100/DATA_LENGTH) as prc 
FROM INFORMATION_SCHEMA.TABLES WHERE (DATA_FREE*100/DATA_LENGTH);

