require 'rest-client'
require 'json'

Player.destroy_all
Country.destroy_all


countries_url = 'http://api.population.io/1.0/countries/?format=json'
country_names = JSON.parse(RestClient.get(countries_url))
country_statuses = JSON.parse(RestClient.get('http://api.worldbank.org/v2/countries?format=json'))[1]
country_names["countries"].each do |country_name|
  # if country_name == "Central America"
  #   byebug
  # end
  unless country_name == country_name.upcase
    url = "http://api.population.io:80/1.0/mortality-distribution/#{country_name.gsub(' ', '%20').split('/')[0]}/male/0y/today/"
    # byebug
    puts country_name
    mort_response = RestClient.get(url) {|response, request, result| response}
    # byebug

    if mort_response.code == 200
      mortality_distr = JSON.parse(mort_response)["mortality_distribution"]

      status = country_statuses.find {|country| country["name"] == country_name}
      if !!status
        development = status["incomeLevel"]["value"]
      else
        development = nil
      end

      # byebug
      Country.create(name: country_name, mortality_distribution: mortality_distr, development: development)
    end
  end
end
