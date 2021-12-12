json.extract! team, :id, :name, :User.belongs_to, :created_at, :updated_at
json.url team_url(team, format: :json)
