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

## Screenshots

**Dashboard**

![Habits Tracker Dashboard](https://github.com/user-attachments/assets/12842123-7eeb-4bf8-9438-a6f07e53e706)

**Habit Show View**

![Habits Tracker Dashboard](https://github.com/user-attachments/assets/8c1f4fb5-ff7f-462d-a275-a7867223edb0)

**Habit Edit View**

![Habits Tracker Dashboard](https://github.com/user-attachments/assets/0ee18a9e-4914-432c-a64e-3ebe41481932)

**Nwe Habit View**

![Habits Tracker Dashboard](https://github.com/user-attachments/assets/c58c89dd-c44e-422b-b7d9-29b24a1737de)
