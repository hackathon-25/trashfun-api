# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    render html: "This is the TrashFun API"
  end
end
