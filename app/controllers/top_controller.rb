class TopController < ApplicationController
  def main
    redirect_to products_index_path
  end
end
