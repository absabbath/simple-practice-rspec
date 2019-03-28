class ConsolesController < ApplicationController
  def index
    @consoles = Console.all
  end
end
