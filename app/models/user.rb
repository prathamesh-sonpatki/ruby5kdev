class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, 
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
                  :first_name, :last_name,
                  :running_in_pune, :runner_goal, :runner_level
  # attr_accessible :title, :body
  def to_s
    "#{email} (#{admin? ? "Admin" : "User"})"
  end

  def name
    "#{first_name} #{last_name}"
  end
end
