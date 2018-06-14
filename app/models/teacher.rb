class Teacher < ApplicationRecord
  belongs_to :user
  has_many :teachings
  validates :name, presence: true

  #
  # def whats_wrong
  #   @teacher.errors.full_message
  # end
end
