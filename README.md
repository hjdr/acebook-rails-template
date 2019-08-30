# Bookface (Facebook clone)

Makers group project - creating a fullstack web app in the form of a Facebook clone on Rails, with 100% test coverage via RSpec. Yes, every single line of code in there is covered.

## Deployment on AWS

After completing the basic user requirements our next task was migrate the deployment of our website from Heroku onto AWS. As if making sense of the amazon documentation wasn't a gruelling task by itself, we faced some seriously obscure version control errors with Bundler and asset compilation. When I say seriously obscure, I mean at one point we googled a stack trace (these are generic folder names FYI) and it only yielded one search result on google. With determination, perseverance, sudo-ing around in root folders we never knew existed, and some serious digging on stack overflow, we still managed to deploy it on time before the deadline. 

## Quickstart

First, clone this repository. Then:

```bash
> bundle install
> bin/rails db:create
> bin/rails db:migrate

> bundle exec rspec # Run the tests to ensure it works
> bin/rails server # Start the server at localhost:3000
```

## Methodology
We were an agile team! This is how we fulfilled Kent's 12 principles of Agile Methodology:

#### 1. Customer satisfaction through early and continuous delivery of useful software
We used Travis CI & Heroku to continuously integrate and deliver software. Our minimum viable product was up and running by day 4 of the project.

#### 2. Welcome changing requirements, even late in development
See AWS deployment above

#### 3. Frequently Delivered Software(weeks rather than months)
MVP up in 4 days, optional features also added, tested and deployed within 2 weeks

#### 4. Close, daily cooperation between business people and developers
We presented our product to our client every time we had completed the tickets

#### 5. Projects are built around motivated individuals, who should be trusted
As team members we were all equal and chose the tasks we were most interested in. No management or top-down hierarchy involved.

#### 6. Face-to-face conversation is the best form of communication
We always communicated in person, ensure pair programming every step of the way and mobbing when code was to be merged or a key part of the functionality was changed

#### 7. Collocation and pair programming
See above

#### 8. Sustainable development, able to maintain a constant pace
We took breaks and had consolidation days where we could catch up with our own learning, thus avoiding burn out

#### 9. Excellence through Reflection
Every morning we had a 15 minute standup where we reflected on what we did the day before and what we would do differently today. We had more in depth 20 minutes retrospective sessions every other day.

#### 10. Simplicity—the art of maximizing the amount of work not done—is essential
We focused on delivery the MVP and the core requirements of each ticket first before implementing nice-to-have extras, like CSS

#### 11. Self-organizing teams
We were autonomous and self-motivated, and split into pairs without external management

#### 12. Regular adaptation to changing circumstance
Our team structure adapted to the requirements - from pairing to mobbing to individual experimenting.

#### Our Kanban:

https://trello.com/b/uV5OEJNn/acebook
