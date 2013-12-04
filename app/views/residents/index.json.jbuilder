json.array!(@residents) do |resident|
  json.extract! resident, :name, :uid
  json.url resident_url(resident, format: :json)
end