require "test_helper"

describe RecipesController do
    describe "index" do
        it "should get list of recipes" do
            VCR.use_cassette("recipes") do
                get recipes_path
                must_respond_with :success
            end
        end
    end

    describe "show" do
        it "should show an individual recipe" do
            VCR.use_cassette("recipe") do
                get recipes_path
                must_respond_with :success
            end
        end

    end
end
