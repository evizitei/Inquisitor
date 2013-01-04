class Student < ActiveRecord::Base
  has_many :attempts

  def email
  	"#{self.organization_id}@bcfdmo.com"
  end

  def self.find_by_formatted_organization_id(entered_id)
    self.find_by_organization_id(entered_id.upcase)
  end
end
