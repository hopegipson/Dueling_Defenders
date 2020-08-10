class APIService
    #user should use terminal to assign API_KEY environmental variable before running. Details in README.
    key = ENV['API_KEY']

    BASE_URI = "https://www.superheroapi.com/api.php/#{key}/search/"

    def get_hero_by_name(name)
        @namestring =name.gsub(" ", "_")
        uri = URI(BASE_URI + "#{@namestring}")
        heroes = make_request(uri)
        heroresults = heroes["results"]
        
        if heroresults!= nil
            lookforexactmatchinresults(heroresults)
            @hero1
        else
            "No hero like that exists"
        end
     end
    

    def make_request(uri)
        response = Net::HTTP.get_response(uri)
        JSON.parse(response.body)
      end

    def lookforexactmatchinresults(arrayname)
        foundhero = arrayname.detect {|result| result["name"].to_s.downcase == @namestring.downcase}
        if foundhero!= nil
            @hero1 = Hero.new(foundhero)
        else
            @hero1 = Hero.new(arrayname[0])
        end
    end

end