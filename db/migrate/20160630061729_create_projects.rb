class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :number
      t.text :department
      t.string :state
      t.text :address
      t.references :plum, index: true

      t.timestamps
    end
  end
end
