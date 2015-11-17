# SillySpeed Me Backend
Ruby on Rails backend for SillySpeed Me App
* [Front end repository](https://github.com/resource11/ssme_frontend/tree/gh-pages)
* [Deployed site](http://resource11.github.io/ssme_frontend)
* [Deployed backend](https://mighty-lowlands-8515.herokuapp.com)

##Project Overview
SillySpeed Me! is an app designed to allow the user to list a bike for sale and favorite a bike they'd like to buy. The target audience is those who love to race cyclocross, particularly on a singlespeed (aka, a SillySpeed) bike!.

## Database

The database contains 3 tables:
* users
* bikes
* favorite_bikes

![ERD diagram](https://www.dropbox.com/s/sy0v0j76ejnk1xl/ssme_ERD_Models.png?dl=0)

#Planning
I took a decent amount of time thinking about my models and how they related before I started building the backend. Once a structure was determined, I consulted many individuals to confirm that my models and rationale was sound.

This project was a great first step for learning how routes, controllers and serializers worked with each other. I believe there's much more to learn here... especially if my app becomes more robust in future iterations!

##What I learned
- How routes and controllers work.
- How serializers work -- especially with respect to the 'has_many' property.
- Active Record Objects: just scratched the surface with respect to what they can accomplish.

##Challenges
Learning how to use controllers in more than the basic CRUD actions is definitely an area which I'd like to delve more deeply. Figuring out how to use some clever programming to gather specific information when a request is made from the client definitely took a bit of trial and error!

## Next Steps
- Going forward, I'd love to change up how a favorite is shown on the app (a graphical toggle on the 'all bikes' list, in addition to the current 'favorited bikes' listing shown when a user is logged in.








