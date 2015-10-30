require "amazon_api"
require "nokogiri"
include GiveHavenAPIs

class ItemsController < ApplicationController
  before_action :logged_in

  def search_items

  end

  def search
    query = params[:query]
    xml_response = AmazonAPI.search(query).body
    @response = parse_response(xml_response)
    # redirect_to results_path(@current_user.username, params[:id], query)
  end

  def create
    @item = Item.new(item_params[:item])
    @item.total_cost = @item.quantity * @item.price
    @item.save
    redirect_to item_search_path(@current_user.username, @item.project_id)
  end

  private
  def parse_response(response)
    @response = Nokogiri::XML.parse(response)
    @response = Hash.from_xml(@response.to_s)
  end

  def locate_project
    @project = Project.find_by(id: params[:id])
  end

  def item_params
    params.permit(item: [:title, :amazon_id, :project_id, :quantity, :price, :total_cost, :url])
  end

end
