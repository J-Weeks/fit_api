class Trainer < ActiveRecord::Base
  has_many :activities
  has_many :users, through: :activities
end
