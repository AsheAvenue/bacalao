class Person < ActiveRecord::Base
  attr_accessible :name
  has_and_belongs_to_many :projects
  has_and_belongs_to_many :technologies
end
