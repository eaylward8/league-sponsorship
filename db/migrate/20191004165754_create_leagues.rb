class CreateLeagues < ActiveRecord::Migration[5.2]
  def change
    create_table :leagues do |t|
      t.string :name, null: false
      t.column :lat_long, 'point', null: false
      t.integer :price, null: false
    end
  end
end
