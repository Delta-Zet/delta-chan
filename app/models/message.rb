class Message < ActiveRecord::Base
  belongs_to :topic
  attr_accessible :author, :image, :message, :topic, :topic_id

  has_attached_file :image, :styles => { :thumb => "200x200>" }

  validates :message, :presence => true
  validates :topic_id, :numericality => { :only_integer => true }

  default_scope order('created_at ASC')
end
