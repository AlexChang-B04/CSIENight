class Question < ApplicationRecord
	validates :title, presence: :true
	validates :spec, presence: :true
	validates :answer, presence: :true
	validates :rewardpoint, presence: :true
	validates :punishpoint, presence: :true

	has_many :submissions, dependent: :destroy

	def correct?(solution)
		solution == answer
	end
end
