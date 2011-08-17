class Image < ActiveRecord::Base
  default_scope order('uses asc')
  
  attr_protected :uses
  validates_presence_of :url
  
  def self.random!
    if (c = count) != 0
      image = first(:offset => rand(c))
      image.uses += 1
      image.save
      image
    end
  end
end
