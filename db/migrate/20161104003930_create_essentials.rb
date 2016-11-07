class CreateEssentials < ActiveRecord::Migration
  def change
    create_table :essentials do |t|
      t.integer "years_active_end"
      t.integer "years_active_start"
      t.string "band_name"
      t.string "country"
      t.integer "studio_albums"
      t.integer "user_id"
      t.string "genre"

      t.timestamps null: false
    end
  end
end
