class CreateDriversandcars < ActiveRecord::Migration[6.1]
  def change
    create_table :driversandcars do |t|
      t.integer :car_id
      t.integer :driver_id

      t.timestamps
    end
  end
end
