class Bill < ActiveRecord::Base
  belongs_to :user

  validates :name, :due_date, :reminder, :phone_number, presence: true

end
