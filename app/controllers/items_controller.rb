require "amazon_api"
require "nokogiri"
include GiveHavenAPIs

class ItemsController < ApplicationController
  before_action :logged_in

  def search
  end

  def new
    locate_project
  end

  def index
    # search
    # locate_item
    # @response = AmazonAPI.search.body
    xml_response = AmazonAPI.search.body
    # render json: parse_response(xml_response), status: :ok
    @response = parse_response(xml_response)
    # @response = Hash.from_xml(xml_response).to_json
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
