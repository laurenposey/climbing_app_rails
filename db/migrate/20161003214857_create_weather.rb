class CreateWeather < ActiveRecord::Migration[5.0]
  def change
    create_table :weathers do |t|
      t.column :zip, :string
      t.column :city, :string
      t.column :state, :string
      t.column :forcast, :string

    end
  end
end
