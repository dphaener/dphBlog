class Post < ActiveRecord::Base
	has_many :comments
	accepts_nested_attributes_for :comments, :allow_destroy => true
	validates :title, presence: true,
                    length: { minimum: 5 }
end
