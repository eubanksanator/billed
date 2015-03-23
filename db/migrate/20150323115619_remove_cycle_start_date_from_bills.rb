class RemoveCycleStartDateFromBills < ActiveRecord::Migration
  def change
    remove_column :bills, :cycle_start_date, :string
  end
end
