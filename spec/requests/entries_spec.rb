# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Entries API', type: :request do
  # initialize test data
  let(:user) { create(:user) }
  let(:therapist) { create(:therapist) }
  let!(:entries) { create_list(:entry, 10, user_id: user.id) }
  let(:entry_id) { entries.first.id }
  let(:headers) { valid_headers }

  # Test suite for GET api/v1/entries
  describe 'GET /api/v1/entries' do
    # make HTTP get request before each example
    before { get "/api/v1/entries/#{entry_id}", params: {}, headers: headers }

    it 'returns entries' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(8)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET api/v1/entries/:id
  describe 'GET api/v1/entries/:id' do
    before { get "/api/v1/entries/#{entry_id}", params: {}, headers: headers }

    context 'when the record exists' do
      it 'returns the entry' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(entry_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:entry_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Entry with 'id'=100/)
      end
    end
  end

  # Test suite for POST /entries
  describe 'POST /api/v1/entries' do
    # valid payload

    let(:valid_attributes) do
      {
        content_title: 'Testy Test',
        content: 'This is a body of content',
        mood: 'Happy',
        user_entry_datetime: '2020-01-28T19:36:11.856Z',
        user_id: user.id,
        therapist_id: therapist.id
      }.to_json
    end

    context 'when the request attributes are valid' do
      before { post '/api/v1/entries', params: valid_attributes, headers: headers }

      it 'creates an entry' do
        expect(json['content_title']).to eq('Testy Test')
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/api/v1/entries', params: {}, headers: headers }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(response.body)
          .to match(/Validation failed:/)
      end
    end
  end

  # Test suite for PUT /api/v1/entries/:id
  describe 'PUT /api/v1/entries/:id' do
    let(:valid_attributes) { { title: 'Entry Title' }.to_json }

    context 'when the record exists' do
      before { put "/api/v1/entries/#{entry_id}", params: valid_attributes, headers: headers }

      it 'updates the record' do
        expect(response.body).to be_empty
      end

      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
    end
  end

  # Test suite for DELETE /api/v1/entries/:id
  describe 'DELETE /api/v1/entries/:id' do
    before { delete "/api/v1/entries/#{entry_id}", params: {}, headers: headers }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end
