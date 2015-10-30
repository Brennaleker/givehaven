require "amazon_api"
require "nokogiri"
include GiveHavenAPIs

class ItemsController < ApplicationController
  before_action :logged_in
  STRIPE_PERCENTAGE = 0.03
  STRIPE_TRANSACTION = 0.30

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
    @project=Project.find(@item.project_id)
    @project.update(subtotal: calculate_subtotal(@project), processing_fees: calculate_fees(@project) , total_requested: calculate_total(@project))
  end

  private

  def calculate_fees(project)
    @percentage = (@subtotal*STRIPE_PERCENTAGE).ceil
    @flat_fee = (@subtotal/20).ceil * 0.30
    @processing_fees = @percentage + @flat_fee
  end

  def calculate_subtotal(project)
    @subtotal = 0
    project.items.each do |item|
      @subtotal += item.total_cost
    end
    @subtotal
  end

  def calculate_total(project)
    @total_requested = @subtotal + @processing_fees
  end

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
