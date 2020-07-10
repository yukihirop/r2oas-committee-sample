require 'rails_helper'

RSpec.describe "Tasks", type: :request do
  include Committee::Rails::Test::Methods

  describe 'GET /tasks/:id(.:format)' do
    it 'conform apidoc' do
      create(:task)

      get '/tasks/1.json'
      assert_response_schema_confirm
    end
  end
end
