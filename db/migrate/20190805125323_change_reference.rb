class ChangeReference < ActiveRecord::Migration[5.2]
  def change
  	rename_column :cities, :country_id, :state_id
  end
end
