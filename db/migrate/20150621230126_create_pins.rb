class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :image
      t.string :notes

      t.timestamps null: false
    end
  end
end
