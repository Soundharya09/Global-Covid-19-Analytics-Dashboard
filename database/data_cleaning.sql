use covid_analysis;
select * from final_covid_19;

#RENAME COLUMNS
alter table final_covid_19 change column `Country/Region` `Country_Region` text;
alter table final_covid_19 change column `New cases` `New_cases` double;
alter table final_covid_19 change column `New deaths` `New_deaths` double;
alter table final_covid_19 change column `New recovered` `New_recovered` double;
alter table final_covid_19 change column `Deaths / 100 Cases` `Deaths_per_100_Cases` double;
alter table final_covid_19 change column `Recovered / 100 Cases` `Recovered_per_100_Cases` double;
alter table final_covid_19 change column `Deaths / 100 Recovered` `Deaths_per_100_Recovered` double;
alter table final_covid_19 change column `Confirmed last week` `Confirmed_last_week` double;
alter table final_covid_19 change column `1 week change` `one_week_change` double;
alter table final_covid_19 change column `1 week % increase` `one_week_percent_increase` double;
alter table final_covid_19 change column `WHO Region_x` `WHO_Region_x` text;
alter table final_covid_19 change column `TotalCases` `Total_Cases` double;
alter table final_covid_19 change column `NewCases` `New_Cases` text;
alter table final_covid_19 change column `TotalDeaths` `Total_Deaths` double;
alter table final_covid_19 change column `NewDeaths` `New_Deaths` text;
alter table final_covid_19 change column `TotalRecovered` `Total_Recovered` double;
alter table final_covid_19 change column `NewRecovered` `New_Recovered` text;
alter table final_covid_19 change column `ActiveCases` `Active_Cases` double;
alter table final_covid_19 change column `Serious,Critical` `Critical` double;
alter table final_covid_19 change column `Tot Cases/1M pop` `Tot_Cases_per_one_million_pop` double;
alter table final_covid_19 change column `Deaths/1M pop` `Deaths_per_one_million_pop` double;
alter table final_covid_19 change column `TotalTests` `Total_Tests` text;
alter table final_covid_19 change column `Tests/1M pop` `Tests_per_one_million_pop` text;
alter table final_covid_19 change column `WHO Region_y` `WHO_Region_y` text;

#DROP DUPLICATE COLUMNS 
alter table final_covid_19 drop NewCases;
alter table final_covid_19 drop NewDeaths;
alter table final_covid_19 drop NewRecovered;

#FIND NULL VALUES
select count(*) as Country_Region from final_covid_19 where Country_Region is null;
select count(*) as Confirmed from final_covid_19 where Confirmed is null;
select count(*) as Deaths from final_covid_19 where Deaths is null;
select count(*) as Recovered from final_covid_19 where Recovered is null;
select count(*) as New_cases from final_covid_19 where New_cases is null;
select count(*) as New_deaths from final_covid_19 where New_deaths is null;
select count(*) as New_recovered from final_covid_19 where New_recovered is null;
select count(*) as Deaths_per_100_Cases from final_covid_19 where Deaths_per_100_Cases is null;
select count(*) as Recovered_per_100_Cases from final_covid_19 where Recovered_per_100_Cases is null;
select count(*) as Deaths_per_100_Recovered from final_covid_19 where Deaths_per_100_Recovered is null;
select count(*) as Confirmed_last_week from final_covid_19 where Confirmed_last_week is null;
select count(*) as one_week_change from final_covid_19 where one_week_change is null;
select count(*) as one_week_percent_increase from final_covid_19 where one_week_percent_increase is null;
select count(*) as WHO_Region_x from final_covid_19 where WHO_Region_x is null;
select count(*) as Continent from final_covid_19 where Continent is null;
select count(*) as Population from final_covid_19 where Population is null;
select count(*) as Total_Cases from final_covid_19 where Total_Cases is null;
select count(*) as Total_Deaths from final_covid_19 where Total_Deaths is null;
select count(*) as Total_Recovered from final_covid_19 where Total_Recovered is null;
select count(*) as Active_Cases from final_covid_19 where Active_Cases is null;
select count(*) as Critical from final_covid_19 where Critical is null;
select count(*) as Tot_Cases_per_one_million_pop from final_covid_19 where Tot_Cases_per_one_million_pop is null;
select count(*) as Deaths_per_one_million_pop from final_covid_19 where Deaths_per_one_million_pop is null;
select count(*) as Total_Tests from final_covid_19 where Total_Tests is null;
select count(*) as Tests_per_one_million_pop from final_covid_19 where Tests_per_one_million_pop is null;
select count(*) as WHO_Region_y from final_covid_19 where WHO_Region_y is null;

#TRIM EMPTY CELLS
select Total_Tests from final_covid_19 where Total_Tests = " ";
update final_covid_19 set Total_Tests = 0.0 where trim(Total_Tests) = " ";

select Tests_per_one_million_pop from final_covid_19 where Tests_per_one_million_pop = " ";
update final_covid_19 set Tests_per_one_million_pop = 0.0 where trim(Tests_per_one_million_pop) = " ";

select WHO_Region_y from final_covid_19 where WHO_Region_y = " ";
update final_covid_19 set WHO_Region_y = "Not Available" where trim(WHO_Region_y) = " ";

select Country_Region from final_covid_19 where Country_Region = " ";
select Confirmed from final_covid_19 where Confirmed = " ";
select Deaths from final_covid_19 where Deaths = " ";
select Recovered from final_covid_19 where Recovered = " ";
select Active from final_covid_19 where Active = " ";
select New_cases from final_covid_19 where New_cases = " ";
select New_deaths from final_covid_19 where New_deaths = " ";
select New_recovered from final_covid_19 where New_recovered = " ";
select Deaths_per_100_Cases from final_covid_19 where Deaths_per_100_Cases = " ";
select Recovered_per_100_Cases from final_covid_19 where Recovered_per_100_Cases = " ";
select Deaths_per_100_Recovered from final_covid_19 where Deaths_per_100_Recovered = " ";
select Confirmed_last_week from final_covid_19 where Confirmed_last_week = " ";
select one_week_change from final_covid_19 where one_week_change = " ";
select one_week_percent_increase from final_covid_19 where one_week_percent_increase = " ";
select WHO_Region_x from final_covid_19 where WHO_Region_x = " ";
select Continent from final_covid_19 where Continent = " ";
select Population from final_covid_19 where Population = " ";
select Total_Cases from final_covid_19 where Total_Cases = " ";
select Total_Deaths from final_covid_19 where Total_Deaths = " ";
select Total_Recovered from final_covid_19 where Total_Recovered = " ";
select Active_Cases from final_covid_19 where Active_Cases = " ";
select Critical from final_covid_19 where Critical = " ";
select Tot_Cases_per_one_million_pop from final_covid_19 where Tot_Cases_per_one_million_pop = " ";
select Deaths_per_one_million_pop from final_covid_19 where Deaths_per_one_million_pop = " ";

#CHANGE DATATYPES 
alter table final_covid_19 modify column `Total_Tests` double;
alter table final_covid_19 modify column `Tests_per_one_million_pop` double;
alter table final_covid_19 modify column `Country_Region` varchar(60);
alter table final_covid_19 modify column `Continent` varchar(60);

#COMPARE TWO COLUMNS 
select count(*) as same_value from final_covid_19 where WHO_Region_x = WHO_Region_y;
select count(*) as diff_value from final_covid_19 where WHO_Region_x <> WHO_Region_y;

#MERGE TWO COLUMNS TO ONE FINAL COLUMN
alter table final_covid_19 add column WHO_Region varchar(50);
update final_covid_19 set WHO_Region = coalesce(WHO_Region_x, WHO_Region_y);
alter table final_covid_19 drop WHO_Region_x; 
alter table final_covid_19 drop WHO_Region_y; 

#FIND DUPLICATE ROWS 
select Country_Region, count(*) from final_covid_19 group by Country_Region having count(*) > 1;
select Confirmed, count(*) from final_covid_19 group by Confirmed having count(*) > 1;
select Deaths, count(*) from final_covid_19 group by Deaths having count(*) > 1;
select Recovered, count(*) from final_covid_19 group by Recovered having count(*) > 1;
select Active, count(*) from final_covid_19 group by Active having count(*) > 1;
select New_cases, count(*) from final_covid_19 group by New_cases having count(*) > 1;
select New_deaths, count(*) from final_covid_19 group by New_deaths having count(*) > 1;
select New_recovered, count(*) from final_covid_19 group by New_recovered having count(*) > 1;
select Deaths_per_100_Cases, count(*) from final_covid_19 group by Deaths_per_100_Cases having count(*) > 1;
select Recovered_per_100_Cases, count(*) from final_covid_19 group by Recovered_per_100_Cases having count(*) > 1;
select Deaths_per_100_Recovered, count(*) from final_covid_19 group by Deaths_per_100_Recovered having count(*) > 1;
select Confirmed_last_week, count(*) from final_covid_19 group by Confirmed_last_week having count(*) > 1;
select one_week_change, count(*) from final_covid_19 group by one_week_change having count(*) > 1;
select one_week_percent_increase, count(*) from final_covid_19 group by one_week_percent_increase having count(*) > 1;
select Continent, count(*) from final_covid_19 group by Continent having count(*) > 1;
select Population, count(*) from final_covid_19 group by Population having count(*) > 1;
select Total_Cases, count(*) from final_covid_19 group by Total_Cases having count(*) > 1;
select Total_Deaths, count(*) from final_covid_19 group by Total_Deaths having count(*) > 1;
select Total_Recovered, count(*) from final_covid_19 group by Total_Recovered having count(*) > 1;
select Active_Cases, count(*) from final_covid_19 group by Active_Cases having count(*) > 1;
select Critical, count(*) from final_covid_19 group by Critical having count(*) > 1;
select Tot_Cases_per_one_million_pop, count(*) from final_covid_19 group by Tot_Cases_per_one_million_pop having count(*) > 1;
select Deaths_per_one_million_pop, count(*) from final_covid_19 group by Deaths_per_one_million_pop having count(*) > 1;
select Total_Tests, count(*) from final_covid_19 group by Total_Tests having count(*) > 1;
select Tests_per_one_million_pop, count(*) from final_covid_19 group by Tests_per_one_million_pop having count(*) > 1;
select WHO_Region, count(*) from final_covid_19 group by WHO_Region having count(*) > 1;

#CREATE PRIMARY KEY
alter table final_covid_19 add Id int auto_increment primary key first;

#FIND MISMATCH COLUMNS
select count(*) as same_data from final_covid_19 where Active <> Active_Cases;
select Country_Region, Active, Active_Cases, (Confirmed - Deaths - Recovered) AS Calculated_Active
from final_covid_19 where Active <> Active_Cases;
alter table final_covid_19 drop Active_Cases;

select count(*) as same_data from final_covid_19 where Confirmed <> Total_Cases;
alter table final_covid_19 drop Total_Cases;

select count(*) as same_data from final_covid_19 where Deaths <> Total_Deaths;
alter table final_covid_19 drop Total_Deaths;

select count(*) as same_data from final_covid_19 where Recovered <> Total_Recovered;
alter table final_covid_19 drop Total_Recovered;

update final_covid_19 set Active = Confirmed - Deaths - Recovered;
alter table final_covid_19 drop Active;

#DETECT IMPOSSIBLE NUMBERS
select count(*) from final_covid_19 where Deaths > Confirmed or Recovered > Confirmed or Active > Confirmed;
select count(Country_Region) as data from final_covid_19 where Confirmed > Population;
create view Death_Rate as select Country_Region, round((Deaths * 100.0 / Confirmed), 2) from final_covid_19; # -> Deaths_per_100_Cases
create view Recover_Rate as select Country_Region, round((Recovered * 100.0 /  Confirmed), 2) from final_covid_19; # -> Recovered_per_100_Cases
create view Death_Recover_Rate as select Country_Region, round((Deaths * 100.0 / Recovered), 2) from final_covid_19; # -> Deaths_per_100_Recovered
alter table final_covid_19 drop Deaths_per_100_Cases;
alter table final_covid_19 drop Recovered_per_100_Cases;
alter table final_covid_19 drop Deaths_per_100_Recovered;

#CHANGE DATATYPE
alter table final_covid_19 modify Country_Region varchar(60) not null;
alter table final_covid_19 modify Confirmed bigint not null;
alter table final_covid_19 modify Deaths bigint not null;
alter table final_covid_19 modify Recovered bigint not null;
alter table final_covid_19 modify Active bigint not null;
alter table final_covid_19 modify New_cases bigint not null;
alter table final_covid_19 modify New_deaths bigint not null;
alter table final_covid_19 modify New_recovered bigint not null;
alter table final_covid_19 modify Confirmed_last_week bigint not null;
alter table final_covid_19 modify one_week_change bigint not null;
alter table final_covid_19 modify one_week_percent_increase bigint not null;
alter table final_covid_19 modify Continent varchar(60) not null;
alter table final_covid_19 modify Population bigint not null;
alter table final_covid_19 modify Critical bigint not null;
alter table final_covid_19 modify Tot_Cases_per_one_million_pop bigint not null;
alter table final_covid_19 modify Deaths_per_one_million_pop bigint not null;
alter table final_covid_19 modify Total_Tests bigint not null;
alter table final_covid_19 modify Tests_per_one_million_pop bigint not null;
alter table final_covid_19 modify WHO_Region varchar(50) not null;

#MAKE UNIQUE CONSTRAINT
alter table final_covid_19 add constraint UK_Country unique (Country_Region);

#REMOVE DERIVED COLUMNS
select Confirmed - Confirmed_last_week from final_covid_19; # -> one_week_change
alter table final_covid_19 drop one_week_change;

select (Confirmed - Confirmed_last_week) * 100 / Confirmed_last_week from final_covid_19; # -> one_week_percent_increase
alter table final_covid_19 drop one_week_percent_increase;

create view Total_Cases_Per_Million as select round(Confirmed * 1000000.0 / Population,2) 
from final_covid_19; # -> Tot_Cases_per_one_million_pop
alter table final_covid_19 drop Tot_Cases_per_one_million_pop;

create view Deaths_Cases_Per_Million as select round(Deaths * 1000000.0 / Population,2) 
from final_covid_19; # -> Deaths_per_one_million_pop
alter table final_covid_19 drop Deaths_per_one_million_pop;

create view Tests_Per_Million as select round(Total_Tests * 1000000.0 / Population,2) 
from final_covid_19; # -> Tests_per_one_million_pop
alter table final_covid_19 drop Tests_per_one_million_pop;

alter table final_covid_19 drop New_cases;
alter table final_covid_19 drop New_deaths;
alter table final_covid_19 drop New_recovered;
alter table final_covid_19 drop Confirmed_last_week;

#CHANGE DATATYPE
alter table final_covid_19 modify Confirmed bigint not null;
alter table final_covid_19 modify Deaths bigint not null;
alter table final_covid_19 modify Recovered bigint not null;
alter table final_covid_19 modify Critical bigint not null;
alter table final_covid_19 modify Total_Tests bigint not null;
alter table final_covid_19 modify Country_Region varchar(100) not null;
alter table final_covid_19 modify Continent varchar(30) not null;
alter table final_covid_19 modify WHO_Region varchar(30) not null;