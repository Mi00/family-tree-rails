module UsersHelper
	def age(birthdate)
		now = Date.today
		now.year - birthdate.year - ((now.month > birthdate.month || (now.month == birthdate.month && now.day >= birthdate.day)) ? 0 : 1)
	end

	def is_admin?
		current_user.admin == true
	end
end
