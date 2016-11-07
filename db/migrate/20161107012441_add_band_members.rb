class AddBandMembers < ActiveRecord::Migration
  def change
  	add_column :essentials, :band_members, :string
  end
end
