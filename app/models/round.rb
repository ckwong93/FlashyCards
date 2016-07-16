class Round < ActiveRecord::Base
  # Remember to create a migration!
  has_one :deck
  belongs_to :user
  has_many :guesses
end
