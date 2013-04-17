class Technology < ActiveRecord::Base
  attr_accessible :name, :position
  has_and_belongs_to_many :people
  has_and_belongs_to_many :projects
end
