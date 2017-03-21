class ChangePasswdToPasswordDigest < ActiveRecord::Migration[5.0]
  def self.up
   	rename_column :users, :password_digest, :password_digest
 	end

 	def self.down
  	rename_column :users, :password_digest, :password_digest
	end
end
