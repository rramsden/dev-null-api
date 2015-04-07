require "rails_helper"

RSpec.describe "trash endpoint", type: :request do
  describe "GET /trash" do
    it "lists the items in the trash" do
      get "/trash"
    end
  end

  describe "POST /trash" do
    it "creates a new record" do
      post "/trash", key: "key", value: "value"

      # expect(response).to match_response_schema("trash")
    end 
  end

  describe "GET /trash/:id" do
    it "retreives a record in trash" do
      get "/trash/key"

      # expect(response).to match_response_schema("trash")
    end  
  end

  describe "DELETE /trash/:id" do
    it "deletes a record from trash" do
      delete "/trash/key"

      # expect(response).to match_response_schema("trash")
    end 
  end

  def json_body
    JSON.parse(response.body)
  end
end
