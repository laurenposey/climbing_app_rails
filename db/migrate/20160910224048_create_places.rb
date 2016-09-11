class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.column :name, :string
      t.column :street_address, :string
      t.column :city, :string
      t.column :state, :string
      # t.column :is_indoor, :boolean, default: true

      t.timestamps
    end
  end
end
