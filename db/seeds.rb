# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(id: 1,
			email: "aa@wp.pl",
			password: "111111",
			first_name: "Adam",
			last_name: "Kowalski",
			sex: "male",
			birthdate: "15/05/1980",
			address: "ul. Nowa 1, Warszawa",
			phone_number: "(+48) 600 600 600",
			admin: false,
			father_id: nil,
			mother_id: nil,
			siblings_id: nil)
User.create(id: 2,
			email: "aaa@wp.pl",
			password: "111111",
			first_name: "Anna",
			last_name: "Kowalska",
			sex: "female",
			birthdate: "15/03/1978",
			address: "ul. Nowa 1, Warszawa",
			phone_number: "(+48) 600 500 600",
			admin: false,
			father_id: nil,
			mother_id: nil,
			siblings_id: nil)
User.create(id: 3,
			email: "aaaa@wp.pl",
			password: "111111",
			first_name: "Dawid",
			last_name: "Kowalski",
			sex: "male",
			birthdate: "15/05/1995",
			address: "ul. Nowa 1, Warszawa",
			phone_number: "(+48) 600 600 500",
			admin: false,
			father_id: 1,
			mother_id: 2,
			siblings_id: 4)
User.create(id: 4,
			email: "aaaaa@wp.pl",
			password: "111111",
			first_name: "Ilona",
			last_name: "Kowalska",
			sex: "female",
			birthdate: "15/05/1997",
			address: "ul. Nowa 1, Warszawa",
			phone_number: "(+48) 500 600 600",
			admin: false,
			father_id: 1,
			mother_id: 2,
			siblings_id: 3)
User.create(id: 5,
			email: "bb@wp.pl",
			password: "111111",
			first_name: "Adam",
			last_name: "Nowak",
			sex: "male",
			birthdate: "15/05/1970",
			address: "ul. Stara 1, Warszawa",
			phone_number: "(+48) 600 600 200",
			admin: false,
			father_id: nil,
			mother_id: nil,
			siblings_id: 7)
User.create(id: 6,
			email: "bbb@wp.pl",
			password: "111111",
			first_name: "Bozena",
			last_name: "Nowak",
			sex: "female",
			birthdate: "15/05/1971",
			address: "ul. Stara 1, Warszawa",
			phone_number: "(+48) 600 200 600",
			admin: false,
			father_id: nil,
			mother_id: nil,
			siblings_id: nil)
User.create(id: 7,
			email: "bbbb@wp.pl",
			password: "111111",
			first_name: "Bogdan",
			last_name: "Nowak",
			sex: "male",
			birthdate: "15/05/1975",
			address: "ul. Łokietka 1, Warszawa",
			phone_number: "(+48) 600 300 600",
			admin: true,
			father_id: nil,
			mother_id: nil,
			siblings_id: 5)

20.times do 
	User.create(email: Faker::Internet.email,
				password: '1111111',
				first_name: Faker::Name.name,
				last_name: Faker::Name.name,
				sex: 'male',
				birthdate: Faker::Date.between(1000.days.ago, Date.today),
				address: Faker::Address.city,
				phone_number:  Faker::Number.number(9)
				)
end

p "Seeds added correctly"