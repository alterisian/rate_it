class CreateRatingTypes < ActiveRecord::Migration
  def change
    create_table :rating_types do |t|
      t.string :name
      t.references :rate, index: true

      t.timestamps
    end
  end
end
