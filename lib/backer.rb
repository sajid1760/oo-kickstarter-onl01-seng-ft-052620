
class Backer
  
attr_accessor :name, :backed_projects

def initialize(name)
  @name = name
  @backed_projects = []
end

def back_project(project)
  existingproject = @backed_projects.find { |oldproject| oldproject == project }
  if existingproject == nil then
    @backed_projects << project
    project.add_backer(self)
  end
end 

end


