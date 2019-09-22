class Post < ApplicationRecord
  belongs_to :subject
  with_options presence: true do
    validates :content
    validates :period
    validates :rate
  end
end
