require "rails_helper"

RSpec.describe Schema, type: :model do
  describe "#validate" do
    it "should return no errors" do
      expect(Schema.new("doc/schema").validate).to be_empty
    end 
  end  
end
