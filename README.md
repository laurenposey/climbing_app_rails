# Mac users will need to change the encoding in the `config/database.yml` file from `WIN1252` to `UTF8` or `unicode`.

# _EPICODUS INDEPENDENT PROJECT | A Climbing App_

#### _A Climbing App, September 2016_

#### By _**Lauren Posey**_

## Description

_A website where a user can create an account and  keep track of their climbing places and the difficulty of routes they climb at those places._

## Specifications
#### Implemented Features:
* _As a user, I'd like to create, read, update, and delete a place where I climb._
* _As a user, I'd like to see flash notifications to let me know whether or not the site my changes are being saved._
* _As a user, I'd like to add a route to a place._
* _As a user, I'd like to be able to read, update, and delete a route ._
* _As a user, I'd like to be able to click on a place to view additional information.
* _As a user, I'd like to be able to sign in using my email.._
* _As a user/admin, I'd like the landing page to be the login/ registration page._
* _As a user, I'd like to have a navbar at the top of the page to help me get around the site_

#### Features Coming Soon:

* _As a user, I'd like the flash notices to have boxes around them that I can close._
* _As a user, I'd like rate the route I climbed._
* _As an admin, I'd like to have my own login portal._
* _As a user, I'd like the landing page to have a short description of the app and how it works._
* _As a user/admin, I'd like to have an avatar._
* _AS a user/admin, I'd like to have a username._

## Prerequisites

You will need the following things properly installed on your computer.

* [Git](http://git-scm.com/)
* [RAILs](http://railsinstaller.org/en)
* [PostgreSQL](https://www.postgresql.org/download/)


## Installation

_First:_
* `git clone https://github.com/laurenposey/climbing-rails.git` this repository
* change into the new directory

_Then:_
* `postgres`

_Finally, in a separate terminal window:_
* `rake db:create`
* `rake db:migrate`

## Running / Development

* `rails serve`
* Visit [http://localhost:3000](http://localhost:3000).

## Known bugs

70% testing coverage.

## Support and contact details

_If you run into any issues or have questions, ideas, or concerns, please feel free to contact Lauren at <a href="mailto:posey.lauren.m@gmail.com">posey.lauren.m@gmail.com</a>._

## Technologies Used

* _RAILs_
* _PostgreSQL_

### License

*MIT License*

Copyright (c) 2016 **_Lauren Posey_**

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
