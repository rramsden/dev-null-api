require "rails_helper"

RSpec.describe "storage endpoint", type: :request do
  describe "GET /storage" do
    it "lists the items in the storage" do
      create_list(:storage, 3)
      get "/storage"
    end
  end

  describe "POST /storage" do
    it "creates a new record" do
      post "/storage", key: "key", value: "value"

      expect(response).to match_response_schema("storage")
    end 
  end

  describe "GET /storage/:id" do
    it "retreives a record in storage" do
      record = create(:storage, key: "key", value: "value")
      get "/storage/#{record.id}"

      expect(response).to match_response_schema("storage")
    end  
  end

  describe "DELETE /storage/:id" do
    it "deletes a record from storage" do
      record = create(:storage, key: "key", value: "value") 
      delete "/storage/#{record.id}"

      expect(response).to match_response_schema("storage")
    end 
  end

  def json_body
    JSON.parse(response.body)
  end
end
