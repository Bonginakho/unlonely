class ChangeUser < ActiveRecord::Migration[7.1]
  def change
    change_column_null :journals, :user_id, true
  end
end
