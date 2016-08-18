json.array!(@sites) do |site|
  json.extract! site, :id, :TelNumber, :Municipality, :State, :Colony, :OutdoorNumbe, :IndoorNumbe, :Name, :Latitud, :Longitud, :score, :businessmans, :Description
  json.url site_url(site, format: :json)
end
