class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :title
      t.string :description
      t.string :category
      t.string :bio
      t.string :video_url
      t.references :user, index: true
      t.references :trainer, index: true

      t.timestamps null: false
    end
    add_foreign_key :activities, :users
    add_foreign_key :activities, :trainers
  end
end
