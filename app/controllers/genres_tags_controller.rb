class GenresTagsController < ApplicationController

  def create

    genre = Genre.find(params[:genre_id])
    tag = Tag.find_or_create_by(title: params[:tag][:title])
    if genre.tags.include?(tag)
     notice = {notice: 'relación ya existe'}
   else
    genre.tags << tag
     notice = {notice: 'relación agregada'}
   end

    genre.save
    redirect_to root_path, notice
  end

  def destroy
    @genre = Genre.find(params[:genre_id])
    @tag = Tag.find(params[:tag_id])

    @genre.tags.delete(@tag)

    redirect_to root_path, {notice: 'death tag.....RIP'}


  end

end
