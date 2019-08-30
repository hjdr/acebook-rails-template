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
We were an AGILE team! This meant ...

### Everyday:

Standup - 10am (15 mins)

### Every other day:

2-day sprint planning - 10:15am (1.20 hr)

- 20 min retrospective
- 20 mins per pair planning
- group pairs assigned

### Pairing:

Change pairs once a day

### Trello:

https://trello.com/b/uV5OEJNn/acebook
