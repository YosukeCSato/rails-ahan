class BoardMessage < ApplicationRecord
  validates: :message, presence: { message: 'は、必須項目です。' }
end
