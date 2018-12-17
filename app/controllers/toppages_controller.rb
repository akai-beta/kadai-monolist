class ToppagesController < ApplicationController
  def index
    #binding.pry
    @items = Item.order('updated_at DESC')
  end
end
