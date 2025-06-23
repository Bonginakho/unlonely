class AddWeekNumberToJournals < ActiveRecord::Migration[7.1]
  def change
    add_column :journals, :week_number, :integer
  end
end
