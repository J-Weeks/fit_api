class TrainerSerializer < ActiveModel::Serializer
  attributes :id, :email, :bio, :pic_url, :created_at, :updated_at

  has_many :activities
end
