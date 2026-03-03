## Cursor Cloud specific instructions

### Overview

Serra Grana is a Ruby on Rails 7.1 application for managing people and their incomes. It uses PostgreSQL, Ruby 3.3.0, and Bundler. No Node.js or Docker is required.

### Ruby path

Ruby 3.3.0 is installed at `/home/ubuntu/.rubies/ruby-3.3.0/bin` and added to `PATH` via `~/.bashrc`. If `ruby` is not found, run `export PATH="/home/ubuntu/.rubies/ruby-3.3.0/bin:$PATH"`.

### Starting PostgreSQL

PostgreSQL must be running before the Rails app or tests can work:

```
sudo pg_ctlcluster 16 main start
```

The `ubuntu` user has superuser access with no password (peer authentication via Unix socket).

### Common commands

- **Install deps:** `bundle install`
- **Create/migrate DB:** `bin/rails db:create db:schema:load` (first time) or `bin/rails db:migrate`
- **Run tests:** `bundle exec rspec`
- **Run linter:** `bundle exec rubocop`
- **Start dev server:** `bin/rails server -b 0.0.0.0 -p 3000`

### Gotchas

- The database config (`config/database.yml`) uses Unix socket auth with no explicit host/password. No `DATABASE_URL` env var is needed for development.
- Test database (`serra_grana_test`) is created automatically when running `db:create`.
