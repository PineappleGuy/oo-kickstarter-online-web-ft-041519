require 'pry'
class Backer

  attr_accessor :backed_projects
  attr_reader :name

@@backed_projects = []

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    project.backer << self
  end


end
