class CreatePlums < ActiveRecord::Migration
  def change
    create_table :plums do |t|
      t.string :name
      t.text :address
      t.string :city
      t.string :country
      t.integer :phone

      t.timestamps
    end
  end
end
