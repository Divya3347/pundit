class Post < ApplicationRecord

  validates :name , presence: true

  validates :platform , presence: true

  validates :date , presence: true

  paginates_per 4
end
