json.array!(@stylists) do |stylist|
  json.extract! stylist, :id
  json.url stylist_url(stylist, format: :json)
end
