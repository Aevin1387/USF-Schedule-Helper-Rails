class SearchSetsController < ApplicationController
  before_filter :authenticate_user!
  respond_to :html

  def index
    @searchSets = current_user.search_sets
  end

  def new
    @searchSet = SearchSet.new
    @searches = current_user.searches
    @searchBoxes = @searches.map { |search| [search, search.name] }
  end

  def create
    @searchSet = SearchSet.new params[:searchSet]
    @searchSet.user_id = current_user.id
    if @searchSet.save
      flash[:success] = "Search Set created"
      redirect_to(current_user.search_sets)
    else
      render 'new'
    end
  end

  def show
    @searchSet = SearchSet.find(params[:id])
    @searches = @searchSet.searches
  end

  def edit
    @searchSet = SearchSet.find(params[:id])
  end

  def update
     @searchSet = SearchSet.find(params[:id])
    
    if @searchSet.update_attributes(params[:searchSet])
      flash[:success] = "Search Set updated"
      redirect_to current_user.search_sets
    else 
      render 'edit'
    end
  end

  def destroy
    @searchSet = SearchSet.find(params[:id])
    if @searchSet.delete
      flash[:success] = "Search Set delete"
    end

    redirect_to current_user.search_sets
  end
end
