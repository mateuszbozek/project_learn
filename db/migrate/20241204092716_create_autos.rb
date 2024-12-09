class CreateAutos < ActiveRecord::Migration[7.2]
  def change
    create_table :autos do |t|
      t.timestamps
      t.string :name
    end
  end
end
