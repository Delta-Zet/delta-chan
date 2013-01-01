class Section < ActiveRecord::Base
  attr_accessible :description, :position, :slug, :title

  validates :description, :slug, :title, :presence => true
  validates :position, :numericality => { :only_integer => true }
end
