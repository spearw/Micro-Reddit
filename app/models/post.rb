class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
            length: {in: 5..20}

end
