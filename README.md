# LoadUp Booking System

A Ruby on Rails application for managing bookings for a new Cat and Dog Sitting service. This application includes booking creation, a list of bookings with sorting, and a pricing engine.

## Features

- Create new bookings with details for cats and dogs
- View all bookings with sorting functionality
- Pricing engine that calculates service costs
- Responsive design with Bootstrap 4

## Prerequisites

- Ruby 3.1.4
- Node.js
- Yarn

## Setup Instructions

```bash
##  Clone the Repository
git clone https://github.com/yourusername/loadup_booking_system.git
cd loadup_booking_system

## Install Ruby Gems
gem install bundler
bundle install

## Set Up the Database
rails db:create
rails db:migrate


## Install JavaScript Dependencies
yarn install

## Compile Assets
./bin/webpack

## Start the Rails Server
rails server
```
- Now, Navigate to http://localhost:3000 to access the application.

### Usage

- Creating a Booking: Navigate to /bookings/new to create a new booking.
- Viewing Bookings: Navigate to /bookings to view all bookings. The table can be sorted by - clicking on column headers and it also has search and pagination too.
- Price Calculation: The total price for the booking is calculated and displayed upon successful creation. For existing bookings, Price is also displayed in the table as a column too.