# ryanlabouve/pimber-api

This API is a sample backend for pimber, an ember app for exploring Pinboard.in accounts.

## Running Project

I have foreman setup, but it's just running rails right now. But if you're so inclined `foreman start`

If you're running the project locally you can see the API docs at [http://localhost:3002/documentation](http://localhost:3002/documentation)


## Seeding Database

This can be seeded off any Pinboard account given an API token. [How to find your API token?](https://blog.pinboard.in/2012/07/api_authentication_tokens/)

1. Put your API token in `/pimber-api/.env`

```bash
# Example .env
PINBOARD_API_TOKEN=username:ALKSDLKFJSD23432
```

2. Run `db:seed` through foreman

```bash
foreman run bundle exec rake db:seed
```

[Foreman and Environment Varialbes](http://mauricio.github.io/2014/02/09/foreman-and-environment-variables.html)
[Adding Environment Variable to Heroku](https://devcenter.heroku.com/articles/procfile)
[Heroku Config and Config Vars](https://devcenter.heroku.com/articles/config-vars)
