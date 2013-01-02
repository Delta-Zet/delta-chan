class Topic < ActiveRecord::Base
  belongs_to :section
  has_many :messages
  attr_accessible :author, :message, :title, :image, :section_id
  has_attached_file :image, :styles => { :thumb => "200x200>" }

  validates :message, :title, :presence => true
  validates :section_id, :numericality => { :only_integer => true }

  default_scope order('created_at DESC')
end
