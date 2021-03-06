class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :commentable, polymorphic: true
    has_many :replies, class_name: :Comment, as: :commentable

    has_many :likes, as: :likable
end
