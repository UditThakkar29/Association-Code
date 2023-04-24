class University < ApplicationRecord
  has_many :departments
  has_many :students, through: :balls
  has_many :big_
  has_one :choclate
  has_one :kiddd
end
