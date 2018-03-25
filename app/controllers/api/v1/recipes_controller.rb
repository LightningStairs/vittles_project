module Api
  module V1
    class RecipesController < ApiController
      def index
        render json: Recipe.all
      end
    end
  end
end
