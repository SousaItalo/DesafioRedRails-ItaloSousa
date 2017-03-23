class Experience < ActiveRecord::Base
	#Cada obj Experience deve estar associdado a um obj User
	belongs_to :user

	mount_uploader :picture, ImageUploader

	before_save {self.name = name.capitalize}

	#Todos os campos não podem estar vazio, o campo people_qtd deve ser numérico
	validates :name, presence: true
	validates :description, presence: true
	validates :people_qtd, presence: true, numericality: { only_integer: true }
	validates :country, presence: true
	validates :city, presence: true
	validates :user_id, presence: true
	validates :picture, presence: true
	validates :price, presence: true, numericality: true

end