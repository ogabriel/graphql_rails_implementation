# graphql_rails

## commands
Creating the file
`rails new graphql_rails -G -J -M -C -T --database=postgresql`

## Objective
Create a project with this different gems:
- graphql
- graphql-rails
- devise
- faker
- rspec
- dontenv-rails

## Env vars
create an `.env` or `.env.test` and `.env.development` for user and database password. Like:

```
DB_USERNAME=user
DB_PASSWORD=password
```

## How to test the graphql API
The application counts with two models: `user` and `quote`, `user` has many `quotes`. From there, you can run a lot of queries.

List queries:
- users (list all users)
- user(id:) (find the user for the giver id)
- quotes (list all quotes)
- quote(id:) (find the quote for the given id)

List of mutations
- createUser (create an user, given the email and password)
- updateUser(input: id:) (update and existing user, for the given id)
- deleteUser(input: id:) (deletes an user, for the given id)
- createQuote (create an quote, given the message and user)
- updateQuote(input: id:) (update and existing quote, for the given id)
- deleteQuote(input: id:) (deletes an quote, for the given id)

## Examples
- [Queries](queries.md)
- [Mutations](mutations.md)

## How to test it?
first start the server:
- `rails s`

Now, you have two options:
- You can simple use an POST HTTP METHOD on a normal request application.
- And for the `development` enviroment, you can use the page `http://localhost:3000/graphiql`, which is an page that you can test all your queries.

## Extensions on db
```sql
\c graphql_rails_development
graphql_rails_test=# create extension "uuid-ossp";
graphql_rails_test=# create extension "pgcrypto";

\c graphql_rails_test
graphql_rails_test=# create extension "uuid-ossp";
graphql_rails_test=# create extension "pgcrypto";

\c graphql_rails_production
graphql_rails_test=# create extension "uuid-ossp";
graphql_rails_test=# create extension "pgcrypto";
```
* this only applies if you are not using a superadmin user to setup the application

## Why i am doing this?
In a certain point of my career, i realized, that i must always practice, if i am going to be the best in what i do for living
