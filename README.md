# Guestbook
## Installation
### 1. Clone project from github
> **git clone https://github.com/Rydzi/guestbook.git [projectName]** \
> **cd projectName**
### 2. Create and install config file
> **cp .env.example .env** \
> setup .env file
### 3. Install composer dependecies
> **composer install** \
> **npm install**
### 4. Generate an app encryption key
> **php artisan key:generate**
### 5. Create database for project (use name which populated in .env)
### 6. Migrate database structure
> **php artisan migrate**
### 7. Create data for project
> **php artisan data** to create testing data \
> or you can import export of test from data tables_test_data.sql
### 8. Run project 
> **php artisan serve** & open link \
> or run from installed webserver
