class Gossip < ApplicationRecord
	belongs_to :user
	has_many :tags_in_gossips
	has_many :comments
	has_many :likes, as: :element_liked
end
