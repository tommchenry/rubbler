class NodesController < ApplicationController
  def index
    @node = Node.new
    @nodes = Node.all
  end

  def create
    @node = Node.new(node_params)
    if @node.save
      flash[:notice] = "Node created successfully."
    else
      flash[:notice] = "ERROR: Node not created."
    end
    redirect_to '/nodes'
  end

  def show

  end

  def edit
    @nodes = Node.all
    @node = Node.find(params[:id])
  end

  def update
    @node = Node.find(params[:id])
    @node.update_attributes(node_params)
    flash[:success] = "Node Updated!"
    redirect_to '/nodes'
  end


  private

  def node_params
    params.require(:node).permit(:name, :text, :img_url, :parent_id)
  end
end
