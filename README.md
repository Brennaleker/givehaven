# givehaven
_Ada Capstone Project givehaven.org_
#problem statement
During January’s 1-night count over 10,000 homeless individuals were counted in King County and the number of those staying outdoors increased by 21% from the count in 2014. On a single night in January 2014, 578,424 homeless individuals were counted in the United States, 401,501 of those were found in shelters. Shelters and soup kitchens are scrambling for resources to serve the population. There are many people who would like to help but want to know without a doubt how their money will be used. This project would connect donors with organizations via wishlists(lists of products that have been reviewed and approved by volunteers) and guarantee that the money donated is used for the products requested.

#user personas
- shelters and soup kitchens requesting supplies
- individuals and companies hoping to lend a helping hand
- individuals who are willing to donate their time to verify requests

__user stories__
- All Users (authorized and unauthorized) Story
- view approved projects
- create an account

__prganization user story__
- Create account
- about your organization
- affiliations
- population served (all, seniors, women, etc. plus numbers)
- start a proposal
- add items to cart through vendors (Amazon to start)
- write a message about how the items will be used
- Submit proposal
- proposal will be reviewed by volunteer
- Once proposal is reviewed it will go live on the site
- when proposal is funded verify shipping address
- after materials are received return to site and write a thank you with information on how the materials have impacted your organization

__donor user story__
- create an account (billing info)
- find one you like and donate a specified amount
- when project is fully funded you will be charged
- receive a thank you from the organization
- get high on helping and do it again!

__volunteer user story__
- approve requests
- respond to user questions/help tickets


#research
_Existing Sites_
Individual organization sites asking for specific needs (feminine hygiene products, toilet paper, toothbrushes, blankets, etc.)
_Other Info._
Donating to organizations that aid the homeless rather than directly to a homeless individual

#resources
- [Trello Board for Task Mastering](https://trello.com/b/jDjxlb7T/a-friend-in-need)
- [API calls](https://docs.google.com/spreadsheets/d/1_hjOkrOFs-DCDFsdx_Y_xNaqIGe5YqceGaNzniU4OBM/edit?usp=sharing)

#accomplished this week
- Express app up and running with dependencies
- Postgres database(shelter_helper) created
- basic Bookshelf build up and migrations are syncing to ph database
- list of API calls
- User Stories
- Tasks organized and prioritized
- db seeds written
- tried Sequelize and Bookshelf ORMs decided to go with Bookshelf
- API endpoints for users, donors, volunteers and organizations added to app.js

#over the weekend
- refactor Bookshelf setup
- seed database

#goals for next week
- write tests for all endpoints/methods
- get all API endpoints functioning and passing tests
- finish API
- celebrate with a nap

