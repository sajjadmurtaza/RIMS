json.array!(@sponsors) do |sponsor|
  json.extract! sponsor, :id, :title, :url, :description, :avatar
  json.url sponsor_url(sponsor, format: :json)
end
