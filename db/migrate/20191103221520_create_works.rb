class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.string :name
      t.integer :author

      t.timestamps
    end
    
    add_foreign_key :works, :authors, column: :author
  end
end
