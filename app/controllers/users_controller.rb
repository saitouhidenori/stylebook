class UsersController < ApplicationController

  def index
  end

  def show
     user = User.find(1)
     styles = user.likes.map{ |like| like.style }
     designers = styles.group_by{ |style| style.designer_id }
     designers.inject([]) do |arr, (key, val)|
      arr << { "#{key}" => val.count }
      arr
    end
    @user = current_user
    @likes = Like.find_by(user_id: @user.id)
    @styles = Style.where(id: @style.id)
  end
end
