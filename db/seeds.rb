# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(name:'Martin', last_name:'Concha', email:'martin@miuandes.cl'), 
u2 = User.create(name:'Registered', last_name:'User', email:'reguser@miuandes.cl'),
u3 = User.create(name:'Registered', last_name:'User 2', email:'reguser2@miuandes.cl')


a1 = Address.create(phone: '+56994495217', address1: 'el valle, lo barnechea', city:'santiago', country: 'chile', zip: 1001, user_id: u1)

p1 = Product.create(brand: 'Apple', model: 'iPhone 6', price: 100000, short:'iPhone', long: 'iPhone 6 16gb'),
p2 = Product.create(brand: 'Samsung', model: 'Galaxy j6', price: 130000, short:'Galaxy', long: 'Galaxy j6 16gb')

o1 = Order.create(billing: 'universidad de los andes', shipping: 'el valle, lo barnechea', user_id: u1, product_id: p1)
