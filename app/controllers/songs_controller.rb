class SongsController < ApplicationController
    def index
        @songs = Song.all
    end

    def show
        @songs = Song.find(params[:id])
    end

    def new
        @songs = Song.new
    end
    
    def create
        @songs = Song.new(songs_params)
        @songs.save
        redirect_to songs_path(@songs)
    end

    def edit
        @songs = Song.find(params[:id])
    end

    def update
        @songs = Song.find(params[:id])
        @songs.update(songs_params)
        redirect_to songs_path(@songs)
    end

    private
        
        def songs_params
            params.require(:song).permit(:name)
        end

    
end
