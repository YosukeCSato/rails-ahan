json.extract! board_user, :id, :nickname, :account_id, :introduce, :created_at, :updated_at
json.url board_user_url(board_user, format: :json)
