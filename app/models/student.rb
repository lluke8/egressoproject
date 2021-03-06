class Student < ApplicationRecord
  belongs_to :course
  has_one :ending
  has_one :testimony
  has_many :contacts
  
  accepts_nested_attributes_for :contacts, reject_if: :all_blank, allow_destroy: :true
  accepts_nested_attributes_for :testimony, reject_if: :all_blank, allow_destroy: :true
end
