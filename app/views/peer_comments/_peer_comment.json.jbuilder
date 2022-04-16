json.extract! peer_comment, :id, :title, :comment, :commenter, :created_at, :updated_at
json.url peer_comment_url(peer_comment, format: :json)
