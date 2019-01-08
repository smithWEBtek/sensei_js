# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: 'bob', email: 'bob@bob.com', password: 'pointer')
User.create(name: 'sue', email: 'sue@bob.com', password: 'pointer')
User.create(name: 'alice', email: 'alice@bob.com', password: 'pointer')

Teacher.create(name: 'Yoda', user_id: 1 )
Teacher.create(name: 'Bill Gates', user_id: 1 )
Teacher.create(name: 'Steve Jobs', user_id: 1 )
Teacher.create(name: 'MLK', user_id: 1 )

# Teaching.create()