class ExpReservation < ActiveRecord::Base
	belongs_to :user
	belongs_to :experience
	
	validates :user_id, presence: true
	validates :experience_id, presence: true
	validates :data_entrada, presence: true
	validates :data_saida, presence: true
end