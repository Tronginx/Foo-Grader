json.extract! peer_evaluation, :id, :title, :grade, :comment, :commenter, :created_at, :updated_at
json.url peer_evaluation_url(peer_evaluation, format: :json)
