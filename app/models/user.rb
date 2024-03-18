class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  enum userrole: {admin: 0 , editor: 1 , guest: 2}

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable , :trackable , :confirmable
end
