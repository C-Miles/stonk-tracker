# frozen_string_literal: true

class StocksController < ApplicationController
  def search
    stock = Stock.new_lookup(params[:stock])
    render json: stock
  end
end