RSpec.configure do |config|
  if ENV["RECORD"]
    config.before(:suite) do
      Dir.glob(Rails.root.join("doc/schema/examples/*")).each do |f|
        File.delete(f)
      end
    end

    config.after(:each, type: :request) do
      file_path = Rails.root.join("doc/schema/examples/#{controller.controller_name}.json")

      recording = {
        "verb" => request.method,
        "path" => request.path,
        "request_data" => request.request_parameters,
        "response_data" => JSON.parse(response.body),
        "head" => response.status
      }

      output = {}
      output = JSON.parse(File.read(file_path)) if File.file?(file_path)
      output["#{controller.controller_name}##{controller.action_name}"] = recording

      File.write(file_path, JSON.pretty_generate(output))
    end
  end
end
