class User < ActiveRecord::Base
  has_many :wikis, dependent: :destroy
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  after_initialize :set_role
  
  def admin?
    role == 'admin'
  end
  
  def premium_user?
    role == 'premium_user'
  end
  
  def set_role
    self.role ||= 'standard_user'
  end




end
