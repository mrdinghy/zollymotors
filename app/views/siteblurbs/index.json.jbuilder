json.array!(@siteblurbs) do |siteblurb|
  json.extract! siteblurb, :id, :name, :blurb
  json.url siteblurb_url(siteblurb, format: :json)
end
