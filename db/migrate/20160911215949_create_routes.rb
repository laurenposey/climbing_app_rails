class CreateRoutes < ActiveRecord::Migration[5.0]
  def change
    create_table :routes do |t|
      t.column :kind, :string
      t.column :grade, :float
      t.column :place_id, :integer

      t.timestamps
    end
  end
end
