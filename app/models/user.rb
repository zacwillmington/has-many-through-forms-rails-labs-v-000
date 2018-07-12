class User < ActiveRecord::Base
  has_many :comments
  has_many :posts, through: :comments

  def user_attributes=(attributes)
      binding.pry
      if attributes[:username] != ""
          User.find_or_create_by(attributes[:username])
      end
  end
end
