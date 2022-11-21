class DevsController < ApplicationController
  def index
    @devs = Dev.all
  end
end
