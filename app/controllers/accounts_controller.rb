class AccountsController < ApplicationController
  before_action :authenticate_account!
  before_action :set_post,only: [:profile]

  def index
    # user feed
    @posts = Post.active
  end

  def show
    # user profile
  end

  def profile
    @posts = @account.posts.active
  end


  def set_post
    @account =Account.find_by_username(current_account.username)
  end
end
