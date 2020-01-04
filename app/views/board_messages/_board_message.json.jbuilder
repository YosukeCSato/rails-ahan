json.extract! board_message, :id, :message, :board_user_id, :created_at, :updated_at
json.url board_message_url(board_message, format: :json)
