class AdminController < ApplicationController
  before_filter :authenticate
  layout 'admin'
  
  def people
    @people = Person.all
  end
  
  def projectstechnologies
    @projects = Project.order("position asc")
    @technologies = Technology.order("position asc")
  end
  
  def addproject
    project = Project.new
    project.name = params[:name]
    project.position = Project.count
    project.save!
    @projects = Project.all
  end
    
  def addtechnology
    technology = Technology.new
    technology.name = params[:name]
    technology.position = Technology.count
    technology.save!
    @technologies = Technology.all
  end
    
  private
  
    def authenticate
      authenticate_or_request_with_http_basic('Administration') do |username, password|
        username == 'ashe' && password == 'avenue'
      end
    end
    
end
