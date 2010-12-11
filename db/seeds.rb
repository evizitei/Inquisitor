# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

#users
josh = User.find_or_create_by_email("jcreamer@bcfdmo.com")
josh.update_attributes!(:password=>"firedistrict")
ethan = User.find_or_create_by_email("ethan.vizitei@gmail.com")
ethan.update_attributes!(:password=>"firedistrict")

#students
student = Student.find_or_create_by_organization_id("EV2067")
student.update_attributes!(:name=>"Ethan Vizitei")

#respiratory protection
quiz = Quiz.find_or_create_by_name("Respiratory Protection")
quiz.update_attributes(:pass_percentage=>75)

quiz.questions.delete_all
quiz.questions.create!(:prompt=>"By OSHA standards you are allowed to have hair growth"\
                                " between the facepiece sealing surface and skin.",
                       :correct_answer=>"false",
                       :distractor_1=>"true")
quiz.questions.create!(:prompt=>"There are 2 types of accepted fit test procedures which"\
                                " type does BCFD/MO-TF1 use?",
                      :correct_answer=>"Quantitative",
                      :distractor_1=>"Qualitative")
quiz.questions.create!(:prompt=>"You must perform a seal check every time you don a facepiece"\
                                "For respiratory protection.",
                      :correct_answer=>"true",
                      :distractor_1=>"false")
quiz.questions.create!(:prompt=>"How do you perform a facepiece positive pressure check? ",
                      :correct_answer=>"Cover the exhalation valve and exhale gently, looking for outward leakage",
                      :distractor_1=>"Cover the inlet valve and inhale",
                      :distractor_2=>"Blow air into the facepiece",
                      :distractor_3=>"Follow manufacture’s procedures")
quiz.questions.create!(:prompt=>"How do you perform a facepiece negative pressure check? ",
                      :correct_answer=>"Cover air inlets to cartridges, air regulator openings ext and inhale gently"\
                                       " so the facepiece collapses slightly and no inward leakage is detected",
                      :distractor_1=>"With the facepiece on inhale gently checking for leakage",
                      :distractor_2=>"You don’t have to perform this check if you pass the fit test ",
                      :distractor_3=>"Cover all openings and hold your breath for 10 seconds")
quiz.questions.create!(:prompt=>"Cleaning the facepiece do you? ",
                      :correct_answer=>"Wash in warm water with a mild detergent and rinse",
                      :distractor_1=>"Don’t ever clean it because it will damage it ",
                      :distractor_2=>"Use clean breathing air ",
                      :distractor_3=>"Dip in mild acid and rinse in boiling water")
quiz.questions.create!(:prompt=>"You must have a medical evaluation before you use respiratory protective equipment?",
                       :correct_answer=>"true",
                       :distractor_1=>"false")
quiz.questions.create!(:prompt=>"Your medical records are kept confidential with the medical group.",
                        :correct_answer=>"true",
                        :distractor_1=>"false")
quiz.questions.create!(:prompt=>"What type of respiratory protective equipment would you wear into an IDLH atmosphere?",
                       :correct_answer=>"SCBA-Self contained Breathing Apparatus",
                       :distractor_1=>"Dust mask",
                       :distractor_2=>"APR- Air purifying Respirator",
                       :distractor_3=>"PAPR-Positive pressure Air purifying Respirator")
quiz.questions.create!(:prompt=>"Any type of respirator will work in all type of gases and vapors",
                       :correct_answer=>"false",
                       :distractor_1=>"true")