class Course < ApplicationRecord
	has_one :coordinator
	has_many :student

	accepts_nested_attributes_for :coordinator
end
