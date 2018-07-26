class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
    	t.integer :postal_code
      t.timestamps
    end
  end
end
