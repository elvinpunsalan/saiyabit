class DesignsController < ApplicationController
  # GET /designs
  # GET /designs.json
  def index
    @designs = Design.all
  end
end
