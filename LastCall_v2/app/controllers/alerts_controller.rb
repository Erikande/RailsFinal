class AlertsController < ApplicationController
	before_action :authenticate_user!
	require 'wmata'
	require 'dish'
	require 'geocoder'
	require 'dish'
	require 'geocoder'
  require 'nokogiri'
  require 'open-uri'

	


  def index
  	@response = HTTParty.get('http://api.wmata.com/Incidents.svc/json/Incidents?api_key=ecunuygraksb9hdkydw8p6r3')
  	@response_rss = HTTParty.get 'http://www.wmata.com/rider_tools/metro_service_status/feeds/rail_Advisories.xml?n'
    @data = @response_rss.parsed_response
  	WMATA.api_key = 'ecunuygraksb9hdkydw8p6r3'

  	@red = WMATA.lines[0]
  	@orange = WMATA.lines[1]
  	@green = WMATA.lines[2]
  	@yellow = WMATA.lines[3]
  	@blue = WMATA.lines[4]

    doc = Nokogiri::XML(open("http://www.metroalerts.info/rss.aspx"))
    @links = doc.xpath('//item').map do |i|
    {  'title' => i.xpath('title').inner_text,
       'link' => i.xpath('link').inner_text, 
       'description' => i.xpath('description').inner_text 
    }



  	end
  end

end

 