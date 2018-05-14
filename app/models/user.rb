class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :assignments, dependent: :destroy
  accepts_nested_attributes_for :assignments

  has_many :roles, through: :assignments
  has_many :rights, through: :assignments

  def can?(action, resource)
    roles.joins(:rights).for(action, resource).any?
  end

end
