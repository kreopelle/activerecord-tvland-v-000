class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    full_name = self.first_name + " " + self.last_name
  end

  def list_roles
    binding.pry
    self.characters.all.each do |c|
      puts "#{c.name} - #{c.show.name}"
    end
  end

end

#Character.find_by(actor_id: self.id).name
# perhaps find_all? 
