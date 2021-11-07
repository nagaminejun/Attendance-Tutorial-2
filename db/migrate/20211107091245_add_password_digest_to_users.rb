class AddPasswordDigestToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :password_digest, :string
  end
end
# has_secure_passwordの機能を利用するためにpassword_digestというカラムを作った。