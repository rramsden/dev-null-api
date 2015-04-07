require 'rails_helper'

RSpec.describe SchemaController, :type => :controller do
  describe "#index" do
    it "ensures the schema is valid" do
      get :index

      # Validate against JSON Schema and Hyperschema formats
      expect(Prmd.verify(JSON.parse(response.body))).to be_empty
    end
  end
end
