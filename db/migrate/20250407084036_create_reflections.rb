class CreateReflections < ActiveRecord::Migration[7.1]
  def change
    create_table :reflections do |t|
      t.references :journals, null: false, foreign_key: true
      t.string :title
      t.text :writing
      t.timestamps
    end
  end
end
