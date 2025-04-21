class ChangeForeignKeyinReflections < ActiveRecord::Migration[7.1]
  def change
    remove_foreign_key :reflections, :journals, column: :journals_id
    rename_column :reflections, :journals_id, :journal_id
    add_foreign_key :reflections, :journals, column: :journal_id
  end
end
