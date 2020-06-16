# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'GymClasses', type: :request do
  let!(:user) { create(:user) }
  let!(:gym_instructor) { create(:gym_instructor) }
  let(:gym_class) { create(:gym_class) }

  describe 'GET /gym_classes/' do
    before { get '/gym_classes/' }

    it 'returns' do
      expect(json).not_to be_falsy
      expect(json.size).to eq(0)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /gym_classes/' do
    let(:valid_attributes) do
      {
        user_id: 1,
        gym_instructor_id: 1,
        classTime: '2020-05-06',
        status: false
      }
    end

    let(:no_user) do
      {
        gym_instructor_id: 1,
        classTime: '2020-05-06',
        status: false
      }
    end

    let(:no_inst) do
      {
        user_id: 1,
        classTime: '2020-05-06',
        status: false
      }
    end

    let(:no_time) do
      {
        user_id: 1,
        gym_instructor_id: 1,
        status: false
      }
    end

    context 'when the request is valid' do
      before { post '/gym_classes/', params: valid_attributes }

      it 'creates a gym class' do
        expect(json['id']).to eq(1)
        expect(json['user_id']).to eq(1)
        expect(json['gym_instructor_id']).to eq(1)
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when there is no user' do
      before { post '/gym_classes/', params: no_user }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(response.body).to match(/Validation failed: User must exist/)
      end
    end

    context 'when there is no Gym instructor' do
      before { post '/gym_classes', params: no_inst }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(response.body).to match('{\"message\":\"Validation failed: Gym instructor must exist\"}')
      end
    end

    context 'when there is no classTime' do
      before { post '/gym_classes/', params: no_time }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(response.body).to match("{\"message\":\"Validation failed: Classtime can't be blank\"}")
      end
    end
  end

  describe 'DELETE /gym_classes' do
    before { delete '/gym_classes/1' }

    it 'returns status code 404' do
      expect(response).to have_http_status(404)
    end
  end
end
