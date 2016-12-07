class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :transactions
  has_many :presentations
  has_many :friendships
  has_many :users, through: :friendships
  has_many :skills

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" },
                    default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  def self.user_name(user_id)
    User.find(user_id).user_name
  end

  def friends?(user_id, friend_id)
    User.find(user_id).friendships.find_by(friend_id: friend_id)
  end

  def bio
  end
end
