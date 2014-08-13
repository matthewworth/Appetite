class PubsController < ApplicationController
  def index
  	@pubs = Pubs.all.order('created_at DESC')
  end
end
