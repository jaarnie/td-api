require 'rails_helper'

RSpec.describe 'Users API', type: :request do 
  let!(:users) { create_list(:user, 5)}
  let(:user_id) { users.first.id}

  describe 'GET /api/v1/users' do 
    before { get '/api/v1/users'}

    it "returns 'Invalid Request' if user not signed in" do 
      expect(response).to have_http_status(401)
      expect(response.body).to match("{\"error\":\"Invalid Request\"}")
    end
  end

end
