class Recipe
    #add more stuff later
    attr_reader :name, :image, :uri, :ingredients, :link, :dietary_info

    def initialize(name, image, uri, options = {})
        @name = name
        @image = image
        @uri = URI.escape(uri)
        @ingredients = options[:ingredients]
        @link = options[:link]
        @dietary_info = options[:dietary_info]

    end
end
