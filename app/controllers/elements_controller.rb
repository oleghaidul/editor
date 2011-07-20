class ElementsController < ApplicationController

  before_filter :load

  def load
    @elements = Element.all
    @element = Element.new
  end

  def index
  end

  def create
    @element = Element.new(params[:element])
    if @element.save
      flash[:notice] = "Successfully created element."
      @elements = Element.all
    end
  end

  def edit
    @element = Element.find(params[:id])
  end

  def update
    @element = Element.find(params[:id])
    if @element.update_attributes(params[:element])
      flash[:notice] = "Successfully updated element."
      index
      @elements = Element.all
    end
  end

  def destroy
    @element = Element.find(params[:id])
    @element.destroy
    flash[:notice] = "Successfully destroyed element."
    @elements = Element.all
  end
end