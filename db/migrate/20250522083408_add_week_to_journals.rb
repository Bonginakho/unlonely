class AddWeekToJournals < ActiveRecord::Migration[7.1]
  def change
    add_column :journals, :week, :string
  end
end
