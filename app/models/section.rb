class Section < ActiveRecord::Base
  attr_accessible :description, :position, :slug, :title

  validates :description, :slug, :title, :presence => true
end
