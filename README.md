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

## Extensions on db
\c graphql_rails_development
graphql_rails_test=# create extension "uuid-ossp";
graphql_rails_test=# create extension "pgcrypto";

\c graphql_rails_test
graphql_rails_test=# create extension "uuid-ossp";
graphql_rails_test=# create extension "pgcrypto";

\c graphql_rails_production
graphql_rails_test=# create extension "uuid-ossp";
graphql_rails_test=# create extension "pgcrypto";

## Why i am doing this?
In a certain point of my career, i realized, that i must always practice, if i am going to be the best in what i do for living
