class Song < ActiveRecord::Base
  belongs_to :gender

  has_many :song_users
  has_many :users, through: :song_users

  def self.search(search)
  	if where("name LIKE ?","%#{search}%").size > 0
  		where("name LIKE ?","%#{search}%")			
  	else
  		all
  	end
  end
end
