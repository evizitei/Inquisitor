# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
josh = User.find_or_create_by_email("jcreamer@bcfdmo.com")
josh.update_attributes!(:password=>"firedistrict")
ethan = User.find_or_create_by_email("ethan.vizitei@gmail.com")
ethan.update_attributes!(:password=>"firedistrict")

quiz = Quiz.find_or_create_by_name("Respiratory Protection")
quiz.update_attributes(:pass_percentage=>75)

quiz.questions.delete_all
quiz.questions.create!(:prompt=>"By OSHA standards you are allowed to have hair growth between the facepiece sealing surface and skin.",
                       :correct_answer=>"false",
                       :distractor_1=>"true")