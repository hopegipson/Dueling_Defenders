class APIService
    #Hiding my own key to API in environmental variable
    key = ENV['API_KEY']

    BASE_URI = "https://www.superheroapi.com/api.php/#{key}/search/"

    def get_hero_by_name(name)
        # to make it possible to search heroes that have two word names, ie Green Arrow
        namestring =name.gsub(" ", "_")


        uri = URI(BASE_URI + "#{namestring}")
        heroes = make_request(uri)
        heroresults = heroes["results"]
        if heroresults!= nil
            #a default value of the first index if there is no exact match, if there is an exact match, we want to use the first exact match. ie Superman, not Cyborg Superman
            @hero1 = Hero.new(heroresults[0])
            heroresults.find do|result|
            name1 =  result["name"].to_s
                if name1.downcase == name.downcase
                 @hero1 = Hero.new(result)
                end
            end
                 @hero1
        else
            "No hero like that exists"
        end
     end
    

    def make_request(uri)
        response = Net::HTTP.get_response(uri)
        JSON.parse(response.body)
      end
end