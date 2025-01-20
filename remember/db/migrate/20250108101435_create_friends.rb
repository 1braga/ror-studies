class CreateFriends < ActiveRecord::Migration[8.0]
  def change
    create_table :friends do |t|
      t.string :nome
      t.string :address
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
