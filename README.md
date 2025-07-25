# Habits Tracker

This is a small habits tracker application for a workshop

## Stack

- Ruby 3.3.5
- Rails 8.0.2
- Nodejs 22.15.1
- SQLite

## Getting started

This apps was created using `asdf`, so the `.tool-versions` file is defined in the root, to install the dependencies run `asdf install`. Once you have Ruby and Node installed, the next step is to install the Rails project dependencies:

```shell
> bundle install
```

After installing the project dependencies, the last step is to load the DB schema to create all the database structure we have defined in `db/schema.rb` with the following command:

```shell
> rails db:schema:load
```

Once the installation and setup process is finished, run the application with `bin/dev`.
