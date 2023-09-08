class CreateEnvironments < ActiveRecord::Migration[7.0]
  def change
    create_table :environments do |t|
      t.string :description
      t.references :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
