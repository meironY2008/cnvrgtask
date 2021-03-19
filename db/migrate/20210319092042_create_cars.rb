class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :title
      t.string :type
      t.string :color
      t.string :driver_name

      t.timestamps
    end
  end
end
