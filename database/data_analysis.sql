use covid_analysis;
select * from final_covid_19;

#UNDERSTAND THE DATA
select count(*) from final_covid_19;
describe final_covid_19;

#Global Covid Situation
select sum(Confirmed) as Total_Cases,
sum(Deaths) as Total_deaths, 
sum(Recovered) as Total_recover,
round(sum(Deaths) * 100 / sum(Confirmed), 2) as Global_Death_Rate,
round(sum(Recovered) * 100 / sum(Confirmed), 2) as Global_Recovery_Rate from final_covid_19;

#Top 10 Most Affected Countries
select Country_Region, Confirmed as most_affected_countries from final_covid_19 order by Confirmed desc
limit 10;

#Countries With Highest Death Rate
select Country_Region, Confirmed, Deaths, round((Deaths * 100.0 / Confirmed), 2) as death_rate 
from final_covid_19 where Confirmed > 1000 order by death_rate desc limit 10;

#Recovery Performance by Country
select Country_Region, round((Recovered * 100.0 / Confirmed), 2) as recover_rate from final_covid_19
where Confirmed > 5000 order by recover_rate desc limit 10;

#Active Cases
select Country_Region, (Confirmed - Deaths - Recovered) as Active_Cases from final_covid_19 
order by Active_Cases desc limit 10;

#Continent-Level Pandemic Analysis
select Continent, sum(Confirmed) as Total_Cases, sum(Deaths) as Total_Deaths, 
round(sum(Deaths)* 100 / sum(Confirmed), 2) as Death_Rate from final_covid_19 group by Continent 
order by Total_Cases desc;

#Testing Efficiency
select Country_Region, Total_Tests, Population, round(Total_Tests * 100 / Population, 2) 
as Testing_Percent from final_covid_19 order by Testing_Percent desc;

#Cases Per Million
select Country_Region, round(Confirmed * 1000000.0 / Population, 2) as Cases_per_Million from 
final_covid_19 order by Cases_per_Million desc limit 10;

#Critical Pressure
select Country_Region, Critical, round(Critical * 100 / Confirmed, 2) as Critical_Rates 
from final_covid_19 where Confirmed > 5000 order by Critical_Rates desc;

#WHO Region Analysis
select WHO_Region, sum(Confirmed) as total_cases, sum(Deaths) as total_deaths from final_covid_19 
group by WHO_Region order by total_cases desc;

#Countries with High Infection Percentage
select Country_Region, round(Confirmed * 100 / Population, 2) as Infection_Percent from final_covid_19
order by Infection_Percent desc limit 15;

#Countries With Low Death Despite High Cases
select Country_Region, Confirmed, Deaths, round(Deaths * 100 / Confirmed, 2) as Death_Rate from 
final_covid_19 where Confirmed > 100000 order by Death_Rate asc limit 10;

#Countries with High Death Despite Low Cases
select Country_Region, Confirmed, Deaths, round(Deaths * 100 / Confirmed, 2) as Death_Rate from
final_covid_19 where Confirmed < 50000 order by Death_Rate desc;

#Critical Patients Per Million
select Country_Region, round(Critical * 1000000.0 / Population, 2) as Critical_Patients_Per_Million from 
final_covid_19 order by Critical_Patients_Per_Million desc;

#Severity Ratio (Critical vs Active)
select Country_Region, round(Critical * 100 / (Confirmed - Deaths - Recovered), 2) as Severity_Ratio
from final_covid_19 where Confirmed > 10000 order by Severity_Ratio desc;

#Testing Gap Indicator
select Country_Region, round(Confirmed * 100 / Total_Tests, 2) as Positive_Test_Rate from final_covid_19
where Total_Tests > 0 order by Positive_Test_Rate desc;

#Population vs Case Correlation
select Country_Region, Population, Confirmed from final_covid_19 where Population > 100000000 order by 
Confirmed asc;

#Small Countries With Extreme Outbreaks
select Country_Region, Population, Confirmed from final_covid_19 where Population < 5000000 order by
Confirmed desc;

#Death Burden Per Million
select Country_Region, round(Deaths * 1000000.0 / Population, 0) as Death_Per_Million from 
final_covid_19 order by Death_Per_Million desc;

#Recovery Efficiency vs Testing
select Country_Region, round((Recovered * 100 / Confirmed), 2) as Recovery_Rate,
round((Total_Tests * 100 / Population), 2) as Testing_Rate from final_covid_19 
order by Recovery_Rate desc;

#Share of Global Cases Per Country
select Country_Region, round(Confirmed * 100 / (select sum(Confirmed) from final_covid_19), 2) as
global_case_share from final_covid_19 order by global_case_share desc limit 10;

#Countries Dominating Death Contribution
select Country_Region, round(Deaths * 100 / (select sum(Deaths) from final_covid_19), 2) as 
global_death_share from final_covid_19 order by global_death_share desc limit 10;

#Continental Population Exposure
select Continent, round(sum(Confirmed) * 100 / sum(Population), 2) as exposure_percent from 
final_covid_19 group by Continent order by exposure_percent desc;

#Classify Countries by Risk Level
select Country_Region, 
case when (Confirmed * 100 / Population) > 5 then 'Extreme'
when (Confirmed * 100 / Population) > 2 then 'High'
when (Confirmed * 100 / Population) > 1 then 'Moderate'
else 'Low' end as Risk_Level from final_covid_19;

#Countries With High Tests But Still High Cases
select Country_Region, Total_Tests, Confirmed from final_covid_19 
order by Total_Tests desc, Confirmed desc;

#Fatality vs Critical Relationship
select Country_Region, round(Deaths * 100 / Critical, 2) as Deaths_Per_Critical from final_covid_19
where Critical > 100;

#Survival Ratio
select Country_Region, round((Recovered) * 100 / (Recovered + Deaths), 2) as Survival_Rate from 
final_covid_19 order by Survival_Rate desc;

#Test Utilization Efficiency
select Country_Region, round((Confirmed / Total_Tests), 4) as Test_Efficiency from final_covid_19 
where Total_Tests > 0 order by Test_Efficiency desc;

#Countries Carrying Majority of Active Burden
select Country_Region, (Confirmed - Deaths - Recovered) as Active_Burden from final_covid_19 
order by Active_Burden desc limit 15;

#Global Case Concentration Risk
select count(*) as total_countries, 
       sum(case 
       when Confirmed > (select avg(Confirmed) * 5 from final_covid_19) 
       then 1 
       else 0 
       end) as hyper_concentrated_countries 
from final_covid_19;

#Continent Dominance Ratio
select Continent, sum(Confirmed) as total_cases, round(sum(Confirmed)*100 / sum(sum(Confirmed)) over(), 2)
as global_dominance from final_covid_19 group by Continent order by global_dominance desc;

#Healthcare Failure Candidates
select Country_Region, Critical, Confirmed, round(Critical * 100 / Confirmed, 2) as Critical_Health_Ratio
from final_covid_19 order by Critical_Health_Ratio desc;

#Testing Sufficiency Score
select Country_Region, round(Total_Tests / Population, 2) as sufficiency_score from final_covid_19
order by sufficiency_score desc;

#Under-Testing Detector
select Country_Region, Confirmed, Total_Tests, round(Confirmed / nullif(Total_Tests, 0), 3) as 
positivity_proxy from final_covid_19 order by positivity_proxy desc;

#Critical-to-Death Conversion
select Country_Region, round(Deaths / nullif(Critical, 0), 2) as critical_to_death from final_covid_19
order by critical_to_death desc;

#Critical Resource Planning
select Continent, sum(Critical) as critical_patients from final_covid_19 group by Continent
order by critical_patients desc;

#Hidden Low-Population Crisis
select Country_Region, Population, Confirmed from final_covid_19 where Population < 100000000 
order by Confirmed desc;

#Best Pandemic Managers
select Country_Region, round((Recovered - Deaths) * 100 / Confirmed, 2) as pandemic_managers_percent
from final_covid_19 order by pandemic_managers_percent desc;

#Fatality Shock Index
select Country_Region, round(Deaths * 100 / Population, 4) as fatility_percent from final_covid_19
order by fatility_percent desc;

#Cases vs Testing Gap
select Country_Region, Confirmed - Total_Tests as Test_gap from final_covid_19 order by Test_gap desc;

#True Medical Severity Ratio
select Country_Region, round((Deaths + Critical) * 100 / Confirmed, 2) as true_severity_ratio from 
final_covid_19 order by true_severity_ratio desc;

#Preparedness Proxy
select Country_Region, round(Total_Tests * 100 / Population, 2) as preparedness_proxy from final_covid_19
order by preparedness_proxy desc;