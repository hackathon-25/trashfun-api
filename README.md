Trashfun API

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

Ruby on Rails
-------------

This application requires:

- Ruby 2.5.1
- Rails 5.2.1
- PostgreSQL

Getting Started
---------------

1. Clone repo
2. Install Postgres
3. Configure psql credentials for your current role (google it)
4. Ensure Postgres services are running on your machine
5. Set up your `.env` file: `$ cp .env.example .env`
6. `$ bundle install`
7. `$ bundle exec rails db:setup`
8. Done

Overall responsibilities
-------------------------

### Available endpoints

#### Authentication

##### POST https://trashfun.herokuapp.com/api/users/login

```ruby
{
	"user": {
		"email": "polina@gmail.com",
		"password": "12345678"
	}
}
```

##### POST https://trashfun.herokuapp.com/api/users

```ruby
{
	"user": {
		"email": "polina@gmail.com",
		"password": "1234567"
	}
}
```

#### Challenges

##### POST https://trashfun.herokuapp.com/api/challenges/enroll

```ruby
{
  user_id:      FactoryBot.create(:user).id,
  challenge_id: FactoryBot.create(:challenge).id
}
```

##### GET https://trashfun.herokuapp.com/api/challenges/:id/enrolled

```ruby
{
  id: user.id
}
```

##### GET https://trashfun.herokuapp.com/api/challenges
