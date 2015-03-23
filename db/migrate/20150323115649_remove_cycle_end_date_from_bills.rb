class RemoveCycleEndDateFromBills < ActiveRecord::Migration
  def change
    remove_column :bills, :cycle_end_date, :string
  end
end
