# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: "a@wp.pl"
			encrypted_password: "11111"
			first_name: "Adam"
			last_name: "Kowalski"
			sex: "male"
			birthdate: "15/05/1980"
			address: "ul. Nowa 1, Warszawa"
			phone_number: "(+48) 600 600 600"
			admin: false)

p "Seeds added correctly"