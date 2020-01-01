class AlbumsController < ApplicationController
  layout 'albums'

  def index
    @albums = Album.all
  end

  def show
    @album = Album.find(params[:id])
  end

  def add
    @album = Album.new
    if request.post? then
      Album.create(album_params)
      redirect_to '/albums'
      return
    end
  end

  def edit
    @album = Album.find(params[:id])
    if request.get? then
      return
    end
    @album.update(album_params)
    redirect_to '/albums'
  end

  def delete
    @album = Album.find(params[:id])
    if request.get? then
      return
    end
    Album.find(params[:id]).destroy
    redirect_to '/albums'
  end
end

private

def album_params
  params.require(:album).permit(:artist, :title, :year, :format, :price, :rates)
end
