def new
  @user= current_user
  @recipe = Recipe.new
end

def edit
  @recipe = Recipe.find(params[:id])
end

def create
  @user= current_user
  @recipe = Recipe.new(recipe_params)
  if @recipe.save
    redirect_to @recipe
  else
    render :new
  end
end


def show
  @recipe= Recipe.find(params[:id])
  @ingredients= Ingredient.where(recipe_id: @recipe)
end
