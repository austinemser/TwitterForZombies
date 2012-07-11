class Zombie < ActiveRecord::Base
  
  has_one :brain
  
  before_save :make_rotting
  
  def make_rotting
    self.rotting = true if age > 20
  end
  
end
