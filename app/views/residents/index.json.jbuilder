json.array!(@residents) do |resident|
  json.extract! resident, :name, :fbid
  json.url resident_url(resident, format: :json)
end