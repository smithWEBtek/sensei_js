class UserSerializer < ActiveModel::Serializer
	attributes :id, :name, :email
	has_many :teachers
  has_many :links
  has_many :teachings, through: :teachers
end
