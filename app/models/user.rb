class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	belongs_to :father, class_name: "User", required: false
	belongs_to :mother, class_name: "User", required: false
	belongs_to :siblings, class_name: "User", required: false
	has_many :children_of_father, class_name: "User", foreign_key: "father_id"
	has_many :children_of_mother, class_name: "User", foreign_key: "mother_id"
	has_one :siblings, class_name: "User", foreign_key: "siblings_id"

	def self.to_csv
		attributes = %w{first_name last_name sex birthdate address phone_number}
		CSV.generate(headers: true) do |csv|
			csv << attributes

			all.each do |user|
				csv << user.attributes.values_at(*attributes)
			end
		end
	end

	def self.search(term, term2, page)
	  if !term.empty? && term2.empty?
	    where('first_name LIKE ?', "%#{term}%").paginate(page: page, per_page: 10).order(first_name: :ASC, birthdate: :asc)
	  elsif term.empty? && !term2.empty?
	  	where('last_name LIKE ?', "%#{term2}%").paginate(page: page, per_page: 10).order(first_name: :ASC, birthdate: :asc)
	  elsif !term.empty? && !term2.empty?
	  	where('last_name LIKE ? AND first_name LIKE ?',
	  			"%#{term2}%", "%#{term}%").paginate(page: page, per_page: 10).order(first_name: :ASC, birthdate: :asc)
	  else
	    paginate(page: page, per_page: 10).order(first_name: :ASC, birthdate: :asc)
	  end
	end

end
