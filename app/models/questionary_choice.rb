class QuestionaryChoice < ApplicationRecord
  validates :content, :value, presence: { message: 'は、必須項目です。' }
  validates :value, numericality: { message: 'は、数字で入力してください。' }
end
