class AddReminderToBills < ActiveRecord::Migration
  def change
    add_column :bills, :reminder, :datetime
  end
end
