class Course < ApplicationRecord
	has_one :coordinator
	has_many :student
end
