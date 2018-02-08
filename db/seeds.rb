# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
dale_cookbook = Cookbook.create(title: 'Dale Home Cookbook', creator_id: 5)
UserCookbook.create(cookbook_id: dale_cookbook.id, user_id: 5)
UserCookbook.create(cookbook_id: dale_cookbook.id, user_id: 6)
lightning_cookbook = Cookbook.create(title: 'Cooking with Lightning', creator_id: 1)
UserCookbook.create(cookbook_id: lightning_cookbook.id, user_id: 1)
UserCookbook.create(cookbook_id: lightning_cookbook.id, user_id: 3)
