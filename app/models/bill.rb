class Bill < ActiveRecord::Base
  belongs_to :user

  validates :name, :due_date, presence: true

end
