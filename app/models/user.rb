class User < ActiveRecord::Base
	
	# Um usuário pode possuir mais de um local para alugar
	has_many :places

	# Um usuário pode prover mais de uma experiencia 
	has_many :experiences

	#Um usuário pode possui varias reservas de lugar e experiencia
	has_many :place_reservations
	has_many :exp_reservations
	
	
	before_save {self.email = email.downcase}
	before_save {self.name = name.capitalize}
	# Validacoes para classe User
	# Campos name, username, email e passwd nao devem ser vazios
	# Campos username, email devem ser unicos na base de dados
	# Verificar se email esta no formato(exempĺo@exemplo.com) via expressao regular
	validates :name, presence: true
	
	validates :username, presence: true, 
						uniqueness: { case_sensitive: false }, 
						length: {minimum: 4, maximum: 12}
	
	VALID_EMAIL_REGEX= /\A[\w+\-.]+@[a-z][a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, 
						format: {with: VALID_EMAIL_REGEX}
	
	validates :password_digest, presence: true

	has_secure_password

end