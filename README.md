# README

## Local Development Env

Requirements:

```
ruby
sqlite3
node
yarn
```

## Setting up code complete with VS code and solargraph

```
bundle install
bundle exec yard gems
```

```
Install solargraph extension on VScode
In VScode "Code" > "Perferences" > "Settings" > "Extensions" > "Solargraph Settings"
    Check off "Use Bundler"
```

## Start Server

Create `.env` file at root of project with the following variables, see `.env_example`

```
export SPOTIFY_CLIENT_ID=foo_bar
export SPOTIFY_CLIENT_SECRET=123123123
```

Start server

```
bundle install
source .env && bundle exec rails server
```

Navigate to

```
http://localhost:3000/
```
