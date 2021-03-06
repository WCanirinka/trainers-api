require 'rails_helper'

RSpec.describe 'GymInstructors', type: :request do
  let!(:gym_instructor) { create(:gym_instructor) }

  describe 'GET /gym_instructors' do
    before { get '/gym_instructors' }

    it 'returns' do
      expect(json).not_to be_empty
      expect(json.size).to eq(1)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /gym_instructors/:id' do
    context 'when the record exists' do
      before { get '/gym_instructors/1' }

      it 'returns the instructor data' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(1)
        expect(json['name']).to eq('James')
        expect(json['gymName']).to eq('Chest Gym')
        expect(json['gymImage']).to eq('https://raw.githubusercontent.com/WCanirinka/trainers-api/develop/images/chest-gym.jpg')
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exists' do
      before { get '/gym_instructors/2' }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match("{\"message\":\"Couldn't find GymInstructor with 'id'=2\"}")
      end
    end
  end

  describe 'POST /gym_instructors' do
    let(:valid_attributes) do
      {
        name: 'James',
        instImage: 'https://raw.githubusercontent.com/WCanirinka/trainers-api/develop/images/chest-gym-instructor.jpg',
        gymName: 'Chest Gym',
        trainingType: 'Chest Training',
        gymImage: 'https://raw.githubusercontent.com/WCanirinka/trainers-api/develop/images/chest-gym.jpg'
      }
    end

    let(:invalid_attributes) do
      {
        instImage: 'https://raw.githubusercontent.com/WCanirinka/trainers-api/develop/images/chest-gym-instructor.jpg',
        gymName: 'Chest Gym',
        trainingType: 'Chest Training',
        gymImage: 'https://raw.githubusercontent.com/WCanirinka/trainers-api/develop/images/chest-gym.jpg'
      }
    end

    context 'when the request is valid' do
      before { get '/gym_instructors/', params: valid_attributes }

      it 'creates a Gym instructor' do
        expect(json[0]['name']).to eq('James')
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the request is invalid' do
      before { post '/gym_instructors', params: invalid_attributes }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(response.body).to match(/Validation failed: Name can't be blank/)
      end
    end
  end
end
