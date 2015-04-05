RSpec::Matchers.define :match_response_schema do |resource|
  match do |response|
    schema_path = Rails.root.join("doc/schema")
    schema = Schema.new(schema_path).to_h
    data = JSON.parse(response.body)

    JSON::Validator.validate!(schema, data, :fragment => "#/definitions/#{resource}")
  end
end
