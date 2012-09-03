class SearchSet < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :searches
  attr_accessible :name

  validates :name, presence: true
  validates :user_id, presence: true
end
