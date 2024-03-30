json.extract! team, :id, :name, :first_name, :role, :image, :link, :created_at, :updated_at
json.url team_url(team, format: :json)
