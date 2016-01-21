# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do |i|
  User.create!(user_name: "User_#{i}")
end

10.times do |i|
  Polll.create!(title: "title_#{i}", author_id: User.all[i].id)
end

10.times do |i|
  Question.create!(question: "question_#{i}", poll_id: Polll.all[i].id)
end

10.times do |i|
  AnswerChoice.create!(answer_choice: "choice_#{i}", question_id: Question.all[i].id)
end

10.times do |i|
  Response.create!(respondent_id: User.all[i].id, answer_choice_id: AnswerChoice.all[i].id)
end
