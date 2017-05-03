class Recipe
    #add more stuff later
    attr_reader :name, :image

    def initialize(name, image)
        @name = name
        @image = image
    end
end
