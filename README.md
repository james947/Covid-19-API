COVID-19 API
---
This is an Application the crawls live data from https://www.worldometers.info/coronavirus/ and provides the data as a JSON API

Installation
---
Clone the app  `git clone https://github.com/james947/Covid-19-API.git`

Install gems `bundle install`

create database `rake db:create`

run migrations  `rake db:migrate`

scrap data `rake scrap_data` This should print a message `scrapping the web` and when done `We are done...`

start the application `rackup`

Voila! Use the endpoints `below` to check if you have the lastest Covid-19 data.


Endpoints
---
[All Cases](https://coronalivedata.herokuapp.com/api/v1/all_cases) Returns all cases + Deaths + Recovered

[Active Cases](https://coronalivedata.herokuapp.com/api/v1/active_cases) Returns currently infected patients + in mild condition + Serious or Critical

[Closed Cases](https://coronalivedata.herokuapp.com/api/v1/closed_cases) Returns Recoverd / Discharged patients  + Deaths

[Countries Data](https://coronalivedata.herokuapp.com/api/v1/countries_data) Returns all Countries Data

[Filter by Country](https://coronalivedata.herokuapp.com/api/v1/countries_data?country='') Enables you to filter by country e.g `https://coronalivedata.herokuapp.com/api/v1/countries_data?country=Kenya`

Contributions
---
Contributions are allowed! No guide for now. Just raise a PR!

Acknowledgements
---
Jay947 `Author`

[Gideon Kimutai](www.github.com/gr1d99)





