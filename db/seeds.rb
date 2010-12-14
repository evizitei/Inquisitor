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
quiz.questions.create!(:id=>1,
                       :prompt=>"By OSHA standards you are allowed to have hair growth"\
                                " between the facepiece sealing surface and skin.",
                       :correct_answer=>"false",
                       :distractor_1=>"true")
                       
quiz.questions.create!(:id=>2,
                       :prompt=>"There are 2 types of accepted fit test procedures which"\
                                " type does BCFD/MO-TF1 use?",
                       :correct_answer=>"Quantitative",
                       :distractor_1=>"Qualitative")
quiz.questions.create!(:id=>3,
                       :prompt=>"You must perform a seal check every time you don a facepiece"\
                                "For respiratory protection.",
                       :correct_answer=>"true",
                       :distractor_1=>"false")
quiz.questions.create!(:id=>4,
                       :prompt=>"How do you perform a facepiece positive pressure check? ",
                       :correct_answer=>"Cover the exhalation valve and exhale gently, looking for outward leakage",
                       :distractor_1=>"Cover the inlet valve and inhale",
                       :distractor_2=>"Blow air into the facepiece",
                       :distractor_3=>"Follow manufacture’s procedures")
quiz.questions.create!(:id=>5,
                       :prompt=>"How do you perform a facepiece negative pressure check? ",
                      :correct_answer=>"Cover air inlets to cartridges, air regulator openings ext and inhale gently"\
                                       " so the facepiece collapses slightly and no inward leakage is detected",
                      :distractor_1=>"With the facepiece on inhale gently checking for leakage",
                      :distractor_2=>"You don’t have to perform this check if you pass the fit test ",
                      :distractor_3=>"Cover all openings and hold your breath for 10 seconds")
quiz.questions.create!(:id=>6,
                      :prompt=>"Cleaning the facepiece do you? ",
                      :correct_answer=>"Wash in warm water with a mild detergent and rinse",
                      :distractor_1=>"Don’t ever clean it because it will damage it ",
                      :distractor_2=>"Use clean breathing air ",
                      :distractor_3=>"Dip in mild acid and rinse in boiling water")
quiz.questions.create!(:id=>7,
                       :prompt=>"You must have a medical evaluation before you use respiratory protective equipment?",
                       :correct_answer=>"true",
                       :distractor_1=>"false")
quiz.questions.create!(:id=>8,
                        :prompt=>"Your medical records are kept confidential with the medical group.",
                        :correct_answer=>"true",
                        :distractor_1=>"false")
quiz.questions.create!(:id=>9,
                       :prompt=>"What type of respiratory protective equipment would you wear into an IDLH atmosphere?",
                       :correct_answer=>"SCBA-Self contained Breathing Apparatus",
                       :distractor_1=>"Dust mask",
                       :distractor_2=>"APR- Air purifying Respirator",
                       :distractor_3=>"PAPR-Positive pressure Air purifying Respirator")
quiz.questions.create!(:id=>10,
                       :prompt=>"Any type of respirator will work in all type of gases and vapors",
                       :correct_answer=>"false",
                       :distractor_1=>"true")
                       
                       
quiz = Quiz.find_or_create_by_name("Blood Bourne Pathogens")
quiz.update_attributes(:pass_percentage=>75)

quiz.questions.create!(:id=>11,
                       :prompt=>"The term \"Bloodborne Pathogen\" means:",
                        :correct_answer=>"Pathogenic microorganisms that are present in human blood and can cause disease in humans",
                        :distractor_1=>"Viral infectious diseases that are carried strictly in human blood",
                        :distractor_2=>"Bacterial infectious diseases that are carried strictly in human blood.",
                        :distractor_3=>"Pathogenic microorganisms that are present in human blood and can cause no diseases in humans.")

quiz.questions.create!(:id=>12,
                       :prompt=>"The scope of the Bloodborne Pathogens standard is not limited to employees in Healthcare Professions.",
                        :correct_answer=>"true",
                        :distractor_1=>"false")

quiz.questions.create!(:id=>13,
                       :prompt=>"The most common cause of exposure is:",
                        :correct_answer=>"Needle Sticks",
                        :distractor_1=>"Blood spilled on surfaces.",
                        :distractor_2=>"Urine and Fecal Matter contact",
                        :distractor_3=>"Contact of bodily fluids with mucous membranes.")

quiz.questions.create!(:id=>14,
                       :prompt=>"Engineered controls to isolate workers from contaminated sharps include:",
                        :correct_answer=>"All of these",
                        :distractor_1=>"Sharps boxes",
                        :distractor_2=>"Needleless Systems",
                        :distractor_3=>"Self-sheathing needles")

quiz.questions.create!(:id=>15,
                       :prompt=>"Bending, breaking or cutting off needles is an acceptable alternative to sharps boxes even if they are available.",
                        :correct_answer=>"false",
                        :distractor_1=>"true")

quiz.questions.create!(:id=>16,
                       :prompt=>"Hepatitis B Vaccine is provided free of charge to the members of BCFPD and MO TF-1.",
                        :correct_answer=>"true",
                        :distractor_1=>"false")

quiz.questions.create!(:id=>17,
                       :prompt=>"Members of BCFPD and MO TF-1 cannot decline taking the Hepatitis B Vaccine.",
                        :correct_answer=>"false",
                        :distractor_1=>"true")

quiz.questions.create!(:id=>18,
                       :prompt=>"When dealing with a patient who may have a communicable disease, the appropriate PPE would include:",
                        :correct_answer=>"All of these",
                        :distractor_1=>"Gloves (latex or no)",
                        :distractor_2=>"Eye protection",
                        :distractor_3=>"Surgical mask or N95 respirator")

quiz.questions.create!(:id=>19,
                       :prompt=>"Individual member medical records are confidential and kept:",
                        :correct_answer=>"Accessible only to the member and to the Fire District’s occupational health physician or the members personal physician",
                        :distractor_1=>"Accessible only to the member. ",
                        :distractor_2=>"Accessible only to the Fire District’s occupational health physician or the members personal physician.",
                        :distractor_3=>"All other answers AND Fire District administration")

quiz.questions.create!(:id=>20,
                       :prompt=>"The best practice for the members to protect themselves from  possible exposure to bloodborne pathogens is/are to:",
                        :correct_answer=>"all of these",
                        :distractor_1=>"Practice good hygiene (hand washing)",
                        :distractor_2=>"Wear appropriate PPE",
                        :distractor_3=>"A. Receive vaccinations and boosters")

