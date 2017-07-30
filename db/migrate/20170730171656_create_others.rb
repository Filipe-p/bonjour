class CreateOthers < ActiveRecord::Migration[5.1]
  def change
    create_table :others do |t|
      t.string :name
      t.float :price
      t.string :description

      t.timestamps
    end
  end
end
