class SchemaController < ApplicationController
  def index
    render json: Schema.new(Rails.root.join("doc/schema")).to_json
  end
end
