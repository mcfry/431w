# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

EInfo.create(title: 'Dell Inspiron X', description: 'An ordinary dell pc', image_name: 'product-thumb-1')

ECategory.create(name: 'root', parent_cat_id: 0)
ECategory.create(name: 'Electronics', parent_cat_id: 1)
ECategory.create(name: 'Computers', parent_cat_id: 2)
ECategory.create(name: 'Pets', parent_cat_id: 1)