class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :company
  # belongs_to :role
  mount_uploader :image, AvatarUploader

  rolify :role_cname => 'Class', :role_join_table_name => 'my_join_table', :before_add => :before_add_method

  def before_add_method(role)
    # do something before it gets added
  end
end