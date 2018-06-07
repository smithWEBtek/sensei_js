class Teaching < ApplicationRecord
  belongs_to :teacher
  has_many :teaching_keywords
  has_many :keywords, :through => :teaching_keywords
  validates :name, presence: true
  validates :content, presence: true
  validates :media_type, presence: true
  validates :favorite, presence: true
  validates :teacher_id, presence: true
end
