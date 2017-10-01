class CreateDoughFillings < ActiveRecord::Migration[5.1]
  def change
    create_table :dough_fillings do |t|
      t.references :dough, foreign_key: true
      t.references :filling, foreign_key: true
      t.timestamps
    end
  end
end
