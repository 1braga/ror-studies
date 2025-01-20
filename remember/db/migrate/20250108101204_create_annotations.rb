class CreateAnnotations < ActiveRecord::Migration[8.0]
  def change
    create_table :annotations do |t|
      t.text :body

      t.timestamps
    end
  end
end
