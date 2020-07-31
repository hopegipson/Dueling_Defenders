class APIService
    #Check Chett announcements for hiding your key from pushes
    BASE_URI = "https://www.superheroapi.com/api.php/2727069054248160/search/"

    def get_hero_by_name(name)
        #need to make it possible to search heroes that have two word names
        namestring =name.gsub(" ", "_")


        uri = URI(BASE_URI + "#{namestring}")
        heroes = make_request(uri)
        heroresults = heroes["results"]
        if heroresults!= nil
            @hero1 = Hero.new(heroresults[0])
            heroresults.each do|result|
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