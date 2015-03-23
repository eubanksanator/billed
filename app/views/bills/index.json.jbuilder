json.array!(@bills) do |bill|
  json.extract! bill, :id, :name, :cycle_start_date, :cycle_end_date, :due_date, :user_id
  json.url bill_url(bill, format: :json)
end
