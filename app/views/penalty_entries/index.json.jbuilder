json.array!(@penalty_entries) do |penalty_entry|
  json.extract! penalty_entry, :id, :user_id, :penalty_id, :date
  json.url penalty_entry_url(penalty_entry, format: :json)
end
