class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :category, :bio, :video_url, :user_id, :trainer_id, :created_at, :updated_at

  # belongs_to :trainer
  # belongs_to :user
end
