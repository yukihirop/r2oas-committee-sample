require 'rails_helper'

RSpec.describe "Tasks", type: :request do
  describe 'GET /tasks/:id(.:format)' do
    it 'conform apidoc' do
      create(:task)

      get '/tasks/1.json'
    end
  end
end
