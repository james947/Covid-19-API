class AddIslatestToCountriesData < ActiveRecord::Migration[6.0]
  def change
    add_column :countries_data, :latest, :boolean, default: false
    #Ex:- :default =>''
  end
end
