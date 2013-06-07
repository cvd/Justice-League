json.extract! @hero, :name, :secret_identity, :abilities, :created_at, :updated_at
json.url hero_url(@hero, format: :json)
