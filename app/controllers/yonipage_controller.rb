class YonipageController < ApplicationController
  def team
  end

  def index
  end

  def contact
  end

  def new_gossip
  end

  def new_gossip_post
    user = User.new
    user_gossip = Gossip.new
    user.first_name = params['gossip_author']
    user_gossip.content = params['gossip_content']
    user_gossip.title = params['gossip_title']
    user.save
    user_gossip.user_id = user.id
    user_gossip.save
    puts "voila ce que je veux recuperer : #{params['gossip_author']}"
    redirect_to '/'
  end

  def gossip
    @user = User.find(params[:user_gossip])
  end
end

