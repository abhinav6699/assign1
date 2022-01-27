class Projects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :projects_url
      t.string :tech
      t.text :description

      t.belongs_to :profile, index: true, foreign_key: true

      t.timestamps
    end
  end
end
