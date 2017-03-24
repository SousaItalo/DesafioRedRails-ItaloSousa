class PlaceReservation < ActiveRecord::Base
	belongs_to :user
	belongs_to :place
	
	validates :user_id, presence: true
	validates :place_id, presence: true
	validates :data_entrada, presence: true
	validates :data_saida, presence: true
end