require 'httparty'

class Recipe
	include HTTParty
 ENV["FOOD2FORK_KEY"]= '89d3361a2062f643348cc208e69d1c94'
  base_uri "http://food2fork.com/api"
  default_params key: ENV["FOOD2FORK_KEY"]
  format :json

  def self.for (keyword)
    get("/search", query: {q: keyword})["recipes"]
  end
end
