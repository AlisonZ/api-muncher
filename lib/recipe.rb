class Recipe
    #add more stuff later
    attr_reader :name, :image, :uri

    def initialize(name, image, uri)
        @name = name
        @image = image
        @uri = uri
    end
end
