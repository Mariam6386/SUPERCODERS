class DevsController < ApplicationController
  def new
    @dev = Dev.new
  end
end
