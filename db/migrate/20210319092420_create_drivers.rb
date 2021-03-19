class CreateDrivers < ActiveRecord::Migration[6.1]
  def change
    create_table :drivers do |s|
      s.string :name
      s.string :email
      s.date :birth_date

      s.timestamps
    end
  end
end
