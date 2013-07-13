class Outcome < ActiveRecord::Base
	validates :winner, presence: true, length: { minimum: 5 }
	validates :loser, presence: true, length: { minimum: 5 }
end
