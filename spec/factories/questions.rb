Factory.define :question do |q|
  q.prompt "What is your answer"
  q.correct_answer "A"
  q.distractor_1 "B"
  q.distractor_2 "C"
  q.distractor_3 "D"
end