RSpec.configure do |config|
  config.include Committee::Rails::Test::Methods

  config.add_setting :committee_options
  config.committee_options = {
    schema_path: Rails.root.join('oas_docs', 'oas_doc.yml').to_s,
    parse_response_by_content_type: false
  }

  config.after(:each) do |example|
    next unless example.metadata[:type] == :request
    assert_schema_conform
  end
end
