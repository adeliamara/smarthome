class CreateDevices < ActiveRecord::Migration[7.0]
  def change
    create_table :devices do |t|
      t.string :description
      t.boolean :online
      t.boolean :on
      t.boolean :active
      t.references :environment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
