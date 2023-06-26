class User < ApplicationRecord
  has_many :prototypes

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :comments
  validates :name, :profile, :occupation, :position, presence: true
end
