json.array!(@heroes) do |hero|
  json.extract! hero, :name, :secret_identity, :abilities
  json.url hero_url(hero, format: :json)
end