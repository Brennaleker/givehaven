require "amazon_api"
require "nokogiri"
include GiveHavenAPIs

class ItemsController < ApplicationController
  before_action :logged_in

  def index
    # search
    # locate_item
    # @response = AmazonAPI.search.body
    xml_response = AmazonAPI.search.body
    @response = Nokogiri::XML.parse(xml_response)
    @response = Hash.from_xml(@response.to_s)
  end


  private



end
