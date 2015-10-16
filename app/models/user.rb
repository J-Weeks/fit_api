class User < ActiveRecord::Base
  before_create -> { self.auth_token = SecureRandom.hex }

  has_many :activities
  has_many :trainers, through: :activities
end
