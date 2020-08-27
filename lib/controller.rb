require 'gossip'
require 'view'

class Controller
attr_accessor :view, :gossip, :params

def initialize
  @view = View.new
end

def create_gossip
  params = Hash.new
  params = @view.create_gossip
  @gossip = Gossip.new(params[:author], params[:content])
  @gossip.save
end

def index_gossips
gossip_array = @view.index_gossips(Gossip.all)
end

def destroy
num = @view.destroy
Gossip.destroy(num)
end


end


