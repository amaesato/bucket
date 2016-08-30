class Bucket < ApplicationRecord
  validates_presence_of :name
  belongs_to :user
  has_one :list

  def self.theme
    %w(Everything Adventure Relationship Creativity Entertainment Health Finance Food Just\ Because Personal\ Growth Travel)
  end
end
