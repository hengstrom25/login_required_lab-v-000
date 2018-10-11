class SecretsController < ApplicationController
  
  def show
    @document = Document.find(params[:id])
  end
  
end