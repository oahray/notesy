[![Build Status](https://travis-ci.org/oahray/notesy.svg?branch=develop)](https://travis-ci.org/oahray/notesy)

# Notesy
Notesy is a simple applicaton that helps you share your thoughts by creating, managing and publishing notes about things that matter to you.

## Table of Contents
- [Key Features](#key-features)
- [Technology Stack](#technology-stack)
- [Dependencies](#dependencies)
- [Installation](#installation)
- [Tests](#tests)
- [Limitations](#limitations)
- [Documentation](#api-documentation)
- [How to contribute](#how-to-contribute)
- [The Dev Team](#the-dev-team)
- [Licence](#licence)
- [FAQs](#faqs)

## Key Features
  - Users can create new accounts to access all other features.
  - Users can create notes
  - Users can edit and delete their notes

## Future features
Users would be able to
  - Make notes public (can be set to everyone or just followers)
  - Follow other users
  - See public notes created by others
  - Get in-app notifications when actions happen
  - Publish notes to integrated apps like Twitter, Facebook and Medium


##### Authentication
  - notesy uses JWT for authentication.
  - On successfull sign up or sign in, the user receives a token in the body which can be used to authenticate requests to protected endpoints.


## Technology Stack

Notesy is built with the Ruby-on-Rails framework.

#### Authentication
  - Json Web Tokens (JWT) for authentication.  
    
#### Code Quality
  - Uses Rubocop to enforce Ruby code conventions


## Dependencies
To use notesy, you would need: 
  - [Ruby (version 2.4.5)](https://www.ruby-lang.org/en/) - A dynamic, open source programming language with a focus on simplicity and productivity.
  - [Bundler](https://bundler.io/) - Bundler provides a consistent environment for Ruby projects by tracking and installing the exact gems and versions that are needed.
  - [PostgreSQL](https://www.postgresql.org/) - a popular object-relational database management system (ORDBMS).
  - Other dependencies are listed in the `Gemfile` and should be installed with `bundle update` on the command line.

## Installation
To get started, 
- Clone this repository to your local machine using https://github.com/oahray/notesy.git
- Navigate to the root of the cloned local repository.
- Run `bundle install` to install the dependencies.
- Run `rails db:setup` to setup your database.
- Run `rails s` to run the application.

## Tests
Tests have been written using the [Rspec](http://rspec.info/) testing framework. To run tests run `rspec` while at the root of the repository on your local machine.

If you discover a bug while testing or using app, please [create an issue](https://github.com/oahray/notesy/issues/new) to report it. That is a way to contribute to the development of notesy.

## Limitations
Currently...
- users cannot find and follow other users
- users cannot make their notes public so their followers can see them.
- users cannot publish their notes to external apps.

## API Documentation
Documentation for this API functionality is still a work in progress. 

## How to Contribute

Interested in the development of Notesy? Awesome! You can check out the [Issues](https://github.com/oahray/notesy/issues) page, and if you find something you want to work on, let us know in the comments.

Pull Requests should:
  - Contain code that adhere strictly to Ruby style guide. Running `rubocop` before pushing code can help in this regard.
  - Pass all existing tests.
  - Contain tests written for new functionality or fix. These tests must also pass.

## The Dev. Team
- [Oare Arene](https://github.com/oahray)

## Licence
Copyright © [The MIT License](./LICENCE.md)

## FAQs
#### What is Notesy?
Notesy is a simple applicaton that helps you share your thoughts by creating, managing and publishing notes about things that matter to you.

#### Is notesy an Open-Source Application?
Yes it is. 
    
#### Who can contribute?
Anyone! To contribute, simply raise a PR with your contribution. Only PRs that meet the standard would be considered. For more details on PR conventions for the notesy project, see the [How to contribute](#how-to-contribute) section of this README.
    
#### What language was used to develop this application?
This project is a Ruby-on-Rails application
    
#### Am I permitted to clone this project for personal use?
See [The MIT License](./LICENCE.md) for the permissions available to you.
