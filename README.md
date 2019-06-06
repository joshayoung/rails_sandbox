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
