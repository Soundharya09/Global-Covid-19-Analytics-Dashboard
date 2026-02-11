create database covid_analysis;
use covid_analysis;
select * from final_covid_19;

ALTER DATABASE covid_analysis
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

SELECT CONCAT(
  'ALTER TABLE `', table_name, '` CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;'
)
FROM information_schema.tables
WHERE table_schema = 'covid_analysis';