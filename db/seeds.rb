# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Activity.destroy_all
Trainer.destroy_all

u1 = User.create(email: 'user@example.com', password: 'password', bio: 'example weightlifter bio', pic_url: 'upload.wikimedia.org/wikipedia/en/b/b1/Portrait_placeholder.png')

u2 = User.create(email: 'user2@example.com', password: 'password', bio: 'example athlete bio', pic_url: 'upload.wikimedia.org/wikipedia/en/b/b1/Portrait_placeholder.png')

t1 = Trainer.create(email: 'trainer1@example.com', password: 'password', bio: 'weightlifting trainer bio', pic_url: 'upload.wikimedia.org/wikipedia/en/b/b1/Portrait_placeholder.png')

t2 = Trainer.create(email: 'trainer2@example.com', password: 'password', bio: 'athletic trainer bio', pic_url: 'upload.wikimedia.org/wikipedia/en/b/b1/Portrait_placeholder.png')

# a1 = Activity.create(title: 'Check my squat form', description: 'lifting weight form check', category: 'weightlifting', video_url: 'v=XQu8TTBmGhA', user: u1, trainer: t1.trainer.id)
# full url: https://www.youtube.com/watch?v=XQu8TTBmGhA

a1 = u1.activities.create(title: 'Check my squat form', description: 'lifting weight form check', bio: 'weightlifting', video_url: 'v=XQu8TTBmGhA', trainer_id: t1.id)

a2 = u2.activities.create(title: 'Check my right hook', description: 'right hook boxing form', bio: 'boxing', video_url: 'v=XQu8TTBmGhA', trainer_id: t2.id)

a3 = u1.activities.create(title: 'Check my bench form', description: 'lifting weight form check', bio: 'weightlifting', video_url: 'v=XQu8TTBmGhA', trainer_id: t1.id)

a4 = u1.activities.create(title: 'Check my HIIT form', description: 'cardio form check', bio: 'running', video_url: 'v=XQu8TTBmGhA',trainer_id: t2.id)


# a1.trainer = t1.id

# a2.trainer = t2.id

# a3.trainer = t1.id

# a4.trainer = t2.id
