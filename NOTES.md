I want to have a list of hairstyles under a user (e.g 'Oge' should have a list of hairstyles with uploaded photos and information about where, who, how long and how much she paid to get her hair done)

and I should be able to CRUD those hairstyles

GET /hairstyles -> show an index of all a user's hairstyles GET /hairstyles/:id -> show a particular hairstyle by id GET /hairstyles/new -> a form for new hairstyle signup POST /hairstyles -> submitting the new hairstyle info GET /hairstyle/:id/edit - editing a hairstyle's info

URLs Routes Controller Actions Models Database Views

Scaffold -> Controller, routes, model, migration, views Resource -> Controller, routes, model, migration

Model -> the model and the migration for that model Migration -> Just the migration

Plan out some URLs for the feature I'm building
Ask, does my database need to change? Yes, I need a new table.
If I need a new table, do I have that model? No, so use the model generator
AFter I generate a new model and migrate my DB, I want to play with
Postgres(pg) Conventions:

Table name: lowercase plural name of model - stylists Model filename: singular lowercase (underscored) - stylist.rb Class name for model: sinular camelcase - Stylist

Table name: styles Model filename: style.rb class name: Style

A rails route maps a URL to a Controller and Action Class Method