class Quiz < ActiveRecord::Base
  has_many :questions
  has_many :attempts
end
