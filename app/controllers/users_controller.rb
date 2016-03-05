class UsersController < ApplicationController

  def index
  end

  def show
     @styles = current_user.likes.map{ |like| like.style }

     styles = current_user.likes.map{ |like| like.style }
     designers = styles.group_by{ |style| style.designer_id }
     arr = designers.inject([]) do |arr, (key, val)|
        arr << { key => val.count }
     end
     @designers = arr.sort { |a, b| b.values[0] <=> a.values[0] }.map{|i| i.keys[0]}.map{|i| Designer.find(i)}

    # current_user.(params[id]).like.class

    # Style.all.sort_by{|style|style.likes.count}
    # @user = current_user
    # @likes = Like.find_by(user_id: @user.id)
    # @styles = Style.where(id: @style.id)
    end
  end
