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
end
