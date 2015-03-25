class AddPhoneNumberToBills < ActiveRecord::Migration
  def change
    add_column :bills, :phone_number, :string
  end
end
