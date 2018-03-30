# README

This web application is built for a student assignment on Advanced Web Application Development class at University of Aberdeen. The website presents detailed data about the US Fortune-500 companies for 2017 and lists for the US Fortune-500 companies for the last 10 years. The landing page displays a map with magnitude markers for each company based on their revenue for 2017 as well as a list of the US Fortune-500 companies for 2017. The companies are segmented based on sectors, industries and states, reachable through the corresponding links in the global navigation. The sectors page has a bar chart representing the number of companies per sector. The company page shows a line-chart representing the position of the company in the US Fortune-500 rank list for the last 10 years and a quote for the stock price of the company. The users can view details for the companies after they create an account and log in. The guest users can view the landing page and explore the map, and the list of companies or use the global search. A logged in user can view everything but the JASON API of the website. The JASON API can be viewed after subscription. A logged in user can subscribe for three different plans with different time length.  

Installation and use of the application

Local Use:
1.	Fork it from the repository
2.	Open ruby/rails console and navigate to the directory where the fortune500 app exits and run:
a.	bundle install
b.	rails db:migrate
c.	rake fortune500:seed_fortune500
d.	rails db:seed
3.	Start server by running ‘rails s’ and launch the browser and go to http://localhost:3000/

To deploy to Heroku:
1.  Set your Heroku origin
2.  Install Heroku CLI and login
3.  Initialize you local Git repository. Run in the console:
a.  git init
4.  Add all files to your local Git repository. Run in the console:
a.  git add -A
5.  Commit in your local Git. Run in the console:
a.  git commit -m 'Initial commit'
6.  Run in the console:
a.  git push heroku master
b.  heroku run rails db:migrate
c.  heroku run rake fortune500:seed_fortune500
d.	heroku run rails db:seed
7.  navigate to your app heroku url

Admin account:
username: admin@fortune500app.com
password: 2017fortune500
