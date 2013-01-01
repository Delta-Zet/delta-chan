class Topic < ActiveRecord::Base
  belongs_to :section
  attr_accessible :author, :message, :title, :image, :section_id
  has_attached_file :image, :styles => { :thumb => "200x200>" }
end
