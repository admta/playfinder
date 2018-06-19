class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  after_create :create_bucket_list

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :events, through: :bucket_list
  has_many :places, through: :bucket_list
  has_one :bucket_list

  def create_bucket_list
    @bucket_list = BucketList.new
    @bucket_list.user = self
    @bucket_list.save
  end
end
