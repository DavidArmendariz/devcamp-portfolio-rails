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

Generate a migration

```shell
rails g migration <description> <property_name:type>
```

## Examples

```shell
rails g resource Portfolio title:string subtitle:string body:text main_image:text thumb_image:text
rails g model Skill title:string percent_utilized:integer
rails g controller Pages home about contact
rails g scaffold Blog title:string body:text
rails g migration add_slug_to_blogs slug:string:uniq
rails g migration add_post_status_to_blogs status:integer
rails g model Topic title:string
rails g migration add_topic_reference_to_blogs topic:references
```

## Database setup

To remove all data and run what is inside `db/migrate/seeds.rb`:

```shell
rails db:setup
```
