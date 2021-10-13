/*
Covid 19 Data Exploration 
Skills used: Joins, CTE's, Temp Tables, Windows Functions, Aggregate Functions, Creating Views, Converting Data Types
*/


-- Exploring Total Cases vs Total Deaths ; Shows likelihood of dying if you contract covid in your country

Select Location, date, total_cases,total_deaths, (total_deaths/total_cases)*100 as Death_Percentage
From Portfolio_Project..['covid_deaths_1 - mssql$']
Where location = 'Rwanda'
and continent is not null 
order by 1,2


-- Exploring Total Cases vs Population ; Shows what percentage of population infected with Covid

Select Location, date, Population, total_cases,  (total_cases/population)*100 as PercentPopulationInfected
From Portfolio_Project..['covid_deaths_1 - mssql$']
Where location = 'Rwanda'
order by 1,2


-- Exploring Countries with Highest Infection Rate compared to Population

Select Location, Population, MAX(total_cases) as HighestInfectionCount,  Max((total_cases/population))*100 as PercentPopulationInfected
From Portfolio_Project..['covid_deaths_1 - mssql$']
Where continent is not null 
Group by Location, Population
order by PercentPopulationInfected desc


-- Exploring Countries with Highest Death Count per Population

Select location, population,MAX(cast(Total_deaths as int)) AS Highest_Death_Count, MAX((cast(Total_deaths as int)/population))*100 AS Death_Rate
From Portfolio_Project..['covid_deaths_1 - mssql$']
Where continent is not null 
GROUP BY location, population
ORDER BY Death_Rate DESC 



-- BREAKING THINGS DOWN BY CONTINENT ; Showing contintents with the highest death count per population

Select continent, MAX(cast(Total_deaths as int)) AS Total_Death_Count
From Portfolio_Project..['covid_deaths_1 - mssql$']
Where continent is not null 
GROUP BY continent
ORDER BY Total_Death_Count DESC 



-- GLOBAL NUMBERS ; showing total cases, death count and the death rate from Covid19

Select SUM(new_cases) as total_cases, SUM(cast(new_deaths as int)) as total_deaths, SUM(cast(new_deaths as int))/SUM(New_Cases)*100 as DeathPercentage
From Portfolio_Project..['covid_deaths_1 - mssql$']
where continent is not null 
order by 1,2



-- Exploring Total Population vs Vaccinations ; Shows Percentage of Population that has recieved at least one Covid Vaccine

Select death.location, death.continent, death.date, death.population, vaccine.new_vaccinations,
  SUM(CONVERT(int,vaccine.new_vaccinations)) OVER (PARTITION BY death.location ORDER BY death.location, death.date) AS Rolling_people_vaccinated
From Portfolio_Project..['covid_deaths_1 - mssql$'] AS death
JOIN Portfolio_Project..covid_vaccinations$ AS vaccine
     on  death.location = vaccine.location
     and death.date = vaccine.date
Where death.continent is not null 
ORDER BY 1,4


-- Using CTE to perform Calculation on Partition By in previous query

With PopvsVac 
as
(
Select death.location, death.continent, death.date, death.population, vaccine.new_vaccinations,
  SUM(CONVERT(int,vaccine.new_vaccinations)) OVER (PARTITION BY death.location ORDER BY death.location, death.date) AS Rolling_people_vaccinated
From Portfolio_Project..['covid_deaths_1 - mssql$'] AS death
JOIN Portfolio_Project..covid_vaccinations$ AS vaccine
     on  death.location = vaccine.location
     and death.date = vaccine.date
Where death.continent is not null 
--ORDER BY 2,3  
)
Select *, (Rolling_people_vaccinated/Population)*100 AS percentage_people_vaccinated
From PopvsVac


-- Using Temp Table to perform Calculation on Partition By in previous query

DROP Table if exists #Percent_Population_Vaccinated
Create Table #Percent_Population_Vaccinated
(
Continent nvarchar(255),
Location nvarchar(255),
Date datetime,
Population numeric,
New_vaccinations numeric,
Rolling_People_Vaccinated numeric
)

Insert into #Percent_Population_Vaccinated
Select death.location, death.continent, death.date, death.population, vaccine.new_vaccinations,
  SUM(CAST(vaccine.new_vaccinations as numeric)) OVER (PARTITION BY death.location ORDER BY death.location, death.date) AS Rolling_people_vaccinated
From Portfolio_Project..['covid_deaths_1 - mssql$'] AS death
JOIN Portfolio_Project..covid_vaccinations$ AS vaccine
     on  death.location = vaccine.location
     and death.date = vaccine.date

Select *, (Rolling_People_Vaccinated/Population)*100
From #Percent_Population_Vaccinated
Where Continent is not null


-- Creating View to store data for later visualizations

CREATE VIEW PercentPopulation_Vaccinated AS
Select death.location, death.continent, death.date, death.population, vaccine.new_vaccinations,
  SUM(CONVERT(int,vaccine.new_vaccinations)) OVER (PARTITION BY death.location ORDER BY death.location, death.date) AS Rolling_people_vaccinated
From Portfolio_Project..['covid_deaths_1 - mssql$'] AS death
JOIN Portfolio_Project..covid_vaccinations$ AS vaccine
     on  death.location = vaccine.location
     and death.date = vaccine.date
Where death.continent is not null 


