require 'rails_helper'

RSpec.describe 'Instructors', type: :request do
  let!(:instructor) { create(:instructor) }

  describe 'GET /instructors' do
    before { get '/instructors' }

    it 'returns' do
      expect(json).not_to be_empty
      expect(json.size).to eq(1)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /instructors/:id' do
    context 'when the record exists' do
      before { get '/instructors/1' }

      it 'returns the instructor data' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(1)
        expect(json['name']).to eq('')
        expect(json['gymName']).to eq('')
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exists' do
      before { get '/instructors/2' }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Instructor/)
      end
    end
  end

  describe 'POST /instructors' do
    let(:valid_attributes) do
      {
        name: 'James'
        instImage: 'https://raw.githubusercontent.com/WCanirinka/trainers-api/develop/images/chest-gym-instructor.jpg'
        gymName: 'Chest Gym'
        trainingType: 'Chest Training'
        gymImage: 'https://raw.githubusercontent.com/WCanirinka/trainers-api/develop/images/chest-gym.jpg'
      }
    end

    let(:invalid_attributes) do
      {
        instImage: 'https://raw.githubusercontent.com/WCanirinka/trainers-api/develop/images/chest-gym-instructor.jpg'
        gymName: 'Chest Gym'
        trainingType: 'Chest Training'
        gymImage: 'https://raw.githubusercontent.com/WCanirinka/trainers-api/develop/images/chest-gym.jpg'
      }
    end

    context 'when the request is valid' do
      before { post '/instructors', params: valid_attributes }

      it 'creates a instructor' do
        expect(json['name']).to eq('James')
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/instructors', params: invalid_attributes }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(response.body)
          .to match(/Validation failed: Name can't be blank/)
      end
    end
  end
end