class RemoveBandMambersFromEssentials < ActiveRecord::Migration
  def change
  	remove_column :essentials, :band_mambers
  end
end
