class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  after_initialize :set_defaults
  def set_defaults
  	self.role ||= 'student'
  end
  
end
