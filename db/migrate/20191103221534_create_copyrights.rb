class CreateCopyrights < ActiveRecord::Migration[6.0]
  def change
    create_table :copyrights do |t|
      t.string :date
      t.string :ref_number
      t.string :applicant_name
      t.integer :work

      t.timestamps
    end
    
    add_foreign_key :copyrights, :works, column: :work
  end
end
