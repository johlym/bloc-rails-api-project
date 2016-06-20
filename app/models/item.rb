class Item < ActiveRecord::Base
  belongs_to :list
  belongs_to :user
  validates :entry, :priority, :list_id, :user_id, :presence => true
end
