class User < ApplicationRecord
  has_many :prototypes

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, :profile, :occupation, :position, presence: true
end
