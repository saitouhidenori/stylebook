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
    @userlikedesigners = user.like.designers
  end
end
