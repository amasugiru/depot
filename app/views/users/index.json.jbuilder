json.array!(@users) do |user|
  json.extract! user, :id, :name, :pasword_digest
  json.url user_url(user, format: :json)
end
