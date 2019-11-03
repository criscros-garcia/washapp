class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :cars

  enum role: %i[admin client partner]
  
  after_initialize do
    self.role ||= :client if new_record?
  end
end
