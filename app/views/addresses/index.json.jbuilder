json.array!(@addresses) do |address|
  json.extract! address, :id, :street, :mail_stop, :region, :country, :postal_code
  json.url address_url(address, format: :json)
end
