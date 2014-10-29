class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.integer :value
      t.references :rating_type, index: true
      t.text :description

      t.timestamps
    end
  end
end
