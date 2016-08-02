class UserSongsController < ApplicationController
	def new
	    @songs = Song.all
	  end

	  def create
	    @user_song = SongUser.new()
			@user_song.user = current_user

			render json:params
		end
end
