class Project
  attr_accessor :title, :backers
  # attr_reader :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    self.backers << backer
    backer.back_project(self) unless backer.backed_projects.include?(self)
  end

end
