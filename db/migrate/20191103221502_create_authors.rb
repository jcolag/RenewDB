class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.integer :see_also

      t.timestamps
    end

    add_foreign_key :authors, :authors, column: :see_also
  end
end
