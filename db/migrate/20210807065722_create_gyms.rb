class CreateGyms < ActiveRecord::Migration[6.1]
  def change
    create_table :gyms do |t|
      t.integer :number
      t.string :gyms
      t.string :area
      t.string :google_map_url

      t.timestamps
    end
  end
end
