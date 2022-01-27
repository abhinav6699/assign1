class Experience < ActiveRecord::Migration[6.1]
  def change
    create_table :experience do |t|
      t.string :company
      t.string :position
      t.text :description
      t.date :joining
      t.date :ending

      t.belongs_to :profile, index: true, foreign_key: true

      t.timestamps
    end
  end
end
