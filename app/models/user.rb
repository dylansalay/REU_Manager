class User < ApplicationRecord
  rolify

  devise :database_authenticatable, :recoverable,
         :rememberable, :trackable, :validatable,
         :lockable, :timeoutable, :confirmable,
         :registerable

  belongs_to :application, dependent: :destroy, optional: true

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
