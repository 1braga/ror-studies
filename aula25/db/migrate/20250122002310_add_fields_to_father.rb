class AddFieldsToFather < ActiveRecord::Migration[8.0]
  def change
    add_column :fathers, :cpf, :string
    add_column :fathers, :email, :string
    add_reference :fathers, :occupation, null: true, foreign_key: true

     # Definir valores padrão para registros existentes
     Father.update_all(occupation_id: Occupation.first.id)

     # Alterar a restrição para NOT NULL
     change_column_null :fathers, :occupation_id, false
  end
end
