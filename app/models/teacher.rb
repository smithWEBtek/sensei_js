class Teacher < ApplicationRecord
  belongs_to :user
  has_many :teachings
  validates :name, presence: true

  def self.most_common
    @teachers = current_user.teachers
    @teachers.each do |teacher|
      teacher.teachings.size
    end
    # @most_common = current_user.size.sort.take(1)
    binding.pry
  end
end
