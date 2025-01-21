class CreateChildren < ActiveRecord::Migration[8.0]
  def change
    create_table :children do |t|
      t.string :name
      t.string :sex
      t.references :father, null: false, foreign_key: true

      t.timestamps
    end
  end
end
