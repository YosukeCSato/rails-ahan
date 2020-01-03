class QuestionaryResult < ApplicationRecord
  validates :result, presence: { message: 'は、必須項目です。' }
end
