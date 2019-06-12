# README

## Commands Used to Create and Modify Repo:
* `rails new -T rails_sandbox`

### Add rspec-rails by adding this to gem file and then running the following command:

```
group :development, :test do
  gem 'rspec-rails', '~> 3.8'
end
```

`rails generate rspec:install`

### Then delete the `test` folder and its contents.

### Add a basic service and test:

```
mkdir app/services
touch app/services/sun_service.rb
mkdir spec/services
touch spec/services/sun_service_spec.rb
```

I also changed the `spec_helper` to `rails_helper` at the top of my test file so it could load the `StudentService` class.

### Add `httparty` to gemfile:

### Add model to use without a database and then delete the migration:
`rails generate model Daylight`

### Add model to use ActiveModel:
`rails generate model Darkness`

### Add model for Temperature and then delete the migration:
`rails generate model temperature`

### Add model for Grades
`rails generate model grade'
