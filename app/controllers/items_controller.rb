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
  end

  private
  def parse_response(response)
    @response = Nokogiri::XML.parse(response)
    @response = Hash.from_xml(@response.to_s)
  end

  def locate_project
    @project = Project.find_by(id: params[:id])
  end

end
