require "test_helper"

describe RecipesController do
  it "should get list of recipes" do
    VCR.use_cassette("recipes") do
        get 

    end
  end
end
