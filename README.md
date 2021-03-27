# Devcamp Portfolio

## System dependencies

RVM:

```shell
rvm install 2.5.0
rvm use 2.5.0
rvm gemset create devcamp_portfolio
rvm gemset use devcamp_portfolio
gem install bundler nokogiri rails
```

Postgres:

```shell
sudo apt install postgres postgres-contrib libpq-dev
sudo su - postgres
createuser -s -r <your_username>
```

## Development

Use configurations used in `.ruby-gemset` and `.ruby-version` by running `rvm use .`.

```shell
rails db:create
rails db:migrate
rails s
```

## Available routes

```shell
rails routes
```

## Generators

Creating a scaffold:

```shell
rails g scaffold <Feature> <property_name:type>
```

Creating a controller:

```shell
rails g controller <Page> <page_name>
```

Creating a model:

```shell
rails g model <Model> <property_name:type>
```

Creating a resource:

```shell
rails g resource <Resource> <property_name:type>
```

## Database setup

To remove all data and run what is inside `db/migrate/seeds.rb`:

```shell
rails db:setup
```
