# The Collaborative Song Calendar
## This web app connects to the Spotify API to allow friends to create collaborative playlists in accordance with daily themes, as seen below.
![image](https://user-images.githubusercontent.com/57726227/218602555-eabf3166-aa17-4c7b-9773-ff3d87c8c852.png)

### Local Development Env
Requirements:

```
ruby
sqlite3
node
yarn
```

### Setting up code complete with VS code and solargraph

```
bundle install
bundle exec yard gems
```

```
Install solargraph extension on VScode
In VScode "Code" > "Perferences" > "Settings" > "Extensions" > "Solargraph Settings"
    Check off "Use Bundler"
```

### Start Server

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
